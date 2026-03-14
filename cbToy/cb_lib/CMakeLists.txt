#source files
set(src_cb
	cb_module.f90
	ggen.f90
	input.f90
	mp_bands.f90
	random_numbers.f90
	write_bands.f90
	init_k.f90
	int_to_char.f90
	mp_global.f90
	set_cb_potential.f90
	command_line_options.f90
	init_random_wfcs.f90
	io_global.f90
	mp_world.f90
	sort.f90
	mp_pools.f90
)

#QE helper for define the librart target (create library)
qe_add_library(cb_lib ${src_cb})
qe_enable_cuda_fortran("${src_cb}")
#installing library
qe_install_targets(cb_lib)

#link to outside libraries
target_link_libraries(cb_lib
    PUBLIC
    qe_fftx
    qe_utilx
    qe_lax
    qe_openacc_fortran
)
