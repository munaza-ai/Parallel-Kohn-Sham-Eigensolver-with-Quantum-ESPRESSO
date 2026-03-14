#!/bin/bash
# Build script for OpenACC GPU offloading
# Does NOT submit to queue - just builds locally

# Load modules for OpenACC GPU offloading
module purge
module load nvhpc
module load hpcx-mpi
module load intel-oneapi-mkl

echo "================================"
echo "Building cbToy with OpenACC"
echo "================================"

# Create build directory
mkdir -p build
cd build

# Configure with OpenACC enabled
echo "Configuring with CMake..."
cmake -DQE_ENABLE_CUDA=on \
       -DQE_ENABLE_OPENMP=off \
       -DCMAKE_C_COMPILER=nvc \
       -DCMAKE_Fortran_COMPILER=nvfortran \
       -DCMAKE_BUILD_TYPE=Release \
       ..

# Build
echo "Building..."
make -j$(nproc)

if [ $? -eq 0 ]; then
    echo "================================"
    echo "Build successful!"
    echo "Output: $(pwd)/bin/cb_davidson_main.x"
    echo "================================"
else
    echo "Build failed!"
    exit 1
fi
