#!/bin/bash
#SBATCH --account=ict26_mhpc_0
#SBATCH --partition=boost_usr_prod
#SBATCH --time=00:30:00
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks-per-node=32
#SBATCH --cpus-per-task=1
#SBATCH --qos=boost_qos_dbg
#SBATCH --gres=gpu:4
#SBATCH --job-name=cb_scaling
#SBATCH --output=jobs/cb_scaling_%j.out
#SBATCH --error=jobs/cb_scaling_%j.err

module purge
module load intel-oneapi-mkl
module load intel-oneapi-compilers
module load intel-oneapi-mpi

EXE=$HOME/P2.6_KS_25_26/build/bin/cb_davidson_main.x
INPUT=$HOME/P2.6_KS_25_26/examples/si4.in
INPUT_K=$HOME/P2.6_KS_25_26/examples/si4_parallel_k50.in

#echo "========================================"
#echo "SCALING STUDY: CB miniapp"
#echo "========================================"

#echo ""
#echo "========================================"
#echo "EXERCISE 2: PW parallelism scaling"
#echo "========================================"

# Exercise 2: PW parallelism scaling
#for NP in 1 2 4 8 16 32; do
#    echo ""
#    echo "--- np=$NP, nd=1 (cegterg) ---"
#    srun -n $NP $EXE -nd 1 < $INPUT
#    echo ""
#done

#echo ""
#echo "========================================"
#echo "EXERCISE 3: ScaLAPACK scaling"
#echo "========================================"

# Exercise 3: ScaLAPACK scaling
 #for ND in 1 4 9 16 25; do
#    echo ""
#    echo "--- np=32, nd=$ND (pcegterg) ---"
#    srun -n 32 $EXE -nd $ND < $INPUT
#    echo ""
#done

#echo ""
#echo "========================================"
#echo "EXERCISE 4: k-point pool parallelism scaling"
#echo "========================================"

# Exercise 4: k-point pool parallelism scaling (50 k-points, 32 total ranks)
#for NK in 1 2 4 8 16 32; do
#    echo ""
#    echo "--- np=32, nk=$NK (k-point parallelism) ---"
#    srun -n 32 $EXE -nk $NK -i $INPUT_K
#    echo ""
#done

echo ""
echo "========================================"
echo "EXERCISE 5: GPU offloading scaling"
echo "========================================"

#Exercise 5: GPU offloading scaling
for NP in 1 2 4 8 16 32; do
    echo ""
    echo "--- np=$NP, nd=1 (cegterg) ---"
    srun -n $NP $EXE -nd 1 < $INPUT
    echo ""
done
