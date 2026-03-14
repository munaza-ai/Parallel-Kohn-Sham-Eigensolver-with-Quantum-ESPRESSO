!
! Main cbToy solver davidson method
!
program cb_davidson_main
  use cb_module
  use command_line_options, ONLY: get_command_line, ndiag_, nband_, npool_

#if defined(__MPI)
  ! MPI variables imported from modules
  use mp_world, ONLY : world_comm, mp_world_start, nproc, mpime, root
  use mp_bands, ONLY : mp_start_bands, intra_bgrp_comm, inter_bgrp_comm
  use mp_pools, ONLY : intra_pool_comm, inter_pool_comm, my_pool_id, me_pool, nproc_pool
  use mp,       ONLY : mp_sum, mp_bcast, mp_barrier
  use parallel_include
  ! mp startup
  use mp_global, ONLY : mp_startup, mp_global_end
  !.FALSE. = parallel to the band groups (default)
  ! .TRUE.  = parallel inside every band group (strict hierarchy)
  use laxlib_processors_grid, ONLY : do_distr_diag_inside_bgrp
#endif

  implicit none

  ! timings procedure
  external :: init_clocks, start_clock, stop_clock, print_clock

  ! operators interfaces
  external :: my_h_psi, cb_s_psi, cb_g_psi
  external :: set_mpi_comm_4_solvers, divide

  ! variables
  logical :: gamma_only
  integer :: homo_band
  integer :: ik, notcnv, dav_iter, nhpsi
  integer :: ndiag
  integer :: ik_start, ik_end
  real(8), allocatable :: eig(:), eig_global(:,:)
  complex(8), allocatable :: evc(:,:)
  real(8) :: ref_energy

  ! initialization of internal timing system
  call init_clocks(.true.)

  !ndiag=1

#if defined(__MPI)
  ! Create the parallel communicators in the MAIN code
  call mp_startup(ndiag, diag_in_band_group = do_distr_diag_inside_bgrp)
  
  ! Provide MPI communicators to internal solvers (LAXLIB/BLACS)
  call set_mpi_comm_4_solvers(intra_pool_comm, intra_bgrp_comm, inter_bgrp_comm)
#endif

  ! read gamma parameter for select complex or real
  gamma_only = .false.
  call input(gamma_only)
  ! generate the plane-wave basis
  call ggen(gamma_only)
  ! routine constructs the local real-space part of the cb potential
  call set_cb_potential()

  ! allocation of eigenvalues and eigenvectors
  allocate(eig(nbnd))
  allocate(evc(npwx, nbnd))
  allocate(eig_global(nbnd, nks))
  eig_global = 0.0

#if defined(__MPI)
  ! distribute k-points with divide command
  call divide(inter_pool_comm, nks, ik_start, ik_end)
#else
  ik_start = 1
  ik_end = nks
#endif

  ref_energy = 0.0
  ! modify loops so each pool handles only its k-points
  do ik = ik_start, ik_end
      current_k = ik

      call init_k()
      call init_random_wfcs(npw, npwx, nbnd, evc)
      eig = 0.0

      call start_clock('davidson')

#if defined(__MPI)
      if (ndiag == 1) then
#endif
         call cegterg(my_h_psi, cb_s_psi, use_overlap, cb_g_psi, &
                      npw, npwx, nbnd, nbndx, 1, evc, ethr, &
                      eig, btype, notcnv, .false., dav_iter, nhpsi)
#if defined(__MPI)
      else
         call pcegterg(my_h_psi, cb_s_psi, use_overlap, cb_g_psi, &
                       npw, npwx, nbnd, nbndx, 1, evc, ethr, &
                       eig, btype, notcnv, .false., dav_iter, nhpsi)
      end if
#endif

      call stop_clock('davidson')

      ! ref energy
      if (ik == 1 .and. energy_shift) then
          homo_band = min(4 * ncell**3, nbnd)
          ref_energy = eig(homo_band)
      end if

      ! store eigenvalues for global gathering
      eig_global(:, ik) = eig(:)

  end do

#if defined(__MPI)
  ! for output, Node 0 gathers all eigenvalues into eig_global and prints one
  call mp_sum(eig_global, world_comm)
  call mp_sum(ref_energy, world_comm)
  ! Since each process in a pool has the same eigenvalues, they were summed nproc_pool times.
  if (nproc_pool > 1) then
     eig_global = eig_global / dble(nproc_pool)
     ref_energy = ref_energy / dble(nproc_pool)
  end if
#endif

  if (mpime == root) then
     do ik = 1, nks
        current_k = ik
        call init_k()
        call write_bands(eig_global(:, ik), ref_energy)
     end do
  end if

  write(stdout, '("Timing summary:")')
  call print_clock('davidson')
  call print_clock('h_psi')
  call print_clock('s_psi')
  call print_clock('g_psi')
  call print_clock('fftw')
  call print_clock('ffts')

  deallocate(eig, evc, eig_global)

#if defined(__MPI)
    call mp_global_end()
#endif

end program cb_davidson_main
