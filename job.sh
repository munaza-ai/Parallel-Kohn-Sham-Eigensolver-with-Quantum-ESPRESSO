#!/bin/bash
#SBATCH --job-name=qe_run
#SBATCH --partition=dcgp_usr_prod
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --time=00:05:00
#SBATCH --account=ICT26_MHPC
#SBATCH --output=jobs/qe_t8_%j.out
#SBATCH --error=jobs/qe_t8_%j.err

# Load modules
module purge
module load intel-oneapi-compilers
module load intel-oneapi-mpi/2021.12.1
module load intel-oneapi-mkl/2024.0.0--intel-oneapi-mpi--2021.12.1
module load cmake

# Run
mpirun -np $SLURM_NTASKS ./build/bin/cb_davidson_main.x -i ./examples/si4.in
 > output.out
