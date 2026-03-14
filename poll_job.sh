#!/bin/bash
#SBATCH --job-name=qe_run
#SBATCH --partition=dcgp_usr_prod
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH --time=00:05:00
#SBATCH --account=ICT26_MHPC
#SBATCH --output=jobs/qe_t8_%j.out
#SBATCH --error=jobs/qe_t8_%j.err

# Load modules

module purge
module load intel-oneapi-compilers
module load intel-oneapi-mpi
module load intel-oneapi-mkl
module load cmake

# =============================================
# YEH 2 LINES SABSE IMPORTANT HAIN — FIX KARO
# =============================================
EXE=./build/bin/cb_davidson_main.x
INPUT=./examples/si4.in
# =============================================

echo "========================================"
echo "PW PARALLELISM SCALING"
echo "========================================"

for NP in 1 2 4 8 16 32; do
    echo "--- np=$NP, nd=1 (cegterg) ---"
    srun -n $NP $EXE -nd 1 -i $INPUT
done

echo "========================================"
echo "ScaLAPACK scaling"
echo "========================================"

for ND in 1 2 4 8 16 25; do
    echo "--- np=32, nd=$ND (pcegterg) ---"
    srun -n 32 $EXE -nd $ND -i $INPUT
done
