subroutine my_h_psi(npwx, npw, nbnd, psi, hpsi)
  use iso_fortran_env, only: dp=> real64
  use cb_module, only: ekin, vloc, igk, dfft, fft_array, aux
  use fft_interfaces, only: fwfft, invfft 
#if defined(_OPENACC)
  use openacc
#endif
  implicit none 
  integer,intent(in) :: npwx, npw, nbnd
  complex(dp) :: psi(npwx, nbnd), hpsi(npwx, nbnd) 
  !
  integer :: ig, ibnd, ir

  do ibnd =1, nbnd
    !$acc parallel loop present(fft_array)
    do ig = 1, size(fft_array)
      fft_array(ig) = cmplx(0._dp, 0._dp, kind=dp)
    end do
    !$acc parallel loop present(psi, fft_array, igk)
    do ig = 1, npw
      fft_array(dfft%nl(igk(ig))) = psi(ig,ibnd) 
    end do 
    !$acc host_data use_device(fft_array)
    call invfft( 'Wave', fft_array, dfft) 
    !$acc end host_data

    !$acc parallel loop present(psi, fft_array, vloc)
    do ir = 1, dfft%nnr 
       fft_array(ir) = fft_array(ir) * vloc(ir) 
    end do 
    !$acc host_data use_device(fft_array)
    call fwfft('Wave', fft_array, dfft) 
    !$acc end host_data

    !$acc parallel loop present(psi, hpsi, fft_array, ekin, igk)
    do ig = 1, npw
       hpsi(ig,ibnd) = ekin(ig) * psi(ig,ibnd)   + fft_array(dfft%nl(igk(ig)))  
    end do 
  end do
end subroutine my_h_psi
        
  
   
