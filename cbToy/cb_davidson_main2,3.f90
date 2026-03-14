!
! Main cbToy solver davidson method
! =================================
! This is the MPI PARALLEL version (Exercises 2 & 3)
! Features:
!   - MPI parallelization across multiple CPUs
!   - Band group data distribution (Exercise 2)
!   - ScaLAPACK parallel diagonalization (Exercise 3)
!   - NO GPU support (no OpenACC)
!   - NO k-point pools (all processors do all k-points)
!
! Compared to Exercise 1: Adds MPI capabilities
! Compared to Exercise 4/5: No k-point pools, no GPU
!

program cb_davidson_main
  ! -------------------------------------------------------------------------
  ! MODULE IMPORTS
  ! -------------------------------------------------------------------------
  
  use cb_module
  ! Core physics module (same as all exercises)
  ! Contains: nbnd, npwx, npw, nks, crystal structure, etc.
  
  use command_line_options, ONLY: get_command_line, ndiag_, nband_
  ! NEW (vs Exercise 1): Read command line arguments
  !   get_command_line = reads -nd=4, -nb=2 from command line
  !   ndiag_ = number of processors for diagonalization (from -nd flag)
  !   nband_ = number of band groups (from -nb flag)
  
#if defined(__MPI)
  ! -------------------------------------------------------------------------
  ! MPI MODULES (Exercise 2 & 3)
  ! This block only exists if compiled with -D__MPI flag
  ! -------------------------------------------------------------------------
  
  use mp_world, ONLY : world_comm
  ! world_comm = MPI communicator containing ALL processors
  ! Think of it as "the group chat with everyone"
  
  use mp_bands, ONLY : intra_bgrp_comm, inter_bgrp_comm
  ! NEW: Band group communicators (Exercise 2)
  ! intra_bgrp_comm = "My team" - processors in MY band group
  ! inter_bgrp_comm = "Team captains" - communication between groups
  
  use mp_global, ONLY : mp_startup, mp_global_end
  ! mp_startup = creates all MPI groups and communicators
  ! mp_global_end = properly shuts down MPI
  
  use laxlib_processors_grid, ONLY : do_distr_diag_inside_bgrp
  ! NEW (Exercise 3): Controls where diagonalization group sits
  ! .FALSE. = parallel to band groups (flat structure, DEFAULT)
  ! .TRUE.  = inside each band group (hierarchical structure)
  ! This affects how ScaLAPACK distributes matrices
  
#endif

  implicit none
  ! All variables must be declared (prevents typos)
  
  ! -------------------------------------------------------------------------
  ! EXTERNAL PROCEDURES (functions defined elsewhere)
  ! -------------------------------------------------------------------------
  
  ! Timing procedures (same as Exercise 1)
  external :: init_clocks, start_clock, stop_clock, print_clock
  
  ! Physics operators (same as Exercise 1)
  external :: my_h_psi, cb_s_psi, cb_g_psi
  
  ! NEW (Exercise 2 & 3): MPI setup for linear algebra solvers
  external :: set_mpi_comm_4_solvers
  
  ! -------------------------------------------------------------------------
  ! VARIABLE DECLARATIONS
  ! -------------------------------------------------------------------------
  
  ! Physics control (same as Exercise 1)
  logical :: gamma_only
  ! .false. = use complex numbers (general k-points)
  ! .true.  = use real numbers (only for Gamma point, not used here)
  
  integer :: homo_band
  ! Highest Occupied Molecular Orbital (for reference energy)
  
  ! Iteration counters (same as Exercise 1)
  integer :: ik           ! k-point loop index
  integer :: notcnv       ! Number of bands not converged
  integer :: dav_iter     ! Davidson iterations performed
  integer :: nhpsi        ! Number of H|ψ⟩ operations
  
  ! NEW (Exercise 2): Diagonalization group size
  integer :: ndiag
  ! This determines: use serial solver (ndiag=1) or parallel (ndiag>1)
  ! Set from command line via -nd flag
  
  ! Results storage (same as Exercise 1)
  real(8), allocatable :: eig(:)
  ! Eigenvalues (energy levels), dimension = nbnd
  
  complex(8), allocatable :: evc(:,:)
  ! Eigenvectors (wavefunctions), dimension = (npwx, nbnd)
  
  real(8) :: ref_energy
  ! Reference energy (usually HOMO energy for relative printing)
  
  ! -------------------------------------------------------------------------
  ! INITIALIZATION
  ! -------------------------------------------------------------------------
  
  ! Start internal timing system
  call init_clocks(.true.)
  ! .true. = enable detailed timing
  
  ! NOTE: The line below is commented out
  ! ndiag=1
  ! If uncommented, this would FORCE serial diagonalization
  ! But we want to read it from command line instead
  
  ! -------------------------------------------------------------------------
  ! MPI SETUP (Exercise 2 & 3) - CRITICAL SECTION
  ! -------------------------------------------------------------------------
  
#if defined(__MPI)
  ! This entire block is conditionally compiled
  
  ! STEP 1: Create parallel communicators
  call mp_startup(ndiag, diag_in_band_group = do_distr_diag_inside_bgrp)
  ! 
  ! WHAT mp_startup DOES:
  ! =====================
  ! Input: ndiag (from command line -nd flag)
  !        do_distr_diag_inside_bgrp (from laxlib, default .false.)
  !
  ! Actions:
  !   1. Check total MPI processes available
  !   2. Create band groups (if nband_ > 1 from -nb flag)
  !   3. Create diagonalization group of size ndiag
  !   4. Set up communicators:
  !      - intra_bgrp_comm (within my band group)
  !      - inter_bgrp_comm (between band groups)
  !
  ! TWO POSSIBLE HIERARCHIES:
  !
  ! OPTION A: do_distr_diag_inside_bgrp = .FALSE. (DEFAULT)
  ! "Flat structure" - Diag group parallel to band groups
  !
  !     world_comm (all processors)
  !           |
  !     +-----+-----+
  !     |           |
  !  Band Grps    Diag Group
  !  (data)       (ScaLAPACK)
  !
  ! OPTION B: do_distr_diag_inside_bgrp = .TRUE.
  ! "Hierarchical" - Diag group inside each band group
  !
  !     world_comm
  !        |
  !    Band Group 1    Band Group 2
  !        |                |
  !    Diag Grp 1       Diag Grp 2
  !
  ! STEP 2: Pass communicators to solvers
  call set_mpi_comm_4_solvers(world_comm, intra_bgrp_comm, inter_bgrp_comm)
  !
  ! Arguments explained:
  !   world_comm        = top-level communicator (all processors)
  !   intra_bgrp_comm  = my band group (for data distribution)
  !   inter_bgrp_comm  = between groups (for global operations)
  !
  ! This tells ScaLAPACK/LAXLIB which processors to use for math
  
#endif
  ! End of MPI setup block

  ! -------------------------------------------------------------------------
  ! PHYSICS SETUP (Same as Exercise 1)
  ! -------------------------------------------------------------------------
  
  ! Use complex wavefunctions (required for general k-points)
  gamma_only = .false.
  
  ! Read input file (crystal structure, cutoff, etc.)
  call input(gamma_only)
  
  ! Generate plane-wave basis (G-vectors, grid)
  call ggen(gamma_only)
  
  ! Create local potential V_loc(r)
  call set_cb_potential()
  
  ! -------------------------------------------------------------------------
  ! MEMORY ALLOCATION
  ! -------------------------------------------------------------------------
  
  allocate(eig(nbnd))
  ! Array for eigenvalues (energy levels)
  
  allocate(evc(npwx, nbnd))
  ! Matrix for eigenvectors (wavefunctions)
  ! Note: In parallel version, this may be DISTRIBUTED across processes
  
  ref_energy = 0.0
  
  ! -------------------------------------------------------------------------
  ! MAIN LOOP: Over ALL k-points
  ! -------------------------------------------------------------------------
  ! IMPORTANT: Unlike Exercise 4, ALL processors do ALL k-points
  ! No load balancing here - every processor runs the full loop
  
  do ik = 1, nks
    ! ik = 1, 2, 3, ..., nks (all k-points)
    
    current_k = ik
    ! Store in global variable for other routines
    
    ! Setup Hamiltonian for this k-point
    call init_k()
    ! Sets kinetic energy operator T = |k+G|²/2
    
    ! Create random starting guess for wavefunctions
    call init_random_wfcs(npw, npwx, nbnd, evc)
    
    ! Initialize energies to zero
    eig = 0.0
    
    ! Start timing Davidson solver
    call start_clock('davidson')
    
    ! ---------------------------------------------------------------------
    ! SOLVER SELECTION: Serial vs Parallel (Exercise 2 & 3 KEY FEATURE)
    ! ---------------------------------------------------------------------
    
#if defined(__MPI)
    ! If MPI is enabled, we have a choice:
    
    if (ndiag == 1) then
      ! CASE 1: Only 1 processor for diagonalization
      ! Use SERIAL solver (same as Exercise 1)
#endif
      
      call cegterg(my_h_psi, cb_s_psi, use_overlap, cb_g_psi, &
                   npw, npwx, nbnd, nbndx, 1, evc, ethr, &
                   eig, btype, notcnv, .false., dav_iter, nhpsi)
      !
      ! cegterg = Complex Eigenvalue Generalized Davidson
      ! Runs on 1 processor only (or all do same work redundantly)
      
#if defined(__MPI)
    else
      ! CASE 2: Multiple processors for diagonalization (ndiag > 1)
      ! Use PARALLEL solver with ScaLAPACK
      
      call pcegterg(my_h_psi, cb_s_psi, use_overlap, cb_g_psi, &
                    npw, npwx, nbnd, nbndx, 1, evc, ethr, &
                    eig, btype, notcnv, .false., dav_iter, nhpsi)
      !
      ! pcegterg = Parallel Complex Eigenvalue Generalized Davidson
      ! 
      ! WHAT pcegterg DOES DIFFERENTLY:
      ! =================================
      ! 1. Distributes matrix across ndiag processors
      ! 2. Uses ScaLAPACK for parallel matrix operations
      ! 3. Each processor holds part of evc and eig
      ! 4. Collective communication to solve together
      !
      ! Matrix distribution (block-cyclic):
      ! Proc 0: [A11] [A13]      Proc 1: [A12] [A14]
      !         [A31] [A33]              [A32] [A34]
      !
      ! Proc 2: [A21] [A23]      Proc 3: [A22] [A24]
      !         [A41] [A43]              [A42] [A44]
      
    end if
    ! End of if (ndiag == 1)
    
#endif
    ! End of MPI conditional

    ! Stop timing
    call stop_clock('davidson')
    
    ! ---------------------------------------------------------------------
    ! SAVE RESULTS
    ! ---------------------------------------------------------------------
    
    ! Set reference energy from first k-point
    if (ik == 1 .and. energy_shift) then
      ! Calculate HOMO band index
      homo_band = min(4 * ncell**3, nbnd)
      ! 4*ncell³ = valence electrons in FCC crystal
      ! min ensures we don't exceed calculated bands
      
      ref_energy = eig(homo_band)
      ! Set reference to HOMO energy
    end if
    
    ! Write energies to output
    call write_bands(eig, ref_energy)
    
  end do
  ! End of k-point loop
  
  ! -------------------------------------------------------------------------
  ! TIMING REPORT
  ! -------------------------------------------------------------------------
  
  write(stdout, '("Timing summary:")')
  
  ! Print times for each component
  call print_clock('davidson')  ! Total solver time
  call print_clock('h_psi')     ! Hamiltonian application
  call print_clock('s_psi')     ! Overlap application
  call print_clock('g_psi')     ! Preconditioner
  call print_clock('fftw')      ! FFT (forward)
  call print_clock('ffts')      ! FFT (backward)
  
  ! -------------------------------------------------------------------------
  ! CLEANUP
  ! -------------------------------------------------------------------------
  
  ! Free memory
  deallocate(eig, evc)
  
  ! -------------------------------------------------------------------------
  ! MPI FINALIZATION
  ! -------------------------------------------------------------------------
  
#if defined(__MPI)
  ! Only if MPI was used
  
  call mp_global_end()
#endif

end program cb_davidson_main
