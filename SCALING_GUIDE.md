## GPU Scaling Optimization Guide

**Scaling के लیے یہ کریں (For better scaling):**

### **1. OpenACC Loop Optimization - Collapse clause**

**Problem**: Sequential loops not parallelized
**Solution**: Use `collapse()` directive

```fortran
! BEFORE (slow):
!$acc parallel loop present(psi, fft_array)
do ig = 1, npw
  fft_array(dfft%nl(igk(ig))) = psi(ig, ibnd)
end do

! AFTER (fast - collapse nested loops):
!$acc parallel loop collapse(2) present(psi, hpsi, ekin)
do ibnd = 1, nbnd
  do ig = 1, npw
    hpsi(ig, ibnd) = ekin(ig) * psi(ig, ibnd) + ...
  end do
end do
```

---

### **2. Vector Length Optimization**

```fortran
! BEFORE:
!$acc parallel

! AFTER (1024 typical for A100 GPU):
!$acc parallel num_gangs(128) num_workers(8) vector_length(32)
```

---

### **3. Reduction Optimization - cb_g_psi.f90**

```fortran
! BEFORE:
!$acc parallel loop
do ivec = 1, nvec
  !$acc loop vector
  do ig = 1, npw
    psi(ig, ivec) = psi(ig, ivec) / denm
  end do
end do

! AFTER (unified loop):
!$acc parallel loop collapse(2) vector_length(32)
do ivec = 1, nvec
  do ig = 1, npw
    x = (ekin(ig) - eig(ivec))
    denm = 0.5_dp*(1.d0+x+sqrt(1.d0+(x-1)*(x-1.d0)))
    psi(ig, ivec) = psi(ig, ivec) / denm
  end do
end do
```

---

### **4. Data Persistence - Cache more arrays**

```fortran
! BEFORE - only evc, eig mapped:
!$acc enter data create(evc, eig)

! AFTER - also map working arrays for full GPU computation:
!$acc enter data create(evc, eig, igk, vloc, ekin, fft_array)
```

---

### **5. Gang Parallelism - Better work distribution**

```fortran
! BEFORE:
!$acc parallel loop

! AFTER (gang = machine scale, worker = warp/wave):
!$acc parallel loop gang(static:1) worker(dim:2) vector
do i = 1, n
  ! Work here
end do
```

---

## **Performance Metrics - کیسے measure کریں:**

```bash
# 1. Check GPU utilization (0-100%):
nvidia-smi -l 1

# 2. Profile with NVHPC:
nvfortran -acc -Minfo=accel -Minfo=intensity myfile.f90

# 3. Runtime performance (add this to code):
call system_clock(count_start)
! GPU work here
call system_clock(count_end)
print *, "GPU time: ", (count_end - count_start) / real(count_rate)
```

---

## **Scaling Checklist - یہ تمام کریں:**

- [ ] Add `collapse(2)` to nested loops
- [ ] Map ALL working arrays to GPU (not just evc, eig)
- [ ] Use`vector_length(32)` for optimal warp packing
- [ ] Minimize host↔device transfers (avoid `!$acc update` in loops)
- [ ] Test with larger k-point grids (nks=8, 16, 32)
- [ ] Monitor with `nvidia-smi` during run
- [ ] Compare timing before/after optimizations

---

## **Multi-GPU Scaling - Multiple GPUs کے لیے:**

```bash
# Run with GPU-aware MPI (device-to-device comm):
export CUDA_AWARE_MPI=1
mpirun -np 8 ./executable  # Use all 8 GPUs on 2 nodes
```

---

## **Simple Scaling Test - جلدی test کرنے کے لیے:**

```bash
# Small system (fast):
sbatch -n 2 job_gpu.sh    # 2 GPUs, 2 MPI ranks

# Medium system (5 min):
sbatch -n 4 job_gpu.sh    # 4 GPUs, 4 MPI ranks

# Large system (15 min):
sbatch -n 8 job_gpu.sh    # Multi-node, full scale
```

Track timing in `output_gpu.out` under `Timing summary` section.

**Goal**: Linear scaling: 4x GPUs = ~4x speedup
