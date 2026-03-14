#!/bin/bash
#SBATCH --account=ict26_mhpc
#SBATCH --partition=dcgp_usr_prod
#SBATCH --time=00:30:00
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks-per-node=32
#SBATCH --cpus-per-task=1
#SBATCH --qos=dcgp_qos_dbg
#SBATCH --job-name=cb_ex3_cpu
#SBATCH --output=jobs/cb_ex3_cpu_%j.out
#SBATCH --error=jobs/cb_ex3_cpu_%j.err

set -e

module purge
module load intel-oneapi-mkl
module load nvhpc
module load hpcx-mpi

SRCDIR=$HOME/P2.6_KS_25_26
EXE=$SRCDIR/build_cpu/bin/cb_davidson_main.x
INPUT=$SRCDIR/examples/si4.in
NP=32

if [[ ! -x "$EXE" ]]; then
    echo "CPU executable not found: $EXE"
    echo "Build it first, for example in $SRCDIR/build_cpu"
    exit 1
fi

run_case() {
    local nd=$1
    local nb=$2

    echo ""
    echo "--- np=$NP, nd=$nd, nb=$nb ---"
    srun -n "$NP" "$EXE" -nd "$nd" -nb "$nb" < "$INPUT"
}

echo ""
echo "========================================"
echo "EXERCISE 3: CPU ScaLAPACK scaling"
echo "========================================"
echo "Executable: $EXE"
echo "Input:      $INPUT"
echo "MPI ranks:  $NP"

echo ""
echo "========================================"
echo "BLOCK 1: fixed nd=1, vary nb"
echo "========================================"
for NB in 1 2 4 8; do
    run_case 1 "$NB"
done

echo ""
echo "========================================"
echo "BLOCK 2: fixed nb=1, vary nd"
echo "========================================"
for ND in 1 4 9 16; do
    run_case "$ND" 1
done

echo ""
echo "========================================"
echo "BLOCK 3: vary nd and nb together"
echo "========================================"
for ND in 4 9 16; do
    for NB in 2 4 8; do
        run_case "$ND" "$NB"
    done
done