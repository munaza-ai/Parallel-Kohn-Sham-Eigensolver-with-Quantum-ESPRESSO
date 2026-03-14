program cb_davidson_main
!
! Main program for cbToy miniapp demonstrating use of Davidson solver
! from QE libraries
!
  use cb_module
#if defined(__MPI)
  use mp_global,  only: mp_startup, mp_global_end
  use mp_world,   only: world_comm
  use mp_bands,   only: intra_bgrp_comm, inter_bgrp_comm
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
  
#if defined(__MPI)
  ! Initialize MPI
  call mp_startup(ndiag, .false.)
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
  
  ! Reference energy for band printing (from first k-point)
  ref_energy = 0.0_dp
  
  ! Loop over k-points
  do ik = 1, nks
     current_k = ik
     
     ! Set up kinetic energy operator for this k-point
     call init_k()
     
     ! Initialize wavefunctions randomly
     call init_random_wfcs(npw, npwx, nbnd, evc)
     
     ! Initialize eigenvalues
     eig = 0.0_dp
     
     ! Start the Davidson solver timer
     call start_clock('davidson')
     
     ! Call the complex Davidson solver
     ! Arguments: h_psi, s_psi, uspp, g_psi, npw, npwx, nvec, nvecx, npol, 
     !            evc, ethr, e, btype, notcnv, lrot, dav_iter, nhpsi
     call cegterg(my_h_psi, cb_s_psi, use_overlap, cb_g_psi, &
                  npw, npwx, nbnd, nbndx, 1, &
                  evc, ethr, eig, btype, notcnv, .false., dav_iter, nhpsi)
     
     ! Stop the Davidson solver timer
     call stop_clock('davidson')
     
     ! Set reference energy from first k-point (VB top)
     if (ik == 1 .and. energy_shift) ref_energy = maxval(eig(1:min(4*ncell**3, nbnd)))
     
     ! Write bands to output
     call write_bands(eig, ref_energy)
     
     ! Report convergence
     if (notcnv > 0) then
        write(stdout, '(5x,"WARNING: ",i4," eigenvalues not converged")') notcnv
     end if
     
  end do
  
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
  ! Finalize MPI
  call mp_global_end()
#endif
  
end program cb_davidson_main
