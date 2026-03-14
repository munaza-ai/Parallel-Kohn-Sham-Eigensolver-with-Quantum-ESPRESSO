!
! Main cbToy solver davidson method
! =================================
! This is the MAIN PROGRAM for the Crystal Basis (CB) miniapp
! It calculates electron energy levels (bands) using the Davidson method
! This is the SERIAL version (Exercise 1) - runs on 1 processor only
!

program cb_davidson_main
  ! -------------------------------------------------------------------------
  ! MODULE IMPORTS
  ! -------------------------------------------------------------------------
  use cb_module
  ! 'cb_module' contains:
  !   - Global variables (nbnd, npwx, npw, nks, etc.)
  !   - Physical constants
  !   - System configuration (crystal structure, cutoffs)
  !   - This is the "data backbone" of the program
  
  implicit none
  ! 'implicit none' means: ALL variables must be declared before use
  ! This prevents typos and bugs (e.g., 'nbannd' instead of 'nband')
  
  ! -------------------------------------------------------------------------
  ! EXTERNAL PROCEDURES (Functions/Subroutines defined elsewhere)
  ! -------------------------------------------------------------------------
  
  ! TIMING PROCEDURES - Measure how fast code runs
  external :: init_clocks, start_clock, stop_clock, print_clock
  ! init_clocks  = Start the timing system
  ! start_clock  = Begin timing a specific section
  ! stop_clock   = End timing a specific section  
  ! print_clock  = Display timing results
  
  ! OPERATOR INTERFACES - Physics calculations
  external :: my_h_psi, cb_s_psi, cb_g_psi
  ! my_h_psi = Apply Hamiltonian operator (H|ψ⟩) - calculates energy
  ! cb_s_psi = Apply overlap operator (S|ψ⟩) - checks orthogonality
  ! cb_g_psi = Apply preconditioner (G|ψ⟩) - speeds up convergence
  
  ! -------------------------------------------------------------------------
  ! VARIABLE DECLARATIONS
  ! -------------------------------------------------------------------------
  
  ! PHYSICS CONTROL
  logical :: gamma_only
  ! .true.  = Use REAL numbers (only for special k-point Γ, faster)
  ! .false. = Use COMPLEX numbers (general case, needed for any k-point)
  ! We use .false. because we calculate arbitrary k-points, not just Γ
  
  integer :: homo_band
  ! HOMO = Highest Occupied Molecular Orbital
  ! This stores which band is the last filled one (for reference energy)
  
  ! ITERATION COUNTERS
  integer :: ik, notcnv, dav_iter, nhpsi
  ! ik       = Index for k-point loop (ik = 1, 2, 3, ..., nks)
  ! notcnv   = Number of bands NOT converged yet (0 = all done)
  ! dav_iter = How many Davidson iterations were performed
  ! nhpsi    = Number of H|ψ⟩ operations (matrix-vector multiplications)
  
  ! RESULTS STORAGE
  real(8), allocatable :: eig(:)
  ! eig = EIGENVALUES = Energy levels of electrons
  ! allocatable = Memory allocated at runtime (size = nbnd)
  ! real(8) = Double precision real numbers
  
  complex(8), allocatable :: evc(:,:)
  ! evc = EIGENVECTORS = Wavefunctions (electron probability distributions)
  ! Dimension: evc(npwx, nbnd)
  !   npwx  = Maximum number of plane waves (basis size)
  !   nbnd  = Number of bands (energy levels) to calculate
  ! complex(8) = Double precision complex numbers (real + imaginary parts)
  
  real(8) :: ref_energy
  ! Reference energy level (usually set to HOMO energy)
  ! Used to print relative energies (e.g., "0.5 eV above HOMO")
  
  ! -------------------------------------------------------------------------
  ! PROGRAM START - INITIALIZATION
  ! -------------------------------------------------------------------------
  
  ! Initialize internal timing system
  ! .true. = Enable detailed timing measurements
  call init_clocks(.true.)
  
  ! -------------------------------------------------------------------------
  ! SETUP PHYSICAL SYSTEM
  ! -------------------------------------------------------------------------
  
  ! Set gamma_only flag
  gamma_only = .false.
  ! We use complex wavefunctions because we handle general k-points
  ! (gamma_only=.true. would only work for k=0, the Γ point)
  
  ! Read input parameters from file
  call input(gamma_only)
  ! This reads the .in file and sets:
  !   - Crystal structure (FCC, BCC, etc.)
  !   - Number of atoms (ncell)
  !   - Energy cutoff (ecut)
  !   - Number of k-points (nks)
  !   - Number of bands to calculate (nbnd)
  
  ! Generate plane-wave basis set
  call ggen(gamma_only)
  ! Creates the mathematical grid for calculations:
  !   - Sets up G-vectors (reciprocal lattice vectors)
  !   - Calculates npw (number of plane waves for this k-point)
  !   - Calculates npwx (maximum npw across all k-points)
  ! Think of this as creating the "coordinate system" for the problem
  
  ! Construct the local potential V_loc(r)
  call set_cb_potential()
  ! Creates the electron potential energy landscape:
  !   - Attractive wells near atomic nuclei
  !   - Repulsive regions between atoms
  ! This is the "V" in the Hamiltonian H = T + V
  
  ! -------------------------------------------------------------------------
  ! MEMORY ALLOCATION
  ! -------------------------------------------------------------------------
  
  ! Allocate array for eigenvalues (energy levels)
  allocate(eig(nbnd))
  ! nbnd = number of bands to calculate (from input)
  ! eig(1) = lowest energy, eig(nbnd) = highest energy
  
  ! Allocate matrix for eigenvectors (wavefunctions)
  allocate(evc(npwx, nbnd))
  ! npwx rows = number of plane wave coefficients
  ! nbnd columns = one wavefunction for each band
  ! evc(i,j) = i-th coefficient of j-th wavefunction
  
  ! -------------------------------------------------------------------------
  ! MAIN CALCULATION LOOP OVER K-POINTS
  ! -------------------------------------------------------------------------
  
  ref_energy = 0.0
  ! Initialize reference energy to zero (will set properly at first k-point)
  
  ! Loop over all k-points in the system
  ! nks = number of k-points (from input file)
  do ik = 1, nks
     ! ik = current k-point index
     
     current_k = ik
     ! Store current k-point in global variable (used by other routines)
     
     ! ---------------------------------------------------------------------
     ! SETUP CURRENT K-POINT
     ! ---------------------------------------------------------------------
     
     ! Initialize reciprocal-space operators for this k-point
     call init_k()
     ! Sets up the kinetic energy operator T = (ℏ²/2m)|k+G|²
     ! Now the Hamiltonian is complete: H = T + V_loc
     
     ! ---------------------------------------------------------------------
     ! INITIALIZE WAVEFUNCTIONS
     ! ---------------------------------------------------------------------
     
     ! Create random initial guess for wavefunctions
     call init_random_wfcs(npw, npwx, nbnd, evc)
     ! Davidson method needs a starting guess
     ! Random avoids bias and linear dependence
     ! npw = actual basis size, npwx = maximum size, nbnd = num bands
     
     ! Initialize eigenvalues to zero
     eig = 0.0
     ! Will be filled by Davidson solver
     
     ! ---------------------------------------------------------------------
     ! DAVIDSON DIAGONALIZATION (THE MAIN SOLVER)
     ! ---------------------------------------------------------------------
     
     ! Start timing the Davidson solver
     call start_clock('davidson')
     
     ! Call the complex Davidson eigensolver
     call cegterg(my_h_psi, cb_s_psi, use_overlap, cb_g_psi, &
                  npw, npwx, nbnd, nbndx, 1, &
                  evc, ethr, eig, btype, notcnv, .false., dav_iter, nhpsi)
     
     ! ARGUMENTS EXPLAINED:
     ! my_h_psi     = Function to apply Hamiltonian H|ψ⟩
     ! cb_s_psi     = Function to apply overlap S|ψ⟩  
     ! use_overlap  = Logical: do we use S? (from cb_module)
     ! cb_g_psi     = Function to apply preconditioner G|ψ⟩
     ! npw          = Number of plane waves (basis size)
     ! npwx         = Maximum basis size (for allocation)
     ! nbnd         = Number of bands to calculate
     ! nbndx        = Maximum number of bands (with buffer)
     ! 1            = Number of spin components (1 = no spin)
     ! evc          = Input/Output: wavefunctions (random in, converged out)
     ! ethr         = Convergence threshold (energy tolerance)
     ! eig          = Output: eigenvalues (energies)
     ! btype        = Band types (occupied vs empty, from cb_module)
     ! notcnv       = Output: number of unconverged bands (0 = success)
     ! .false.      = Don't restart from previous calculation
     ! dav_iter     = Output: number of iterations performed
     ! nhpsi        = Output: number of H|ψ⟩ operations done
     
     ! Stop timing the Davidson solver
     call stop_clock('davidson')
     
     ! ---------------------------------------------------------------------
     ! SET REFERENCE ENERGY (Only at first k-point)
     ! ---------------------------------------------------------------------
     
     if (ik == 1 .and. energy_shift) then
        ! For first k-point, calculate reference energy
        ! This is the HOMO (highest occupied molecular orbital) energy
        
        homo_band = min(4 * ncell**3, nbnd)
        ! 4 * ncell³ = number of valence electrons in FCC crystal
        ! min(..., nbnd) = don't exceed bands we calculated
        
        ref_energy = eig(homo_band)
        ! Set reference to HOMO energy
        ! All other energies printed relative to this
     end if
     
     ! ---------------------------------------------------------------------
     ! SAVE RESULTS
     ! ---------------------------------------------------------------------
     
     ! Write energy bands to output file
     call write_bands(eig, ref_energy)
     ! Creates output with energies relative to ref_energy
     
  end do
  ! End of k-point loop
  
  ! -------------------------------------------------------------------------
  ! PRINT TIMING SUMMARY
  ! -------------------------------------------------------------------------
  
  write(stdout, '("Timing summary:")')
  ! Print header for timing report
  
  ! Print time spent in each major component
  call print_clock('davidson')  ! Total Davidson solver time
  call print_clock('h_psi')     ! Time applying Hamiltonian H|ψ⟩
  call print_clock('s_psi')     ! Time applying overlap S|ψ⟩
  call print_clock('g_psi')     ! Time applying preconditioner G|ψ⟩
  call print_clock('fftw')      ! Time in FFT (forward transforms)
  call print_clock('ffts')      ! Time in FFT (backward transforms)
  
  ! This helps identify bottlenecks:
  ! If 'h_psi' is slow → Hamiltonian application needs optimization
  ! If 'fftw' is slow  → FFT operations need optimization
  
  ! -------------------------------------------------------------------------
  ! CLEANUP
  ! -------------------------------------------------------------------------
  
  ! Free allocated memory
  deallocate(eig, evc)
  ! Important to prevent memory leaks
  
  ! -------------------------------------------------------------------------
  ! PROGRAM END
  ! -------------------------------------------------------------------------
  
end program cb_davidson_main
