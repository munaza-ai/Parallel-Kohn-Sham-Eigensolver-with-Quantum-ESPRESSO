program cb_davidson_main
!
! Main program for cbToy miniapp demonstrating use of Davidson solver
! from QE libraries
!
! EXERCISE 4: k-point parallelism added
!   - npool pools are created, each handling a subset of k-points
!   - intra_bgrp_comm is restricted to within each pool
!   - k-points are distributed with divide() from UtiliXlib
!
  use cb_module
#if defined(__MPI)
  use mp_global,  only: mp_startup, mp_global_end
  use mp_world,   only: world_comm
  use mp_bands,   only: intra_bgrp_comm, inter_bgrp_comm
  ! -------------------------------------------------------------------------
  ! STEP 1: Import npool from command_line_options (set via -nk flag)
  ! -------------------------------------------------------------------------
  use command_line_options, only: npool
  ! -------------------------------------------------------------------------
  ! STEP 2: Import the new mp_pools module
  ! -------------------------------------------------------------------------
  use mp_pools,   only: intra_pool_comm, inter_pool_comm, &
                        my_pool_id, me_pool, mp_start_pools
  ! -------------------------------------------------------------------------
  ! STEP 4: divide() from UtiliXlib to assign k-points to pools
  ! -------------------------------------------------------------------------
  use mp_utils,   only: divide
#endif
  implicit none
  
  ! External procedures (timing)
  external :: init_clocks, start_clock, stop_clock, print_clock
  
  ! External procedures (operator interfaces)
  external :: my_h_psi, cb_s_psi, cb_g_psi
  
  ! Local variables
  logical :: gamma_only
  integer :: ik, ierr, notcnv, dav_iter, nhpsi, ndiag
  real(dp), allocatable :: eig(:)
  complex(dp), allocatable :: evc(:,:)
  real(dp) :: ref_energy

  ! -------------------------------------------------------------------------
  ! STEP 4: k-point distribution variables
  ! -------------------------------------------------------------------------
  integer :: iks_start   ! first k-point index for this pool
  integer :: iks_end     ! last  k-point index for this pool

  ! -------------------------------------------------------------------------
  ! STEP 7B (optional centralized output): global eigenvalue array on node 0
  ! -------------------------------------------------------------------------
  real(dp), allocatable :: eig_global(:,:)   ! shape (nbnd, nks) — only on rank 0
  integer :: ik_local                         ! local index within this pool

#if defined(__MPI)
  ! -------------------------------------------------------------------------
  ! STEP 1+2: Initialize MPI, then start pool communicators
  ! mp_startup reads -nk from command line and populates npool
  ! mp_start_pools splits MPI_COMM_WORLD into npool groups
  ! -------------------------------------------------------------------------
  call mp_startup(ndiag, .false.)
  call mp_start_pools(npool)

  ! -------------------------------------------------------------------------
  ! STEP 3: Restrict band/plane-wave parallelism to within each pool
  !   intra_bgrp_comm = intra_pool_comm
  ! This means FFTs and linear algebra only talk to processes in the same pool.
  ! Each pool is then fully independent for its k-points.
  ! -------------------------------------------------------------------------
  intra_bgrp_comm = intra_pool_comm
  inter_bgrp_comm = inter_pool_comm
#endif
  
  ! Initialize the timing system
  call init_clocks(.true.)
  
  ! Read input parameters
  gamma_only = .false.
  call input(gamma_only)
  
  ! Generate the plane-wave basis
  call ggen(gamma_only)
  
  ! Build the local potential
  call set_cb_potential()
  
  ! Allocate eigenvalue and eigenvector arrays
  allocate(eig(nbnd), stat=ierr)
  if (ierr /= 0) call errore('cb_davidson_main', 'allocating eig', abs(ierr))
  
  allocate(evc(npwx, nbnd), stat=ierr)
  if (ierr /= 0) call errore('cb_davidson_main', 'allocating evc', abs(ierr))
  
  ! =========================================================================
  ! OpenACC: Map arrays to device once at allocation
  ! =========================================================================
  !$acc enter data create(evc, eig)

  ! -------------------------------------------------------------------------
  ! STEP 7B: Node 0 allocates global eigenvalue array to collect all results
  ! Comment this out if using Strategy A (one file per k-point) instead
  ! -------------------------------------------------------------------------
#if defined(__MPI)
  if (me_pool == 0 .and. my_pool_id == 0) then
    allocate(eig_global(nbnd, nks), stat=ierr)
    if (ierr /= 0) call errore('cb_davidson_main', 'allocating eig_global', abs(ierr))
    eig_global = 0.0_dp
  end if
#endif

  ! -------------------------------------------------------------------------
  ! STEP 4: Distribute k-points across pools using divide()
  !
  !   inter_pool_comm connects the root of each pool.
  !   divide() gives this pool its start and end k-point indices.
  !
  !   Example: nks=8, npool=2
  !     Pool 0 → iks_start=1, iks_end=4   (k-points 1,2,3,4)
  !     Pool 1 → iks_start=5, iks_end=8   (k-points 5,6,7,8)
  ! -------------------------------------------------------------------------
#if defined(__MPI)
  call divide(inter_pool_comm, nks, iks_start, iks_end)
  write(stdout, '(5x,"Pool ",I2," handles k-points ",I4," to ",I4)') &
        my_pool_id, iks_start, iks_end
#else
  ! Serial fallback: one pool, all k-points
  iks_start = 1
  iks_end   = nks
#endif

  ! Reference energy for band printing (from first k-point)
  ref_energy = 0.0_dp
  
  ! =========================================================================
  ! STEP 5+6: Main k-point loop — each pool only processes its own k-points
  ! =========================================================================
  do ik = 1, nks

     ! -----------------------------------------------------------------------
     ! STEP 6: Skip k-points that do not belong to this pool.
     !   Pool 0 skips ik=5..8, Pool 1 skips ik=1..4.
     !   This is the key line that achieves k-point parallelism!
     ! -----------------------------------------------------------------------
     if (ik < iks_start .or. ik > iks_end) cycle

     current_k = ik
     
     ! Set up kinetic energy operator for this k-point
     call init_k()
     
     ! Initialize wavefunctions randomly
     call init_random_wfcs(npw, npwx, nbnd, evc)
     
     ! Initialize eigenvalues
     eig = 0.0_dp
     
     ! OpenACC: Update wavefunction and device arrays before solver
     !$acc update device(evc, igk)
     
     ! Start the Davidson solver timer
     call start_clock('davidson')
     
     ! OpenACC: Use device pointers for eigenvalues during solver call
     ! cegterg manages GPU work internally via FFTXlib and LAXlib
     !$acc host_data use_device(eig)
     call cegterg(my_h_psi, cb_s_psi, use_overlap, cb_g_psi, &
                  npw, npwx, nbnd, nbndx, 1, &
                  evc, ethr, eig, btype, notcnv, .false., dav_iter, nhpsi)
     !$acc end host_data
     
     ! Stop the Davidson solver timer
     call stop_clock('davidson')
     
     ! OpenACC: Copy eigenvalues back to host before printing
     !$acc update self(eig)
     
     ! Set reference energy from first k-point (VB top)
     if (ik == 1 .and. energy_shift) &
       ref_energy = maxval(eig(1:min(4*ncell**3, nbnd)))
     
     ! Report convergence
     if (notcnv > 0) then
        write(stdout, '(5x,"WARNING: ",i4," eigenvalues not converged at ik=",i4)') &
              notcnv, ik
     end if

     ! -----------------------------------------------------------------------
     ! STEP 7 — OUTPUT
     !
     ! Choose ONE of the two strategies below.
     !
     ! === STRATEGY A (Simple): each pool writes its own file ================
     ! No MPI communication needed. Each pool root writes bands_k01.dat etc.
     ! -----------------------------------------------------------------------
#if defined(__MPI)
     if (me_pool == 0) then   ! only pool root writes (avoids duplicate files)
#endif
       call write_bands(eig, ref_energy, ik)
       ! write_bands should write to file "bands_k{ik:02d}.dat" instead of stdout
       ! See modification note at bottom of this file
#if defined(__MPI)
     end if
#endif

     ! === STRATEGY B (Centralized): node 0 collects everything ==============
     ! Uncomment this block and comment Strategy A above to use this instead.
     ! -----------------------------------------------------------------------
     ! ik_local = ik - iks_start + 1
     ! #if defined(__MPI)
     ! if (me_pool == 0 .and. my_pool_id == 0) then
     !   ! Node 0 stores its own pool's data directly
     !   eig_global(:, ik) = eig(:)
     ! else if (me_pool == 0) then
     !   ! Other pool roots send their data to node 0
     !   call mp_send(eig, nbnd, 0, ik, inter_pool_comm)
     ! end if
     ! if (me_pool == 0 .and. my_pool_id == 0 .and. my_pool_id /= ik_local) then
     !   call mp_recv(eig_global(:,ik), nbnd, MPI_ANY_SOURCE, ik, inter_pool_comm)
     ! end if
     ! #else
     !   eig_global(:, ik) = eig
     ! #endif

  end do   ! ik — end of k-point loop

  ! =========================================================================
  ! STRATEGY B continued: node 0 prints the full collected band structure
  ! =========================================================================
  ! #if defined(__MPI)
  ! if (my_pool_id == 0 .and. me_pool == 0) then
  !   do ik = 1, nks
  !     call write_bands(eig_global(:,ik), ref_energy, ik)
  !   end do
  !   deallocate(eig_global)
  ! end if
  ! #endif

  ! =========================================================================
  ! OpenACC: Remove GPU memory at the end
  ! =========================================================================
  !$acc exit data delete(evc, eig)
  
  ! Print timing report
  write(stdout, *)
  write(stdout, '(5x,"Timing summary:")')
  write(stdout, *)
  call print_clock('davidson')
  call print_clock('cegterg:init')
  call print_clock('cegterg:diag')
  call print_clock('cegterg:update')
  call print_clock('cegterg:overlap')
  call print_clock('h_psi')
  call print_clock('s_psi')
  call print_clock('g_psi')
  call print_clock('fftw')
  call print_clock('ffts')
  
  ! Cleanup
  deallocate(eig, evc)
  
#if defined(__MPI)
  call mp_global_end()
#endif

end program cb_davidson_main

!==============================================================================
! NOTE: Modify write_bands to accept ik and write to file instead of stdout
!
!   Original signature:
!     subroutine write_bands(eig, ref_energy)
!
!   New signature for Strategy A:
!     subroutine write_bands(eig, ref_energy, ik)
!       character(len=32) :: filename
!       write(filename, '("bands_k",I2.2,".dat")') ik
!       open(unit=200+ik, file=trim(filename), ...)
!       write(200+ik, *) eig - ref_energy
!       close(200+ik)
!     end subroutine
!==============================================================================
