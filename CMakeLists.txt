cmake_minimum_required(VERSION 3.20 FATAL_ERROR)
# Policy CMP0048: The project() command manages VERSION variables
set(CMAKE_POLICY_DEFAULT_CMP0048 NEW)

project(cbToy
    VERSION 0.1
    DESCRIPTION "small cb toy code using QE Libraries"
    LANGUAGES Fortran C)

if(${cbToy_BINARY_DIR} STREQUAL ${cbToy_SOURCE_DIR})
    message(FATAL_ERROR "QE source folder cannot be safely used as a build folder!")
endif()

##########################################################
# Define the paths for static libraries and executables
##########################################################
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${cbToy_BINARY_DIR}/lib 
    CACHE
    PATH "Single output directory for building all libraries.")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${cbToy_BINARY_DIR}/bin 
    CACHE
    PATH "Single output directory for building all executables.")

###########################################################
# Build helpers
###########################################################
set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake" ${CMAKE_MODULE_PATH})
include_directories("${CMAKE_CURRENT_SOURCE_DIR}/include")
include(cmake/qeHelpers.cmake)

###########################################################
# Build Type
# Ensure that a specific, default build type is set when
# none has been explicitly set by the user
###########################################################
qe_ensure_build_type("Release")

###########################################################
# Modules
###########################################################
include(CheckFunctionExists)
# Must use GNUInstallDirs to install libraries into correct
# locations on all platforms.
include(GNUInstallDirs)

###########################################################
# Build Options
###########################################################
include(CMakeDependentOption)
option(QE_ENABLE_CUDA
    "enable CUDA acceleration on NVIDIA GPUs" OFF)
if(QE_ENABLE_CUDA)
    option(QE_ENABLE_OPENACC "enable OpenACC acceleration" ON)
    # OpenMP enabled by default if CUDA is enable
    option(QE_ENABLE_OPENMP
        "enable distributed execution support via OpenMP" ON)
else()
    option(QE_ENABLE_OPENACC "enable OpenACC acceleration" OFF)
    option(QE_ENABLE_OPENMP
        "enable distributed execution support via OpenMP" OFF)
endif()
option(QE_ENABLE_MPI
    "enable distributed execution support via MPI" ON)
option(QE_ENABLE_MPI_GPU_AWARE
    "enable GPU aware MPI operations" OFF)
option(QE_ENABLE_TRACE
    "enable execution tracing output" OFF)
option(QE_ENABLE_PROFILE_NVTX
        "enable execution of NVIDIA NVTX profiler plugin" OFF)
option(QE_ENABLE_SCALAPACK
    "enable SCALAPACK execution units" OFF)
option(QE_CLOCK_SECONDS
    "print program time in seconds" OFF)
set(QE_FFTW_VENDOR "AUTO" CACHE
    STRING "select a specific FFTW library [Intel_DFTI, Intel_FFTW3, ArmPL, IBMESSL, FFTW3, Internal]")
set (QE_EXTRA_DEFINITIONS "" CACHE STRING "Semicolon-separated list of extra global definitions")


if(QE_ENABLE_CUDA)
    qe_add_global_compile_definitions(__CUDA)
endif()
if(QE_ENABLE_TRACE)
    qe_add_global_compile_definitions(__TRACE)
endif()
if(QE_ENABLE_PROFILE_NVTX)
   qe_add_global_compile_definitions(__PROFILE_NVTX) 
endif() 
if(QE_ENABLE_MPI_INPLACE)
    qe_add_global_compile_definitions(__USE_INPLACE_MPI)
endif()
foreach(DEF IN LISTS QE_EXTRA_DEFINITIONS)
    qe_add_global_compile_definitions(${DEF})
endforeach()
if(QE_ENABLE_MPI)
    # OMPI_SKIP_MPICXX: skip CXX APIs on openmpi, cause trouble to C APIs
    qe_add_global_compile_definitions(__MPI OMPI_SKIP_MPICXX)
    if(QE_ENABLE_MPI_GPU_AWARE)
        qe_add_global_compile_definitions(__GPU_MPI)
    endif()
endif()
if(QE_ENABLE_SCALAPACK)
    qe_add_global_compile_definitions(__SCALAPACK)
endif()
if(QE_CLOCK_SECONDS)
   qe_add_global_compile_definitions(__CLOCK_SECONDS)
endif()


# Check options consistency
if(QE_ENABLE_STATIC_BUILD AND BUILD_SHARED_LIBS)
    message(FATAL_ERROR "Full static build of QE executables requires static QE internal libraries. QE_ENABLE_STATIC_BUILD and BUILD_SHARED_LIBS cannot be both ON")
endif()
if(QE_ENABLE_SCALAPACK AND NOT QE_ENABLE_MPI)
    message(FATAL_ERROR "SCALAPACK requires MPI support, enable it with '-DQE_ENABLE_MPI=ON' or disable SCALAPACK with '-DQE_ENABLE_SCALAPACK=OFF'")
endif()
if(QE_ENABLE_CUDA AND NOT (CMAKE_Fortran_COMPILER_ID MATCHES "PGI" OR CMAKE_Fortran_COMPILER_ID MATCHES "NVHPC"))
    message(FATAL_ERROR "NVHPC compiler is mandatory when CUDA is enabled due QE is based on CUDA Fortran language")
endif()
if(QE_ENABLE_OPENACC AND NOT (CMAKE_Fortran_COMPILER_ID MATCHES "PGI" OR CMAKE_Fortran_COMPILER_ID MATCHES "NVHPC"))
    message(FATAL_ERROR "NVHPC compiler is mandatory when OpenACC is enabled")
endif()
if(QE_ENABLE_MPI_GPU_AWARE AND NOT (QE_ENABLE_CUDA AND QE_ENABLE_MPI))
    message(FATAL_ERROR "GPU aware MPI requires both MPI and CUDA features enabled")
endif()



############################################################
# C preprocessor
# Note: reply on the compiler preprocessor whenever possible
############################################################
if(DEFINED ENV{CPP})
    set(QE_CPP_DEFAULT $ENV{CPP})
else()
    set(QE_CPP_DEFAULT cpp)
endif()
# QE_CPP_DEFAULT is only effective when cached QE_CPP doesn't exist.
set(QE_CPP ${QE_CPP_DEFAULT} CACHE
    STRING "C preprocessor for qe_preprocess_source in qeHelpers.cmake")
find_program(QE_CPP_FULL_PATH NAMES ${QE_CPP} DOC "C preprocessor full path")
if(QE_CPP_FULL_PATH)
    message(STATUS "C preprocessor used by qe_preprocess_source in qeHelpers.cmake: ${QE_CPP_FULL_PATH}")
else()
    set(QE_CPP_SAVED ${QE_CPP})
    unset(QE_CPP CACHE)
    message(FATAL_ERROR "C preprocessor ${QE_CPP_SAVED} not found. Pass a working one to CMake via QE_CPP!")
endif()

###########################################################
# language standard requirements
###########################################################
# TODO need to require all compilers using the same one
if(CMAKE_Fortran_COMPILER_ID MATCHES "PGI" OR CMAKE_Fortran_COMPILER_ID MATCHES "NVHPC")
    set(CMAKE_C_STANDARD 11)
    set(CMAKE_C_STANDARD_REQUIRED ON)
    set(CMAKE_C_EXTENSIONS OFF)
endif()

###########################################################
# check Fortran compiler -isystem option support
###########################################################
include(CheckFortranCompilerFlag)
check_fortran_compiler_flag("-isystem ." Fortran_ISYSTEM_SUPPORTED)
if(NOT Fortran_ISYSTEM_SUPPORTED AND NOT DEFINED CMAKE_NO_SYSTEM_FROM_IMPORTED)
  set(CMAKE_NO_SYSTEM_FROM_IMPORTED ON)
endif()

###########################################################
# OpenMP
# The following targets will be defined:
add_library(qe_openmp_fortran INTERFACE)
qe_install_targets(qe_openmp_fortran)
###########################################################
if(QE_ENABLE_OPENMP)
    find_package(OpenMP REQUIRED Fortran)
    target_link_libraries(qe_openmp_fortran INTERFACE OpenMP::OpenMP_Fortran)
endif(QE_ENABLE_OPENMP)
if(QE_ENABLE_OFFLOAD)
    target_compile_definitions(qe_openmp_fortran INTERFACE "$<$<COMPILE_LANGUAGE:Fortran>:__OPENMP_GPU>")
endif()

###########################################################
# OpenACC
# The following targets will be defined:
add_library(qe_openacc_fortran INTERFACE)
add_library(qe_openacc_c INTERFACE)
qe_install_targets(qe_openacc_fortran qe_openacc_c)
###########################################################
if(QE_ENABLE_OPENACC)
    find_package(OpenACC REQUIRED Fortran C)
    target_link_libraries(qe_openacc_fortran INTERFACE OpenACC::OpenACC_Fortran)
    target_link_libraries(qe_openacc_c INTERFACE OpenACC::OpenACC_C)
endif(QE_ENABLE_OPENACC)

############################################################
# Compiler vendor specific options
############################################################
if(CMAKE_Fortran_COMPILER_ID MATCHES "GNU")
    include(GNUFortranCompiler)
elseif(CMAKE_Fortran_COMPILER_ID MATCHES "PGI" OR CMAKE_Fortran_COMPILER_ID MATCHES "NVHPC")
    include(NVFortranCompiler)
elseif(CMAKE_Fortran_COMPILER_ID MATCHES "Cray")
    include(CrayFortranCompiler)
elseif(CMAKE_Fortran_COMPILER_ID MATCHES "Intel")
    include(IntelFortranCompiler)
elseif(CMAKE_Fortran_COMPILER_ID MATCHES "XL")
    include(IBMFortranCompiler)
endif()

if(QE_ENABLE_STATIC_BUILD)
    set(CMAKE_FIND_LIBRARY_SUFFIXES ".a")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static")
endif()

###########################################################
# CUDA
###########################################################
if(QE_ENABLE_CUDA OR QE_ENABLE_PROFILE_NVTX)
    if(CMAKE_Fortran_COMPILER_ID MATCHES "PGI" OR CMAKE_Fortran_COMPILER_ID MATCHES "NVHPC")
        add_library(CUDA::cufft INTERFACE IMPORTED)
        set_target_properties(CUDA::cufft PROPERTIES INTERFACE_LINK_LIBRARIES "${CUDA_FLAG}lib=cufft")
        add_library(CUDA::cublas INTERFACE IMPORTED)
        set_target_properties(CUDA::cublas PROPERTIES INTERFACE_LINK_LIBRARIES "${CUDA_FLAG}lib=cublas")
        add_library(CUDA::cusolver INTERFACE IMPORTED)
        set_target_properties(CUDA::cusolver PROPERTIES INTERFACE_LINK_LIBRARIES "${CUDA_FLAG}lib=cusolver")
        add_library(CUDA::curand INTERFACE IMPORTED)
        set_target_properties(CUDA::curand PROPERTIES INTERFACE_LINK_LIBRARIES "${CUDA_FLAG}lib=curand")
        if(QE_ENABLE_PROFILE_NVTX)
            add_library(CUDA::nvToolsExt INTERFACE IMPORTED)
            set(CMAKE_REQUIRED_LIBRARIES "-cuda;libnvToolsExt.so")
            check_function_exists(nvtxRangePushEx NVTX_FOUND)
            unset(CMAKE_REQUIRED_LIBRARIES)
            if(NOT NVTX_FOUND)
                #message(FATAL_ERROR "Check nvtxRangePushEx in libnvToolsExt.so failed")  
              set_target_properties(CUDA::nvToolsExt PROPERTIES INTERFACE_LINK_LIBRARIES "${CUDA_FLAG}lib=nvtx")
            else()
               set_target_properties(CUDA::nvToolsExt PROPERTIES INTERFACE_LINK_LIBRARIES "-cuda;libnvToolsExt.so")
            endif()
        endif()
    else()
        find_package(CUDAToolkit REQUIRED)
    endif()
endif(QE_ENABLE_CUDA OR QE_ENABLE_PROFILE_NVTX)

###########################################################
# MPI
# The following targets will be defined:
add_library(qe_mpi_fortran INTERFACE)
qe_install_targets(qe_mpi_fortran)
###########################################################
if(QE_ENABLE_MPI)
    find_package(MPI REQUIRED Fortran)

    # choose using mpi module or header file.
    if(MPI_Fortran_HAVE_F90_MODULE)
        set(QE_ENABLE_MPI_MODULE_DEFAULT ON)
    elseif(MPI_Fortran_HAVE_F77_HEADER)
        set(QE_ENABLE_MPI_MODULE_DEFAULT OFF)
    else()
        message(FATAL_ERROR "MPI library doesn't provide a Fortran 'mpi' module nor a 'mpif.h' header file.")
    endif()

    option(QE_ENABLE_MPI_MODULE
        "use MPI via Fortran module instead of mpif.h header inclusion" ${QE_ENABLE_MPI_MODULE_DEFAULT})
    if(QE_ENABLE_MPI_MODULE)
        message(STATUS "Selected the Fortran 'mpi' module. QE_ENABLE_MPI_MODULE=ON")
        if(NOT MPI_Fortran_HAVE_F90_MODULE)
            message(FATAL_ERROR "MPI library doesn't provide a Fortran 'mpi' module.")
        endif()
        qe_add_global_compile_definitions(__MPI_MODULE)
    else()
        message(STATUS "Selected the Fortran 'mpif.h' header file. QE_ENABLE_MPI_MODULE=OFF")
        if(NOT MPI_Fortran_HAVE_F77_HEADER)
            message(FATAL_ERROR "MPI library doesn't provide a Fortran 'mpif.h' header file.")
        endif()
    endif()

    target_link_libraries(qe_mpi_fortran
        INTERFACE MPI::MPI_Fortran)
    message(STATUS "MPI settings used by CTest")
    message("     MPIEXEC_EXECUTABLE : ${MPIEXEC_EXECUTABLE}")
    message("     MPIEXEC_NUMPROC_FLAG : ${MPIEXEC_NUMPROC_FLAG}")
    message("     MPIEXEC_PREFLAGS : ${MPIEXEC_PREFLAGS}")
    string(REPLACE ";" " " MPIEXEC_PREFLAGS_PRINT "${MPIEXEC_PREFLAGS}")
    message("   Tests run as : ${MPIEXEC_EXECUTABLE} ${MPIEXEC_NUMPROC_FLAG} <NUM_PROCS> ${MPIEXEC_PREFLAGS_PRINT} <EXECUTABLE>")
endif(QE_ENABLE_MPI)

###########################################################
# Git
###########################################################
find_package(Git 2.13 REQUIRED)
if(EXISTS ${qe_SOURCE_DIR}/.git)
  message(STATUS "Source files are cloned from a git repository.")
  set(IS_GIT_PROJECT 1)
  include(GitInfo)
else()
  message(STATUS "Source files are not cloned from a git repository.")
endif()

###########################################################
# Lapack
# The following targets will be defined:
add_library(qe_lapack INTERFACE)
qe_install_targets(qe_lapack)
###########################################################
if(NOT BLA_VENDOR)
    if(CMAKE_SYSTEM_PROCESSOR MATCHES "x86_64.*")
        message(STATUS "Trying to find LAPACK from Intel MKL")
        if(QE_ENABLE_OPENMP)
            SET(BLA_VENDOR Intel10_64lp)
        else()
            SET(BLA_VENDOR Intel10_64lp_seq)
        endif()
        find_package(LAPACK)
    elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "i686.*|i386.*|x86.*")
        message(STATUS "Trying to find LAPACK from Intel MKL - 32bit")
        SET(BLA_VENDOR Intel10_32)
        find_package(LAPACK)
    elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "^(aarch64.*|AARCH64.*|arm64.*|ARM64.*)")
        message(STATUS "Trying to find LAPACK from ARM Performance Library")
        if(QE_ENABLE_OPENMP)
            SET(BLA_VENDOR Arm_mp)
        else()
            SET(BLA_VENDOR Arm)
        endif()
        find_package(LAPACK)
    endif()
    if(NOT LAPACK_FOUND)
        message(STATUS "Trying to find alternative LAPACK libraries")
        SET(BLA_VENDOR All)
        if(QE_ENABLE_OPENMP)
            set(CMAKE_REQUIRED_LINK_OPTIONS ${OpenMP_Fortran_FLAGS})
        endif()
        find_package(LAPACK)
        unset(CMAKE_REQUIRED_LINK_OPTIONS)
    endif()
elseif(BLA_VENDOR STREQUAL NVPL)
    find_package(nvpl REQUIRED COMPONENTS blas lapack) 
    target_link_libraries(qe_lapack INTERFACE nvpl::lapack_lp64_omp)  
else()
    if(QE_ENABLE_OPENMP)
        set(CMAKE_REQUIRED_LINK_OPTIONS ${OpenMP_Fortran_FLAGS})
    endif()
    find_package(LAPACK)
    unset(CMAKE_REQUIRED_LINK_OPTIONS)
endif()
if(LAPACK_FOUND)
    list(APPEND _lapack_libs
        ${BLAS_LIBRARIES}
        ${BLAS_LINKER_FLAGS}
        ${LAPACK_LIBRARIES}
        ${LAPACK_LINKER_FLAGS})
    if(QE_ENABLE_OPENMP)
        list(APPEND _lapack_libs ${OpenMP_Fortran_LIBRARIES})
    endif()
    list(REMOVE_DUPLICATES "${_lapack_libs}")
    message(STATUS "Found LAPACK: ${_lapack_libs}")
    target_link_libraries(qe_lapack INTERFACE ${_lapack_libs})
    set(CMAKE_REQUIRED_LIBRARIES ${_lapack_libs})
    check_fortran_function_exists(zhpev ZHPEV_FOUND)
    unset(CMAKE_REQUIRED_LIBRARIES)
    if(NOT ZHPEV_FOUND)
      unset(ZHPEV_FOUND CACHE)
      message(FATAL_ERROR "Incomplete LAPACK! function zhpev not found!")
    endif()
elseif(NOT BLA_VENDOR STREQUAL NVPL)
    message(FATAL_ERROR "Failed to find a complete set of external BLAS/LAPACK library by FindLAPACK. "
                        "Variables controlling FindLAPACK can be found at CMake online documentation. "
                        "Alternatively, '-DQE_LAPACK_INTERNAL=ON' may be used to enable reference LAPACK "
                        "at a performance loss compared to optimized libraries.")
endif()

###########################################################
# SCALAPACK
# The following targets will be defined:
add_library(qe_scalapack INTERFACE)
qe_install_targets(qe_scalapack)
###########################################################
if(QE_ENABLE_SCALAPACK)
  if(BLA_VENDOR STREQUAL NVPL) 
    find_package (nvpl QUIET COMPONENTS scalapack) 
    if (nvpl_scalapack_FOUND)
       find_package(NVPLBLACS) 
       target_link_libraries(qe_scalapack INTERFACE nvpl::scalapack_lp64 NVPL::BLACS) 
           else() 
       message(FATAL_ERROR "nvpl_scalapack_found is ${nvpl_scalapack_FOUND}") 
    endif()
  else() 
    find_package(SCALAPACK REQUIRED QUIET)
    message(STATUS "Found SCALAPACK: ${SCALAPACK_LIBRARIES};${SCALAPACK_LINKER_FLAGS}")
    target_link_libraries(qe_scalapack
        INTERFACE
            ${SCALAPACK_LIBRARIES}
            ${SCALAPACK_LINKER_FLAGS})
  endif()
endif(QE_ENABLE_SCALAPACK)

#######################################################
# Tests
# Any executable target marked as test runner via
# 'add_test()' will be run by the 'test' make target
###########################################################
if(QE_ENABLE_TEST)
    include(cmake/unit_test.cmake)
    enable_testing()
endif(QE_ENABLE_TEST)

###########################################################
# PROFILERS LIBRARIES
# the target for profiler libray will be defined if
# some profiler is enabled
add_library(qe_ext_prof_tool INTERFACE)
qe_install_targets(qe_ext_prof_tool)
###########################################################
# this should work with nvfortran
if(QE_ENABLE_PROFILE_NVTX)
   target_link_libraries(qe_ext_prof_tool
	INTERFACE
        CUDA::nvToolsExt)
endif(QE_ENABLE_PROFILE_NVTX)

###########################################################
# Components
###########################################################
add_subdirectory(FFTXlib)
add_subdirectory(UtilXlib)
add_subdirectory(DEVMEMLIB) 
add_subdirectory(LAXlib)
add_subdirectory(KS_Solvers)
add_subdirectory(cbToy)

###########################################################
# Pkg-config
###########################################################
configure_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/cmake/cbToy.pc.in
    ${CMAKE_CURRENT_BINARY_DIR}/cbToy.pc
    @ONLY)
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/cbToy.pc
        DESTINATION ${CMAKE_INSTALL_LIBDIR}/pkgconfig)

###########################################################
# Exports
###########################################################
install(EXPORT qeTargets
        FILE qeTargets.cmake
        DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/qe)

include(CMakePackageConfigHelpers)
write_basic_package_version_file(
    qeConfigVersion.cmake
    VERSION ${PACKAGE_VERSION}
    COMPATIBILITY AnyNewerVersion)

configure_file(cmake/qeConfig.cmake.in
    ${CMAKE_CURRENT_BINARY_DIR}/qeConfig.cmake @ONLY)

install(FILES
            ${CMAKE_CURRENT_BINARY_DIR}/qeConfigVersion.cmake
            ${CMAKE_CURRENT_BINARY_DIR}/qeConfig.cmake
        DESTINATION
            ${CMAKE_INSTALL_LIBDIR}/cmake/qe)

###########################################################
# Dependency graph generation
# Defines the custom target 'depgraph'
###########################################################
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/cmake/CMakeGraphVizOptions.cmake
               ${CMAKE_CURRENT_BINARY_DIR}/CMakeGraphVizOptions.cmake COPYONLY)
add_custom_target(depgraph
    "${CMAKE_COMMAND}" "--graphviz=depgraph" .
    WORKING_DIRECTORY "${CMAKE_BINARY_DIR}")

###########################################################
# Custom make targets
# The collection 'pwall' is defined here
# Each of the followings is defined inside its subdirectory
#   pw ph pp hp pwcond neb cp tddfpt gwl ld1 upf epw
#   xspectra couple all_currents
###########################################################

