#!/bin/bash
#SBATCH --job-name=cb_ex5_gpu
#SBATCH --partition=boost_usr_prod
#SBATCH --qos=boost_qos_dbg
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --gpus-per-node=4
#SBATCH --time=00:30:00
#SBATCH --account=ICT26_MHPC_0
#SBATCH --output=jobs/cb_ex5_gpu_%j.out
#SBATCH --error=jobs/cb_ex5_gpu_%j.err

module purge
module load intel-oneapi-mkl
module load nvhpc
module load hpcx-mpi

mkdir -p jobs

cd $HOME/P2.6_KS_25_26


cd ..

#
EXE=$HOME/P2.6_KS_25_26/build/bin/cb_davidson_main.x
INPUT=$HOME/P2.6_KS_25_26/examples/si4.in

 Check karo executable bana ya nahi
echo ""
echo "========================================"
echo "EXERCISE 5: GPU offloading scaling"
echo "========================================"

for NP in 1 2 3 4 ; do
    echo ""
    echo "--- np=$NP, GPU offloading (cegterg) ---"
    srun -n $NP $EXE -nd 1 < $INPUT
    echo ""
done

echo "Job completed"
