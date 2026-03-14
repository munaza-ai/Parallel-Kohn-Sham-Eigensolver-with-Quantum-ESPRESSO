# P2.6_KS_25_26

## QE Exercises — Starting Material
This repository contains the starting material for the exercises using the 
Quantum ESPRESSO (QE) environment.
The exercises are centered on the usage of the iterative eigensolver with 
the Davidson algorithm, located in `KS_Solvers/Davidson`

To make the solver work correctly and efficiently — especially to exploit parallelism (MPI or GPU) — 
it is necessary to rely on several QE libraries included in this project.

### QE Libraries Required
• FFTXlib
  * Provides 3D FFT (Fast Fourier Transform) routines.
  * Manages distribution of data and workload over 3D grids.

• LAXLIB
  * Offers multiple parallel linear algebra functionalities:
    * Iterative and direct solvers
    * Parallel matrix–matrix multiplications
    * Distributed matrix management



• UtilXlib: Utility infrastructure used across QE:
  * MPI initialization helpers
  * Error handling
  * Timing and profiling
  * Tracing tools



• DEVMEMLIB: Lightweight library handling offloaded data (e.g., GPU memory management).


### Material for the Exercises — cbToy Directory
The repository also contains the source material used to run the exercises.
This is located in the cbToy directory.
#### cb_lib
Contains the core routines for:

 * Generating periodic potentials for FCC lattices, 
 * reproducing the band structures of several materials (more details are provided in the introductory lectures).
 * A module providing:
   * Global data structures
   * Input reading
   * Wavefunction generation
   * Kinetic‑energy computation



#### cb_operators
Includes example operator implementations that will be passed to the Davidson solver, 
enabling it to perform the iterative diagonalization process
