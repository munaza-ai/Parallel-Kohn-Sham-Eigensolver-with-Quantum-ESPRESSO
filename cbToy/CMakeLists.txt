###########################################################
# cbToy miniapp
###########################################################
add_subdirectory(cb_lib)
add_subdirectory(cb_operators)

set(src_cb_davidson_main cb_davidson_main.f90)

qe_add_executable(cb_davidson_main.x ${src_cb_davidson_main})

target_link_libraries(cb_davidson_main.x
    PRIVATE
        cb_lib
        cb_operators
        qe_kssolver_davidson
        qe_lax
        qe_fftx
        qe_mpi_fortran
        qe_utilx
	qe_openacc_fortran)

qe_install_targets(cb_davidson_main.x)
