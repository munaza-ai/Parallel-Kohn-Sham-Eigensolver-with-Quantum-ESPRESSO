#!/bin/bash
#SBATCH --account=ict26_mhpc_0
#SBATCH --partition=boost_usr_prod
#SBATCH --time=00:30:00
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks-per-node=4
#SBATCH --qos=boost_qos_dbg
#SBATCH --gres=gpu:4
#SBATCH --job-name=cb_gpu_scaling
#SBATCH --output=jobs/cb_gpu_scaling_%j.out
#SBATCH --error=jobs/cb_gpu_scaling_%j.err

module purge
module load intel-oneapi-mkl
module load nvhpc
module load hpcx-mpi

# Force a consistent NVHPC CUDA toolkit to avoid mixed-toolkit linking/runtime issues.
NVF=$(which nvfortran)
NVHPC_ROOT=$(dirname "$(dirname "$(dirname "$NVF")")")
export NVHPC_CUDA_HOME="$NVHPC_ROOT/cuda/12.4"
export CUDA_HOME="$NVHPC_CUDA_HOME"

EXE=$HOME/P2.6_KS_25_26/build_gpu/bin/cb_davidson_main.x

# Large single-k input (GPU compute scaling)
INPUT=$HOME/P2.6_KS_25_26/examples/si4.in
# 4 k-point input (GPU + k-point parallelism)
INPUT_4K=$HOME/P2.6_KS_25_26/examples/si4_gpu_scaling.in

echo "========================================"
echo "GPU SCALING BENCHMARK"
echo "========================================"
echo "Node: $(hostname)"
echo "GPUs: $(nvidia-smi -L 2>/dev/null | wc -l)"
echo ""

echo "========================================"
echo "TEST 1: Single k-point, vary GPU count"
echo "  (ncell=4, ecutwfc=8, nbnd=768)"
echo "  Tests PW-parallel GPU offloading"
echo "========================================"

for NP in 1 2 4; do
    echo ""
    echo "--- np=$NP GPU(s), nd=1 (cegterg) ---"
    srun --ntasks=$NP --gpus-per-task=1 --gpu-bind=closest $EXE -nd 1 < $INPUT
    echo ""
done

echo ""
echo "========================================"
echo "TEST 2: 4 k-points, k-pool parallelism"
echo "  (ncell=4, ecutwfc=8, nbnd=768)"
echo "  Tests k-point distribution over GPUs"
echo "========================================"

for NK in 1 2 4; do
    echo ""
    echo "--- np=4, nk=$NK (k-pool parallelism) ---"
    srun --ntasks=4 --gpus-per-task=1 --gpu-bind=closest $EXE -nk $NK -nd 1 < $INPUT
    echo ""
done
