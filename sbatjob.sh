#!/bin/bash
#SBATCH --job-name=cb_ex4_cpu
#SBATCH --partition=dcgp_usr_prod
##SBATCH --qos=dcgp_qos_dbg
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH --time=00:30:00
#SBATCH --account=ICT26_MHPC
#SBATCH --output=jobs/cb_ex4_%j.out
#SBATCH --error=jobs/cb_ex4_%j.err

module purge
module load intel-oneapi-mkl
module load intel-oneapi-compilers
module load intel-oneapi-mpi

mkdir -p jobs

cd $HOME/P2.6_KS_25_26

# Build karo
#rm -rf build
#mkdir build
#cd build

#cmake -DQE_ENABLE_CUDA=on \
#      -DQE_ENABLE_OPENMP=off \
#      -DCMAKE_C_COMPILER=nvc \
#      -DCMAKE_Fortran_COMPILER=nvfortran \
#      -DCMAKE_BUILD_TYPE=Release \
#      ..

#make -j$(nproc)

#cd ..

EXE=$HOME/P2.6_KS_25_26/build/bin/cb_davidson_main.x
INPUT=$HOME/P2.6_KS_25_26/examples/si4.in

# Check karo executable bana ya nahi
if [ ! -f "$EXE" ]; then
    echo "ERROR: Build failed! Executable not found: $EXE"
    exit 1
fi

echo "Build successful!"
echo ""
echo "========================================"
echo "EXERCISE 4"
echo "========================================"

for NK in 1 2 4 8; do
    echo ""
    echo "--- nk=$NP, npool (cegterg) ---"
    srun -n 32 $EXE -nk $NK  < $INPUT
    echo ""
done

echo "Job completed"
