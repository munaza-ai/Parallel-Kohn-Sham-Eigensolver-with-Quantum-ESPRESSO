###########################################################
# cb_operators library
###########################################################

set(src_cb_operators
    cb_g_psi.f90
    cb_h_psi.f90
    cb_s_psi.f90
    my_h_psi.f90)

qe_add_library(cb_operators ${src_cb_operators})

qe_enable_cuda_fortran("${src_cb_operators}")

target_link_libraries(cb_operators
    PUBLIC
        cb_lib
        qe_fftx
        qe_utilx
        qe_openacc_fortran)

qe_install_targets(cb_operators)
