#!/bin/bash
#SBATCH --account=ict26_mhpc_0
#SBATCH --partition=boost_usr_prod
#SBATCH --time=00:30:00
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks-per-node=4
#SBATCH --cpus-per-task=1
#SBATCH --qos=boost_qos_dbg
#SBATCH --gres=gpu:4
#SBATCH --job-name=cpu_vs_gpu
#SBATCH --output=jobs/cpu_vs_gpu_%j.out
#SBATCH --error=jobs/cpu_vs_gpu_%j.err

set -e

module purge
module load intel-oneapi-mkl
module load nvhpc
module load hpcx-mpi

SRCDIR=$HOME/P2.6_KS_25_26
INPUT=$SRCDIR/examples/si4.in
BUILD_GPU=$SRCDIR/build_gpu
BUILD_CPU=$SRCDIR/build_cpu

echo "========================================"
echo "CPU vs GPU comparison — si4.in"
echo "========================================"

# ------------------------------------------------------------------
# 1) Build GPU version
# ------------------------------------------------------------------
echo ""
echo ">>> Building GPU version ..."
rm -rf "$BUILD_GPU"
mkdir -p "$BUILD_GPU"
cd "$BUILD_GPU"

cmake -DQE_ENABLE_CUDA=on \
      -DQE_ENABLE_OPENMP=off \
      -DCMAKE_C_COMPILER=nvc \
      -DCMAKE_Fortran_COMPILER=nvfortran \
      -DCMAKE_BUILD_TYPE=Release \
      "$SRCDIR"

make -j32
echo ">>> GPU build done."

# ------------------------------------------------------------------
# 2) Build CPU version
# ------------------------------------------------------------------
echo ""
echo ">>> Building CPU version ..."
rm -rf "$BUILD_CPU"
mkdir -p "$BUILD_CPU"
cd "$BUILD_CPU"

cmake -DQE_ENABLE_CUDA=off \
      -DQE_ENABLE_OPENMP=off \
      -DCMAKE_C_COMPILER=nvc \
      -DCMAKE_Fortran_COMPILER=nvfortran \
      -DCMAKE_BUILD_TYPE=Release \
      "$SRCDIR"

make -j32
echo ">>> CPU build done."

# ------------------------------------------------------------------
# 3) Run benchmarks
# ------------------------------------------------------------------
EXE_GPU=$BUILD_GPU/bin/cb_davidson_main.x
EXE_CPU=$BUILD_CPU/bin/cb_davidson_main.x

for NP in 1 4; do
    echo ""
    echo "========================================"
    echo "  np=$NP MPI ranks"
    echo "========================================"

    echo ""
    echo "--- CPU  (np=$NP) ---"
    srun -n $NP "$EXE_CPU" -nd 1 < "$INPUT"

    echo ""
    echo "--- GPU  (np=$NP) ---"
    srun -n $NP --gpu-bind=closest "$EXE_GPU" -nd 1 < "$INPUT"
done
