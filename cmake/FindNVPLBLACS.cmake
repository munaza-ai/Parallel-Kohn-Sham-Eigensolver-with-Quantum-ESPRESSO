# FindNVPLBLACS.cmake
#
# Auto-selects the NVPL BLACS imported target (nvpl::blacs_<int>_<mpi>)
# that matches the MPI implementation already detected by FindMPI.
#
# Exports:
#   NVPLBLACS_FOUND        - TRUE/FALSE
#   NVPLBLACS_TARGET       - Full imported target name
#   NVPLBLACS_MPI_FLAVOR   - mpich|openmpi3|openmpi4|openmpi5
#   NVPL::BLACS            - Convenience alias target
#
# Inputs (optional):
#   NVPL_INT_TYPE          - lp64 (default) or ilp64
#   NVPL_BLACS_MPI_FLAVOR  - override auto-detection
#
# Assumes: find_package(MPI ...) has already run in the parent CMakeLists.

include_guard(GLOBAL)

# --- 0) Ensure MPI was found --------------------------------------------------
if(NOT MPI_FOUND)
  find_package(MPI REQUIRED)
endif()

# --- 1) Integer ABI selection -------------------------------------------------
set(NVPL_INT_TYPE "${NVPL_INT_TYPE}" CACHE STRING "NVPL integer ABI (lp64|ilp64)")
set_property(CACHE NVPL_INT_TYPE PROPERTY STRINGS lp64 ilp64)
if(NOT NVPL_INT_TYPE)
  set(NVPL_INT_TYPE "lp64")
endif()

# --- 2) Ensure NVPL ScaLAPACK is loaded (defines BLACS imported targets) ------
if(NOT nvpl_scalapack_FOUND
   AND NOT TARGET nvpl::scalapack_lp64
   AND NOT TARGET nvpl::scalapack_ilp64)
  find_package(nvpl QUIET COMPONENTS scalapack)
endif()

# --- 3) Detect MPI flavor -----------------------------------------------------
set(_mpi_flavor "")

# a) User override
if(DEFINED NVPL_BLACS_MPI_FLAVOR)
  set(_mpi_flavor "${NVPL_BLACS_MPI_FLAVOR}")

else()
  # b) Version-based detection via mpiexec --version
  if(MPIEXEC_EXECUTABLE)
    execute_process(
      COMMAND "${MPIEXEC_EXECUTABLE}" --version
      OUTPUT_VARIABLE _mpiexec_out
      ERROR_VARIABLE  _mpiexec_err
      OUTPUT_STRIP_TRAILING_WHITESPACE
      ERROR_STRIP_TRAILING_WHITESPACE
      TIMEOUT 2
    )

    # Accept both "Open MPI" and "OpenRTE"
    if(_mpiexec_out MATCHES "(Open MPI|OpenRTE)[^\n]* ([0-9]+)\\.")
      string(REGEX REPLACE ".*(Open MPI|OpenRTE)[^0-9]*([0-9]+)\\..*" "\\2"
             _om_major "${_mpiexec_out}")

      if(_om_major GREATER_EQUAL 5)
        set(_mpi_flavor "openmpi5")
      elseif(_om_major EQUAL 4)
        set(_mpi_flavor "openmpi4")
      else()
        set(_mpi_flavor "openmpi3")
      endif()
    endif()
  endif()

  # c) HPC-X path detection + fallback
  if(NOT _mpi_flavor)
    foreach(_lang Fortran CXX C)
      if(MPI_${_lang}_COMPILER)
        string(TOLOWER "${MPI_${_lang}_COMPILER}" _wrap_lower)

        # HPC-X path detection (matches your setup)
        if(_wrap_lower MATCHES "comm_libs/hpcx")
          set(_mpi_flavor "openmpi4")
          break()

        elseif(_wrap_lower MATCHES "mpich")
          set(_mpi_flavor "mpich")
          break()

        elseif(_wrap_lower MATCHES "openmpi")
          set(_mpi_flavor "openmpi4")
          break()
        endif()
      endif()
    endforeach()
  endif()

  # d) Final fallback
  if(NOT _mpi_flavor)
    set(_mpi_flavor "openmpi4")
    message(WARNING
      "FindNVPLBLACS: Could not infer MPI flavor; defaulting to OpenMPI-4. "
      "Override with -DNVPL_BLACS_MPI_FLAVOR=openmpi5|openmpi4|openmpi3|mpich.")
  endif()
endif()

set(NVPLBLACS_MPI_FLAVOR "${_mpi_flavor}" CACHE STRING "Detected NVPL BLACS MPI flavor")

# --- 4) Compose and verify expected BLACS target ------------------------------
set(_blacs_target "nvpl::blacs_${NVPL_INT_TYPE}_${_mpi_flavor}")

if(NOT TARGET "${_blacs_target}")
  # Re-try loading NVPL ScaLAPACK
  if(NOT nvpl_scalapack_FOUND)
    find_package(nvpl REQUIRED COMPONENTS scalapack)
  endif()
endif()

if(NOT TARGET "${_blacs_target}")
  set(NVPLBLACS_FOUND FALSE)
  set(NVPLBLACS_TARGET "")
  message(SEND_ERROR
    "FindNVPLBLACS: BLACS target '${_blacs_target}' not found. "
    "Check NVPL installation and components. "
    "Override detection via NVPL_INT_TYPE and NVPL_BLACS_MPI_FLAVOR.")
  return()
endif()

# --- 5) Export alias target NVPL::BLACS --------------------------------------
if(NOT TARGET NVPL::BLACS)
  add_library(NVPL::BLACS INTERFACE IMPORTED)
endif()
target_link_libraries(NVPL::BLACS INTERFACE "${_blacs_target}")

# --- 6) Results ---------------------------------------------------------------
set(NVPLBLACS_TARGET "${_blacs_target}" CACHE STRING "Resolved NVPL BLACS imported target")
set(NVPLBLACS_INT_TYPE "${NVPL_INT_TYPE}" CACHE STRING "Resolved NVPL integer ABI")
set(NVPLBLACS_FOUND TRUE)

mark_as_advanced(
  NVPL_INT_TYPE
  NVPL_BLACS_MPI_FLAVOR
  NVPLBLACS_TARGET
  NVPLBLACS_MPI_FLAVOR
  NVPLBLACS_INT_TYPE
)




