!----------------------------------------------------------------------------
MODULE mp_pools
  !----------------------------------------------------------------------------
  ! Exactly mp_bands ki tarah — lekin k-point pools ke liye
  !
  USE mp, ONLY : mp_barrier, mp_size, mp_rank, mp_comm_split
  USE parallel_include
  !
  IMPLICIT NONE
  SAVE
  !
  INTEGER :: npool        = 1  ! number of pools
  INTEGER :: nproc_pool   = 1  ! number of processors within a pool
  INTEGER :: me_pool      = 0  ! index of processor within a pool
  INTEGER :: my_pool_id   = 0  ! index of my pool
  INTEGER :: inter_pool_comm  = 0  ! inter pool communicator
  INTEGER :: intra_pool_comm  = 0  ! intra pool communicator
  !
CONTAINS
  !
  !--------------------------------------------------------------------------
  SUBROUTINE mp_start_pools( npool_, parent_comm )
    !--------------------------------------------------------------------------
    ! Divide processors of parent_comm into npool_ pools
    ! Replicated from mp_start_bands logic
    !
    IMPLICIT NONE
    INTEGER, INTENT(IN) :: npool_, parent_comm
    !
    INTEGER :: parent_nproc = 1, parent_mype = 0
    !
#if defined(__MPI)
    parent_nproc = mp_size( parent_comm )
    parent_mype  = mp_rank( parent_comm )
    !
    ! --- sanity checks ---
    IF ( npool_ < 1 .OR. npool_ > parent_nproc ) &
       CALL errore('mp_start_pools','invalid number of pools',1)
    IF ( MOD( parent_nproc, npool_ ) /= 0 ) &
       CALL errore('mp_start_pools','npool must divide nproc',1)
    !
    npool = npool_
    !
    ! nproc per pool
    nproc_pool = parent_nproc / npool
    !
    ! which pool am I in?  (0 to npool-1)
    my_pool_id = parent_mype / nproc_pool
    !
    ! my rank inside my pool  (0 to nproc_pool-1)
    me_pool = MOD( parent_mype, nproc_pool )
    !
    CALL mp_barrier( parent_comm )
    !
    ! intra_pool_comm — processes within the same pool
    CALL mp_comm_split( parent_comm, my_pool_id, parent_mype, intra_pool_comm )
    !
    CALL mp_barrier( parent_comm )
    !
    ! inter_pool_comm — one representative per pool
    CALL mp_comm_split( parent_comm, me_pool, parent_mype, inter_pool_comm )
    !
#endif
    RETURN
  END SUBROUTINE mp_start_pools
  !
END MODULE mp_pools
