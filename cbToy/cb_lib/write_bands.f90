subroutine write_bands(eig, ref)
! write the kpoint coordinates and the number of plane waves
! write the band energies

! global variables
  use cb_module
  use mp_pools, only : me_pool, root_pool
  implicit none
! input variables
  real(DP), intent(IN) :: eig(nbnd), ref
! local variables
  real(DP), parameter :: rytoev = 13.6056d0
  integer :: i, ibnd, iunit
  character(len=64) :: fname

  if (me_pool /= root_pool) return

  write(fname, '("bands_k", I4.4, ".dat")') current_k
  open(newunit=iunit, file=trim(fname), status='replace', action='write')

! write the kpoint coordinates and the number of plane waves
  write(iunit, 9021) (xk(i,current_k), i=1,3), npw
9021 format(/'          k =',3F7.4,' (',I6,' PWs)   bands (ev):'/)
! write the band energies
  write(iunit, 9030) ((eig(ibnd)-ref) * rytoev, ibnd = 1, nbnd)
!  write(iunit, 9030) (eig(ibnd), ibnd = 1, nbnd)
9030 format('  ',8F9.4)

  close(iunit)

end subroutine write_bands
 
