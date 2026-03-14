 I'll create a comprehensive README.md file for your repository that includes both theory and results. Let me write this for you:

---

```markdown
# Parallel Kohn-Sham Eigensolver with Quantum ESPRESSO

High-performance parallel eigensolver for Kohn-Sham Density Functional Theory (DFT) using Quantum ESPRESSO infrastructure. Features multi-level MPI parallelism, ScaLAPACK distributed diagonalization, and OpenACC GPU offloading.

---

## Table of Contents
1. [Theoretical Background](#theoretical-background)
   - [Density Functional Theory](#density-functional-theory)
   - [Kohn-Sham Equations](#kohn-sham-equations)
   - [Iterative Diagonalization](#iterative-diagonalization)
2. [Parallelization Strategy](#parallelization-strategy)
   - [MPI Parallelism](#mpi-parallelism)
   - [ScaLAPACK Integration](#scalapack-integration)
   - [GPU Offloading with OpenACC](#gpu-offloading-with-openacc)
3. [Implementation Details](#implementation-details)
4. [Performance Results](#performance-results)
5. [Build Instructions](#build-instructions)
6. [Usage](#usage)

---

## Theoretical Background

### Density Functional Theory

Density Functional Theory (DFT) is a quantum mechanical framework for studying the electronic structure of many-body systems. Based on the **Hohenberg-Kohn Theorems (1964)**:

> **Theorem I**: The external potential is uniquely determined by the ground-state electron density n(r).

> **Theorem II**: The total energy functional E[n] is minimized by the exact ground-state density.

**Key Insight**: The 3N-dimensional wavefunction Ψ(r₁,…,rN) is replaced by the 3-dimensional density n(r) — a dramatic computational reduction from exponential to polynomial scaling.

The total energy functional is:

$$E[n] = T_s[n] + \int V_{ext}(r)n(r)dr + E_{Hartree}[n] + E_{xc}[n]$$

where:
- $T_s[n]$ — non-interacting kinetic energy
- $E_{Hartree}$ — classical electron repulsion
- $E_{xc}[n]$ — exchange-correlation energy (encapsulates all many-body effects)

### Kohn-Sham Equations

The Kohn-Sham approach maps the interacting many-electron system onto a non-interacting system with an effective potential. The resulting self-consistent field (SCF) equations:

$$\left[-\frac{1}{2}\nabla^2 + V_{eff}(r)\right] \psi_i(r) = \varepsilon_i \psi_i(r)$$

**Effective Potential**:
$$V_{eff}(r) = V_{ext}(r) + V_{Hartree}[n] + V_{xc}[n]$$

**Electron Density**:
$$n(r) = \sum_i f_i |\psi_i(r)|^2$$

**SCF Iteration Cycle**:
```
guess n(r) → build Veff → solve eigenvalue problem → update n(r) → repeat until convergence
```

**Computational Challenge**: The diagonalization step scales as O(N³), motivating parallel algorithms like ScaLAPACK for large systems.

### Iterative Diagonalization

This project implements the **Davidson algorithm**, an iterative method for finding a few extreme eigenpairs of large sparse matrices:

1. Start with initial guess for eigenvectors
2. Apply Hamiltonian: H|ψ⟩
3. Compute residual: r = H|ψ⟩ - E|ψ⟩
4. Expand subspace with preconditioned residual
5. Diagonalize in subspace
6. Repeat until convergence

The Davidson method is particularly efficient for plane-wave DFT where only occupied states are needed.

---

## Parallelization Strategy

### MPI Parallelism

Three levels of MPI parallelization are implemented:

| Level | Scope | Communicator |
|-------|-------|--------------|
| **K-point Pools** | Distribute k-points across pools | `intra_pool_comm` / `inter_pool_comm` |
| **Band Groups** | Distribute bands/R-G space | `intra_bgrp_comm` / `inter_bgrp_comm` |
| **Diagonalization** | ScaLAPACK 2D processor grid | `ortho_parent_comm` |

**Command-line control**:
```bash
./app.x -nk=<pools> -nb=<band_groups> -nd=<diag_ranks>
```

### ScaLAPACK Integration

For large processor counts, ScaLAPACK provides distributed memory parallel diagonalization:

| Feature | Benefit |
|---------|---------|
| **Parallel PDSYEVD** | All processors participate simultaneously |
| **2D Block-Cyclic Layout** | Superior load balancing and cache utilization |
| **BLACS Communication** | Optimized MPI layer minimizes latency |
| **Memory Scaling (1/NP)** | Distributed matrices remove memory bottleneck |

**Crossover Point**: ScaLAPACK benefits emerge at NP ≥ 8, with optimal gains at NP = 16–32.

### GPU Offloading with OpenACC

GPU acceleration is achieved through OpenACC directives:

```
┌─────────────────────────────────────┐
│  Host (CPU)                         │
│  - Initialization                   │
│  - I/O and data management          │
│  - Update device: evc, eig, igk     │
└─────────────┬───────────────────────┘
              │ acc update device
              ▼
┌─────────────────────────────────────┐
│  Device (GPU)                       │
│  - FFT operations (FFTXlib)         │
│  - Linear algebra (LAXlib)          │
│  - Davidson iteration (CEGTERG)     │
│  - Hamiltonian application (Hψ)     │
└─────────────┬───────────────────────┘
              │ acc update self
              ▼
┌─────────────────────────────────────┐
│  Host (CPU)                         │
│  - Eigenvalue output                │
│  - Convergence check                │
└─────────────────────────────────────┘
```

**Key arrays mapped to GPU**: `evc` (wavefunctions), `eig` (eigenvalues), `igk` (G-vector mapping), `vloc` (local potential), `fft_array` (FFT workspace)

---

## Implementation Details

### Project Structure

```
.
├── cbToy/                    # Main miniapp directory
│   ├── cb_lib/              # Core library (potentials, I/O, utilities)
│   └── cb_operators/        # Hamiltonian operators (Hψ, Sψ, Gψ)
├── KS_Solvers/              # Davidson iterative solver
│   └── Davidson/
├── FFTXlib/                 # 3D FFT with MPI distribution
├── LAXlib/                  # Parallel linear algebra
├── UtilXlib/                # MPI helpers, timing, error handling
├── DEVMEMLIB/               # GPU memory management
├── cmake/                   # Build configuration
└── examples/                # Input files for testing
```

### Key Routines

| Routine | Purpose | Parallelization |
|---------|---------|-----------------|
| `mp_startup()` | Initialize MPI communicators | MPI |
| `mp_start_bands()` | Create band group communicators | MPI |
| `laxlib_start()` | Setup ScaLAPACK/BLACS | MPI + ScaLAPACK |
| `cegterg()` | Serial Davidson solver | CPU |
| `pcegterg()` | Parallel Davidson solver | ScaLAPACK |
| `my_h_psi()` | Apply Hamiltonian | OpenACC GPU |
| `set_cb_potential()` | Build crystal potential | Host + device update |

---

## Performance Results

### Benchmark Configuration

| Parameter | Value |
|-----------|-------|
| Code | PWscf (Quantum ESPRESSO) |
| K-point | Γ (0.0000 0.0000 0.0000) |
| Total bands | 512 |
| G-vectors (NP=2) | 26,437 |
| Processor range | 2 – 32 |
| FFT library | FFTW + internal FFTs |

### Strong Scaling Results

#### Standard Diagonalization

| NP | Time (s) | Speedup | Efficiency |
|----|----------|---------|------------|
| 2 | 32.07 | 1.00× | 100% |
| 4 | 11.39 | 2.81× | 70.3% |
| 8 | 10.69 | 3.00× | 37.5% |
| 16 | 12.30 | 2.61× | 16.3% |
| 32 | 12.30 | 2.61× | 8.2% |

**Analysis**: 
- Linear scaling up to NP=4 (efficiency >70%)
- Optimal range: NP=4–8 (efficiency >30%)
- Poor scaling beyond NP=16 due to Amdahl's Law limitations

#### ScaLAPACK vs Standard Comparison

| NP | Standard (s) | ScaLAPACK (s) | Speedup |
|----|--------------|---------------|---------|
| 4 | ~11.4 | ~12.6 | 0.90× (overhead) |
| 8 | ~10.7 | ~10.3 | 1.04× |
| 16 | ~12.3 | ~6.2 | **1.97×** |
| 32 | ~12.3 | ~6.0 | **2.05×** |

**Key Findings**:
- **Crossover at NP=8**: ScaLAPACK benefits begin
- **Maximum speedup**: 2.05× at NP=32 (5.34× cumulative vs NP=2 baseline)
- **Maintains efficiency**: 33% at NP=32 vs 8% for standard

### Computational Kernel Breakdown (NP=32)

| Component | Fraction |
|-----------|----------|
| **Davidson diagonalization** | **94.8%** |
| FFTW (external) | ~3% |
| Internal FFTs | ~2% |

**Critical Insight**: Davidson dominates runtime — optimization here has maximum impact.

### Amdahl's Law Analysis

Estimated serial fraction at different scales:

| NP | Serial Fraction | Interpretation |
|----|-----------------|----------------|
| 4 | 38.3% | 62% parallelizable |
| 8 | 66.7% | Communication overhead appears |
| 16 | 47.7% | Load imbalance |
| 32 | 34.2% | ScaLAPACK improves parallel portion |

High serial fraction at NP=8 suggests **communication overhead** rather than inherently serial algorithm.

### Summary Statistics

| Metric | Value |
|--------|-------|
| Max Speedup (Standard) | 2.61× |
| Max Speedup (ScaLAPACK) | 5.34× |
| Davidson Fraction | 94.8% |
| Optimal Processors | NP=16 (with ScaLAPACK) |

---

## Build Instructions

### Prerequisites

- MPI compiler (Intel MPI, OpenMPI, or HPC-X)
- Fortran compiler (ifx, gfortran, or nvfortran)
- ScaLAPACK library (Intel MKL or Netlib)
- (Optional) NVIDIA HPC SDK for OpenACC

### Standard Build (MPI + ScaLAPACK)

```bash
# Load modules (example for Intel)
module load intel-oneapi-compilers
module load intel-oneapi-mpi
module load intel-oneapi-mkl

# Configure
cmake -DQE_ENABLE_MPI=ON \
      -DQE_ENABLE_SCALAPACK=ON \
      -DQE_FFTW_VENDOR=auto \
      -DCMAKE_BUILD_TYPE=Release \
      -B build

# Build
cmake --build build -j$(nproc)
```

### GPU Build (OpenACC + CUDA)

```bash
# Load modules (example for NVIDIA)
module load nvhpc
module load hpcx-mpi
module load intel-oneapi-mkl  # Load BEFORE nvhpc

# Configure
cmake -DQE_ENABLE_CUDA=ON \
      -DQE_ENABLE_OPENMP=OFF \
      -DCMAKE_C_COMPILER=nvc \
      -DCMAKE_Fortran_COMPILER=nvfortran \
      -DCMAKE_BUILD_TYPE=Release \
      -B build

# Build
cmake --build build -j$(nproc)
```

---

## Usage

### Basic Run

```bash
# Standard diagonalization
mpirun -np 4 ./cbToy/app.x -in examples/input.in

# With ScaLAPACK (16 MPI ranks, 4 diag ranks)
mpirun -np 16 ./cbToy/app.x -nd=4 -in examples/input.in

# K-point parallelism (4 pools)
mpirun -np 16 ./cbToy/app.x -nk=4 -in examples/input.in

# Combined (2 pools, 2 band groups, 4 diag ranks)
mpirun -np 16 ./cbToy/app.x -nk=2 -nb=2 -nd=4 -in examples/input.in
```

### GPU Run

```bash
# GPU offloading with MPI
mpirun -np 4 ./cbToy/app.x -in examples/input.in
# (GPU assignment handled automatically via OpenACC)
```

### Input File Format

```fortran
&CONTROL
  calculation = 'scf'
  prefix = 'si_fcc'
/

&SYSTEM
  ibrav = 2          ! FCC lattice
  celldm(1) = 10.26  ! Lattice constant (Bohr)
  nat = 2
  ntyp = 1
  ecutwfc = 20.0     ! Plane-wave cutoff (Ry)
  nbnd = 512         ! Number of bands
/

&ELECTRONS
  diagonalization = 'davidson'
  conv_thr = 1.0d-8
/

ATOMIC_SPECIES
Si  28.086  Si.pz-vbc.UPF

ATOMIC_POSITIONS (alat)
Si 0.00 0.00 0.00
Si 0.25 0.25 0.25

K_POINTS (automatic)
4 4 4 0 0 0
```

---

## References

- [Quantum ESPRESSO](https://www.quantum-espresso.org/)
- Hohenberg, P. & Kohn, W. (1964). *Inhomogeneous Electron Gas*. Phys. Rev. 136, B864.
- Kohn, W. & Sham, L.J. (1965). *Self-Consistent Equations Including Exchange and Correlation Effects*. Phys. Rev. 140, A1133.
- Davidson, E.R. (1975). *The Iterative Calculation of a Few of the Lowest Eigenvalues and Corresponding Eigenvectors of Large Real-Symmetric Matrices*. J. Comput. Phys. 17, 87.


