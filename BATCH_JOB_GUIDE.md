## Batch Job Scripts Updated - Summary

**Batch files کو update کیا گیا (Batch scripts have been updated):**

---

## **Files Changed/Created:**

### ✅ **job_gpu.sh** (UPDATED - Main job script)

**Improvements:**
- Better error handling at each stage
- Clearer console output with progress indicators
- Automatic module cleanup
- GPU environment setup (UCX, GPU-aware MPI)
- Explicit compiler path verification
- Better timing measurements
- Pre-run validation (files exist, executable ready)
- Step-by-step build progress

**New Features:**
```bash
#SBATCH --cpus-per-task=1    # CPU binding
#SBATCH --mem=128GB          # Memory allocation
#SBATCH --time=00:30:00      # Longer timeout
```

---

### ✅ **submit_and_monitor.sh** (NEW)

Simple one-command submission with monitoring options:

```bash
chmod +x submit_and_monitor.sh
./submit_and_monitor.sh
```

Outputs job ID and monitoring commands automatically.

---

### ✅ **create_batch_configs.sh** (NEW)

Creates 4 different batch job configurations:

```bash
chmod +x create_batch_configs.sh
./create_batch_configs.sh
```

**Generates:**
1. `job_config_quick.sh` - 5 min, 2 GPU (quick test)
2. `job_config_standard.sh` - 20 min, 4 GPU (full test)
3. `job_config_multi.sh` - 40 min, 8 GPU (multi-node)
4. `job_config_scaling.sh` - 50 min, sequential 2+4+8 GPU

---

## **How to Use - 3 Options:**

### **Option 1: Simple (Recommended for first test)**
```bash
sbatch job_gpu.sh
```
Uses improved main configuration. Includes all optimizations and error checks.

---

### **Option 2: With Monitoring**
```bash
./submit_and_monitor.sh
```
Automatically submits and gives you monitoring commands.

---

### **Option 3: Choose Configuration**
```bash
chmod +x create_batch_configs.sh
./create_batch_configs.sh

# Then pick one:
sbatch job_config_quick.sh      # Fast test
sbatch job_config_standard.sh   # Full test
sbatch job_config_multi.sh      # Multi-GPU test
sbatch job_config_scaling.sh    # Scaling benchmark
```

---

## **Key Improvements in job_gpu.sh:**

| Feature | Before | After |
|---------|--------|-------|
| Error handling | Basic | Per-stage validation |
| Module setup | Simple | Explicit purge + load |
| Compiler check | Yes | With PATH verification |
| Build output | Full log | Tail 10 lines |
| GPU setup | Basic | GPU-aware MPI enabled |
| Timing | Wall-clock | Start/end times |
| Memory | Auto | 128GB explicit |
| Validation | Pre-run | File + executable checks |

---

## **SLURM Settings Used:**

```bash
#SBATCH --partition=dcgp_gpu      # GPU partition on Leonardo
#SBATCH --nodes=1                 # Single node (can change)
#SBATCH --ntasks-per-node=4       # 4 MPI ranks
#SBATCH --gpus-per-node=4         # 4 GPUs (one per rank)
#SBATCH --cpus-per-task=1         # CPU binding
#SBATCH --time=00:30:00           # 30 minutes (adjust as needed)
#SBATCH --mem=128GB               # Memory per node
#SBATCH --account=ICT26_MHPC      # Account (change if different)
```

---

## **Quick Test Sequence:**

```bash
# 1. Build once
./build_openacc.sh

# 2. Submit and monitor
./submit_and_monitor.sh

# 3. When job finishes:
tail -100 output_gpu.out

# 4. Check timing
grep "davidson" output_gpu.out
grep "Total" output_gpu.out
```

---

## **Monitor While Running:**

```bash
# Check job status
squeue -u $USER

# Real-time output
tail -f jobs/cb_openacc_*.out

# GPU activity (on GPU node)
ssh leonardo
nvidia-smi -l 1

# Stop watching
Ctrl+C
```

---

## **If Job Fails - Debug:**

```bash
# Check error file
cat jobs/cb_openacc_*.err

# Check output
cat jobs/cb_openacc_*.out

# Rebuild locally
./build_openacc.sh

# Check CMake log
cat build/cmake.log
cat build/build.log
```

---

## **Job Customization Examples:**

**Change to 2 GPUs only:**
```bash
sed -i 's/--ntasks-per-node=4/--ntasks-per-node=2/' job_gpu.sh
sed -i 's/--gpus-per-node=4/--gpus-per-node=2/' job_gpu.sh
sbatch job_gpu.sh
```

**Increase time limit to 1 hour:**
```bash
sed -i 's/--time=00:30:00/--time=01:00:00/' job_gpu.sh
sbatch job_gpu.sh
```

**Change account:**
```bash
sed -i 's/ICT26_MHPC/YOUR_ACCOUNT/' job_gpu.sh
sbatch job_gpu.sh
```

---

## **Next Steps - کیا کریں:**

1. **Submit first test:**
   ```bash
   sbatch job_gpu.sh
   ```

2. **Monitor progress:**
   ```bash
   squeue -u $USER
   tail -f jobs/cb_openacc_*.out
   ```

3. **When finished, check results:**
   ```bash
   cat output_gpu.out | grep -E "davidson|Total|Time"
   ```

4. **Try different configs:**
   ```bash
   ./create_batch_configs.sh
   sbatch job_config_quick.sh
   ```

---

**اب batch files ready ہیں! جاؤ اور submit کرو!** 🚀
