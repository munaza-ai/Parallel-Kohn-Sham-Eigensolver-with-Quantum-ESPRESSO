!
! Main cbToy solver davidson method
!
program cb_davidson_main
  use cb_module
  use command_line_options, ONLY: get_command_line, ndiag_, nband_
#if defined(_OPENACC)
  use openacc
#endif

  
#if defined(__MPI)
  ! MPI variables imported from modules
  use mp_world, ONLY : world_comm, nproc, mpime, mp_world_start
  use mp_bands, ONLY : intra_bgrp_comm, inter_bgrp_comm
  ! mp startup
  use mp_global, ONLY : mp_startup
  use mp_pools, ONLY : intra_pool_comm, inter_pool_comm, my_pool_id
#endif

  implicit none
  
  ! timings procedure
  external :: init_clocks, start_clock, stop_clock, print_clock
  
  ! operators interfaces
  external :: my_h_psi, cb_s_psi, cb_g_psi
  external :: set_mpi_comm_4_solvers
  external :: divide
  
  ! variables
  logical :: gamma_only
  integer :: homo_band
  integer :: ik, notcnv, dav_iter, nhpsi, ik_start, ik_end
  integer :: ndiag 
#if defined(_OPENACC)
  integer :: acc_dev_type, n_acc_dev, my_acc_dev, my_rank
#endif
  real(8), allocatable :: eig(:) 
  complex(8), allocatable :: evc(:,:) 
  real(8) :: ref_energy

  ! .FALSE. = parallel to the band groups (default)
  ! .TRUE.  = parallel inside every band group (strict hierarchy)
  logical :: do_distr_diag_in_band_group = .false.
  
  ! initialization of internal timing system
  call init_clocks(.true.)

    
#if defined(__MPI)
  ! Create the parallel communicators in the MAIN code
  call mp_startup(ndiag, diag_in_band_group = do_distr_diag_in_band_group)
  ! Provide MPI communicators to internal solvers (LAXLIB/BLACS)
  ! Arguments:
  !			(1) top parent communicator (can differ from world_comm)
  !			(2) sub-communicator of the band group
  !			(3) communicator across band groups
  call set_mpi_comm_4_solvers(intra_pool_comm, intra_bgrp_comm, inter_bgrp_comm)
  ! read option from command lines
  call get_command_line()
  ndiag = ndiag_
#endif

#if defined(_OPENACC)
  my_rank = 0
#if defined(__MPI)
  my_rank = mpime
#endif

  acc_dev_type = acc_device_nvidia
  n_acc_dev = acc_get_num_devices(acc_dev_type)
  if (n_acc_dev <= 0) then
      acc_dev_type = acc_device_default
      n_acc_dev = acc_get_num_devices(acc_dev_type)
  end if

  if (n_acc_dev > 0) then
      my_acc_dev = mod(my_rank, n_acc_dev)
      call acc_set_device_num(my_acc_dev, acc_dev_type)
      call acc_init(acc_dev_type)
      write(stdout, '("OpenACC rank ",I0," using device ",I0," out of ",I0)') my_rank, my_acc_dev, n_acc_dev
  else
      write(stdout, '("OpenACC warning: no visible accelerator devices")')
  end if
#endif

  ! read gamma parameter for select complex or real
  gamma_only = .false. 
  call input(gamma_only) 
  ! generate the plane-wave basis
  call ggen(gamma_only)
  !$acc enter data create(igk, ekin, aux)
  !$acc enter data copyin(dfft)
  !$acc enter data copyin(dfft%nl)
  ! routine constructs the local real-space part of the cb potential
  call set_cb_potential()
  !$acc enter data copyin(vloc) create(fft_array)
  
  ! allocation of eigenvalues and eigenvectors
  allocate(eig(nbnd)) 
  allocate(evc(npwx, nbnd))

  !$acc enter data create(eig, evc)

  ! Set the reference energy to zero for the first k-point, and shift all energies by this value. 
  ref_energy = 0.0d0


  ! Divide k-points among band groups and pools
#if defined(__MPI)
  call divide(inter_pool_comm, nks, ik_start, ik_end)
#else
  ik_start = 1
  ik_end = nks
#endif

  ! loop over the owned k-points
  do ik = ik_start, ik_end
      current_k = ik
      
      call init_k()
      call init_random_wfcs(npw, npwx, nbnd, evc)
      eig = 0.0

      !$acc update device(evc, igk, ekin)

      call start_clock('davidson')     

#if defined(__MPI)
      if (ndiag == 1) then
#endif
         !$acc host_data use_device(eig)
         call cegterg(my_h_psi, cb_s_psi, use_overlap, cb_g_psi, &
                      npw, npwx, nbnd, nbndx, 1, evc, ethr, &
                      eig, btype, notcnv, .false., dav_iter, nhpsi)
         !$acc end host_data
#if defined(__MPI)
      else
         call pcegterg(my_h_psi, cb_s_psi, use_overlap, cb_g_psi, &
                       npw, npwx, nbnd, nbndx, 1, evc, ethr, &
                       eig, btype, notcnv, .false., dav_iter, nhpsi)
      end if
#endif

      call stop_clock('davidson')

      ! Update eig on host for output (and reference energy)
      !$acc update host(eig)

      ! ref energy
      if (ik == 1 .and. energy_shift) then
          homo_band = min(4 * ncell**3, nbnd)
         ref_energy = eig(homo_band)
      end if

      ! write bands to output
      call write_bands(eig, ref_energy)
        
  end do
  
  write(stdout, '("Timing summary:")')
  call print_clock('davidson')
  call print_clock('h_psi') 
  call print_clock('s_psi') 
  call print_clock('g_psi') 
  call print_clock('fftw')
  call print_clock('ffts')
  
  !$acc exit data delete(igk, ekin, aux, vloc, fft_array)
  !$acc exit data delete(dfft%nl)
  !$acc exit data delete(eig, evc)
  deallocate(eig, evc)

#if defined(__MPI)
    call MPI_Finalize(ik)
#endif
  
end program cb_davidson_main