#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "qe_fftx" for configuration "Release"
set_property(TARGET qe_fftx APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_fftx PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libqe_fftx.a"
  )

list(APPEND _cmake_import_check_targets qe_fftx )
list(APPEND _cmake_import_check_files_for_qe_fftx "${_IMPORT_PREFIX}/lib64/libqe_fftx.a" )

# Import target "qe_fftx_c" for configuration "Release"
set_property(TARGET qe_fftx_c APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_fftx_c PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libqe_fftx_c.a"
  )

list(APPEND _cmake_import_check_targets qe_fftx_c )
list(APPEND _cmake_import_check_files_for_qe_fftx_c "${_IMPORT_PREFIX}/lib64/libqe_fftx_c.a" )

# Import target "qe_utilx" for configuration "Release"
set_property(TARGET qe_utilx APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_utilx PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libqe_utilx.a"
  )

list(APPEND _cmake_import_check_targets qe_utilx )
list(APPEND _cmake_import_check_files_for_qe_utilx "${_IMPORT_PREFIX}/lib64/libqe_utilx.a" )

# Import target "qe_utilx_c" for configuration "Release"
set_property(TARGET qe_utilx_c APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_utilx_c PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libqe_utilx_c.a"
  )

list(APPEND _cmake_import_check_targets qe_utilx_c )
list(APPEND _cmake_import_check_files_for_qe_utilx_c "${_IMPORT_PREFIX}/lib64/libqe_utilx_c.a" )

# Import target "qe_device_lapack" for configuration "Release"
set_property(TARGET qe_device_lapack APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_device_lapack PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libqe_device_lapack.a"
  )

list(APPEND _cmake_import_check_targets qe_device_lapack )
list(APPEND _cmake_import_check_files_for_qe_device_lapack "${_IMPORT_PREFIX}/lib64/libqe_device_lapack.a" )

# Import target "qe_devmem" for configuration "Release"
set_property(TARGET qe_devmem APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_devmem PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libqe_devmem.a"
  )

list(APPEND _cmake_import_check_targets qe_devmem )
list(APPEND _cmake_import_check_files_for_qe_devmem "${_IMPORT_PREFIX}/lib64/libqe_devmem.a" )

# Import target "qe_lax" for configuration "Release"
set_property(TARGET qe_lax APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_lax PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libqe_lax.a"
  )

list(APPEND _cmake_import_check_targets qe_lax )
list(APPEND _cmake_import_check_files_for_qe_lax "${_IMPORT_PREFIX}/lib64/libqe_lax.a" )

# Import target "qe_kssolver_davidson" for configuration "Release"
set_property(TARGET qe_kssolver_davidson APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_kssolver_davidson PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libqe_kssolver_davidson.a"
  )

list(APPEND _cmake_import_check_targets qe_kssolver_davidson )
list(APPEND _cmake_import_check_files_for_qe_kssolver_davidson "${_IMPORT_PREFIX}/lib64/libqe_kssolver_davidson.a" )

# Import target "qe_kssolver_dense" for configuration "Release"
set_property(TARGET qe_kssolver_dense APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_kssolver_dense PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libqe_kssolver_dense.a"
  )

list(APPEND _cmake_import_check_targets qe_kssolver_dense )
list(APPEND _cmake_import_check_files_for_qe_kssolver_dense "${_IMPORT_PREFIX}/lib64/libqe_kssolver_dense.a" )

# Import target "cb_lib" for configuration "Release"
set_property(TARGET cb_lib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(cb_lib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libcb_lib.a"
  )

list(APPEND _cmake_import_check_targets cb_lib )
list(APPEND _cmake_import_check_files_for_cb_lib "${_IMPORT_PREFIX}/lib64/libcb_lib.a" )

# Import target "cb_operators" for configuration "Release"
set_property(TARGET cb_operators APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(cb_operators PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libcb_operators.a"
  )

list(APPEND _cmake_import_check_targets cb_operators )
list(APPEND _cmake_import_check_files_for_cb_operators "${_IMPORT_PREFIX}/lib64/libcb_operators.a" )

# Import target "cb_davidson_main.x" for configuration "Release"
set_property(TARGET cb_davidson_main.x APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(cb_davidson_main.x PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/cb_davidson_main.x"
  )

list(APPEND _cmake_import_check_targets cb_davidson_main.x )
list(APPEND _cmake_import_check_files_for_cb_davidson_main.x "${_IMPORT_PREFIX}/bin/cb_davidson_main.x" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
