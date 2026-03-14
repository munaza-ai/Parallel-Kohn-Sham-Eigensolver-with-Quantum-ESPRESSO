!
! Main cbToy solver davidson method
! =================================
! This is the ADVANCED version with:
!   - MPI parallelization (multiple CPUs)
!   - OpenACC GPU offloading (GPU acceleration)
!   - k-point parallel distribution across pools
!
! Exercises covered: 2 (MPI) + 3 (ScaLAPACK) + 4 (k-point pools) + 5 (GPU)
!

program cb_davidson_main
  ! -------------------------------------------------------------------------
  ! MODULE IMPORTS
  ! -------------------------------------------------------------------------
  
  use cb_module
  ! Core physics module (same as Exercise 1)
  ! Contains: nbnd, npwx, npw, nks, ecut, etc.
  
  use command_line_options, ONLY: get_command_line, ndiag_, nband_
  ! NEW: Read command line arguments (-nd=4, -nb=2, etc.)
  !   ndiag_ = number of processors for diagonalization
  !   nband_ = number of band groups
  
  use openacc
  ! NEW (Exercise 5): OpenACC directives for GPU offloading
  ! Allows code to run on NVIDIA/AMD GPUs
  ! Directives start with !$acc
  
#if defined(__MPI)
  ! -------------------------------------------------------------------------
  ! MPI MODULES (Exercise 2 & 3 & 4)
  ! Only compiled if __MPI flag is defined during compilation
  ! -------------------------------------------------------------------------
  
  use mp_world, ONLY : world_comm, nproc, mp_world_start
  ! world_comm = communicator with ALL processors (global group)
  ! nproc      = total number of MPI processes
  ! mp_world_start = function to initialize MPI (alternative to mp_startup)
  
  use mp_bands, ONLY : intra_bgrp_comm, inter_bgrp_comm
  ! intra_bgrp_comm = communicator WITHIN my band group (my team)
  ! inter_bgrp_comm = communicator BETWEEN band groups (team captains)all proccessor
  
  use mp_global, ONLY : mp_startup
  ! mp_startup = creates all MPI communicators and groups
  
  use mp_pools, ONLY : intra_pool_comm, inter_pool_comm, my_pool_id
  ! NEW (Exercise 4): k-point pools for coarse-grained parallelism
  ! intra_pool_comm = communicator WITHIN my pool (processors handling same k-points)
  ! inter_pool_comm = communicator BETWEEN pools (different k-point groups)
  ! my_pool_id      = which pool am I in? (0, 1, 2, ...)
  
#endif

  implicit none
  ! All variables must be declared
  
  ! -------------------------------------------------------------------------
  ! EXTERNAL PROCEDURES
  ! -------------------------------------------------------------------------
  
  ! Timing procedures (same as Exercise 1)
  external :: init_clocks, start_clock, stop_clock, print_clock
  
  ! Physics operators (same as Exercise 1)
  external :: my_h_psi, cb_s_psi, cb_g_psi
  
  ! NEW (Exercise 2 & 3): MPI setup for solvers
  external :: set_mpi_comm_4_solvers
  
  ! NEW (Exercise 4): k-point distribution b/w processor
  external :: divide
  
  ! -------------------------------------------------------------------------
  ! VARIABLE DECLARATIONS
  ! -------------------------------------------------------------------------
  
  ! Physics control (same as Exercise 1)
  logical :: gamma_only
  integer :: homo_band
  
  ! Iteration counters (same as Exercise 1)
  integer :: ik, notcnv, dav_iter, nhpsi
  
  ! NEW (Exercise 4): k-point range for this processor
  integer :: ik_start, ik_end
  ! Each processor/pool handles only a RANGE of k-points
  ! Example: 10 k-points, 2 pools → Pool 0: 1-5, Pool 1: 6-10
  
  ! NEW (Exercise 2): Diagonalization group size
  integer :: ndiag
  ! Copied from ndiag_ after MPI initialization
  
  ! Results storage (same as Exercise 1)
  real(8), allocatable :: eig(:)
  complex(8), allocatable :: evc(:,:)
  real(8) :: ref_energy
  
  ! NEW (Exercise 2): Hierarchy control for diagonalization groups
  logical :: do_distr_diag_in_band_group = .false.
  ! .false. = Diag group is PARALLEL to band groups (side by side)
  ! .true.  = Diag group is INSIDE each band group (hierarchy)
  ! Default is .false. (flat structure)
  
  ! -------------------------------------------------------------------------
  ! INITIALIZATION
  ! -------------------------------------------------------------------------
  
  ! Start timing system
  call init_clocks(.true.)

  ! -------------------------------------------------------------------------
  ! MPI INITIALIZATION (Exercise 2, 3, 4)
  ! -------------------------------------------------------------------------
  
#if defined(__MPI)
  ! This block only runs if compiled with -D__MPI
  
  ! 1) Create all parallel communicators
  call mp_startup(ndiag, diag_in_band_group = do_distr_diag_in_band_group)
  ! What mp_startup does:
  !   - Splits world_comm into band groups (if nband_ > 1)
  !   - Creates diagonalization group (size = ndiag)
  !   - Sets up communicators: intra_bgrp_comm, inter_bgrp_comm
  !   - Creates k-point pools (Exercise 4)
  
  ! 2) Pass communicators to linear algebra solvers (LAXLIB/BLACS)
  call set_mpi_comm_4_solvers(intra_pool_comm, intra_bgrp_comm, inter_bgrp_comm)
  ! Arguments:
  !   intra_pool_comm  = top-level communicator (pool level)
  !   intra_bgrp_comm  = band group communicator (for band parallelization)
  !   inter_bgrp_comm  = between band groups (for data exchange)
  ! This allows ScaLAPACK to know which processors to use
  
  ! 3) Read command line options (-nd, -nb, etc.)
  call get_command_line()
  ! Sets: ndiag_, nband_ from command line
  
  ! Copy to local variable
  ndiag = ndiag_
  ! Now ndiag can be used in the solver selection logic
  
#endif

  ! -------------------------------------------------------------------------
  ! PHYSICS SETUP (Same as Exercise 1)
  ! -------------------------------------------------------------------------
  
  gamma_only = .false.    ! Use complex numbers
  call input(gamma_only)  ! Read input file
  call ggen(gamma_only)   ! Create plane-wave basis
  call set_cb_potential() ! Create electron potential
  
  ! -------------------------------------------------------------------------
  ! MEMORY ALLOCATION (CPU + GPU)
  ! -------------------------------------------------------------------------
  
  allocate(eig(nbnd))
  allocate(evc(npwx, nbnd))
  
  ! NEW (Exercise 5): GPU memory allocation with OpenACC
  !$acc enter data create(eig, evc)
  ! This directive:
  !   - Allocates memory on the GPU
  !   - Creates space for eig and evc on device
  !   - Does NOT copy data yet (just reserves space)
  ! 
  ! CPU (Host)          GPU (Device)
  ! ┌─────────┐         ┌─────────┐
  ! │  eig    │ ←────→  │  eig    │  (space created)
  ! │  evc    │ ←────→  │  evc    │  (space created)
  ! └─────────┘         └─────────┘
  
  ref_energy = 0.0d0
  
  ! -------------------------------------------------------------------------
  ! K-POINT DISTRIBUTION (Exercise 4)
  ! -------------------------------------------------------------------------
  
#if defined(__MPI)
  ! Divide k-points among pools using the 'divide' function
  call divide(inter_pool_comm, nks, ik_start, ik_end)
  ! This is LOAD BALANCING:
  !   Input:  nks = total k-points (e.g., 100)
  !   Output: ik_start, ik_end = range for THIS processor
  ! 
  ! Example with 4 pools:
  !   Pool 0: ik_start=1,  ik_end=25  (k-points 1-25)
  !   Pool 1: ik_start=26, ik_end=50  (k-points 26-50)
  !   Pool 2: ik_start=51, ik_end=75  (k-points 51-75)
  !   Pool 3: ik_start=76, ik_end=100 (k-points 76-100)
  
#else
  ! No MPI: this processor does ALL k-points
  ik_start = 1
  ik_end = nks
#endif

  ! -------------------------------------------------------------------------
  ! MAIN LOOP (over LOCAL k-points only)
  ! -------------------------------------------------------------------------
  
  ! IMPORTANT: Loop only over MY assigned k-points, not all of them!
  do ik = ik_start, ik_end
    
    current_k = ik
    
    call init_k()                    ! Setup k-point
    call init_random_wfcs(npw, npwx, nbnd, evc)  ! Random guess
    eig = 0.0
    
    ! NEW (Exercise 5): Copy data to GPU before computation
    !$acc update device(evc, igk, ekin)
    ! This COPIES data from CPU to GPU:
    !   evc  = wavefunctions (initial guess)
    !   igk  = G-vector mapping (from ggen)
    !   ekin = kinetic energies (from init_k)
    ! 
    ! CPU → GPU transfer happens here
    
    call start_clock('davidson')
    
    ! ---------------------------------------------------------------------
    ! SOLVER SELECTION: Serial vs Parallel (Exercise 2 & 3)
    ! ---------------------------------------------------------------------
    
#if defined(__MPI)
    if (ndiag == 1) then
      ! Only 1 processor for diagonalization: use SERIAL solver
#endif
      
      ! NEW (Exercise 5): GPU directive for data
      !$acc host_data use_device(eig)
      ! Tells compiler: 'eig' is on GPU, use device pointer
      
      call cegterg(my_h_psi, cb_s_psi, use_overlap, cb_g_psi, &
                   npw, npwx, nbnd, nbndx, 1, evc, ethr, &
                   eig, btype, notcnv, .false., dav_iter, nhpsi)
      ! This runs on GPU if my_h_psi, etc. are GPU-enabled
      
      !$acc end host_data
      
#if defined(__MPI)
    else
      ! Multiple processors: use PARALLEL solver (ScaLAPACK)
      
      !$acc host_data use_device(eig)
      
      call pcegterg(my_h_psi, cb_s_psi, use_overlap, cb_g_psi, &
                    npw, npwx, nbnd, nbndx, 1, evc, ethr, &
                    eig, btype, notcnv, .false., dav_iter, nhpsi)
      ! pcegterg = parallel cegterg using ScaLAPACK
      ! Distributes matrix across MPI processes
      
      !$acc end host_data
      
    end if
#endif

    call stop_clock('davidson')
    
    ! NEW (Exercise 5): Copy results back from GPU to CPU
    !$acc update host(eig)
    ! GPU → CPU transfer
    ! Needed because write_bands() runs on CPU and needs eig
    
    ! ---------------------------------------------------------------------
    ! SAVE RESULTS
    ! ---------------------------------------------------------------------
    
    ! Reference energy (only first k-point of first pool)
    if (ik == 1 .and. energy_shift) then
      homo_band = min(4 * ncell**3, nbnd)
      ref_energy = eig(homo_band)
    end if
    
    call write_bands(eig, ref_energy)
    ! Write to output file
    
  end do
  
  ! -------------------------------------------------------------------------
  ! TIMING & CLEANUP
  ! -------------------------------------------------------------------------
  
  write(stdout, '("Timing summary:")')
  call print_clock('davidson')
  call print_clock('h_psi')
  call print_clock('s_psi')
  call print_clock('g_psi')
  call print_clock('fftw')
  call print_clock('ffts')
  
  ! NEW (Exercise 5): Free GPU memory
  !$acc exit data delete(eig, evc)
  ! Deallocates memory on GPU
  
  ! Free CPU memory
  deallocate(eig, evc)
  
  ! -------------------------------------------------------------------------
  ! MPI FINALIZATION
  ! -------------------------------------------------------------------------
  
#if defined(__MPI)
  call MPI_Finalize(ik)
  ! Properly close MPI
  ! 'ik' is just a dummy argument (not used, but required by some implementations)
#endif
  
end program cb_davidson_main
