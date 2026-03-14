#!/usr/bin/env python3
"""
plot_cpu_vs_gpu_37444496.py
Side-by-side bar chart comparing CPU vs GPU timings from cpu_vs_gpu_37444496.out
Input: si4.in — Si, ncell=4, ecutwfc=8.0 Ry, 1 k-point
"""

import os
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.ticker as mticker
import numpy as np

# ---------------------------------------------------------------------------
# Data from cpu_vs_gpu_37444496.out
# si4.in: crystal_name='Si', ecutwfc=8.0, ncell=4, david=3, 1 k-point
# ---------------------------------------------------------------------------

categories = ["davidson", "fftw", "g_psi"]

# np = 1
cpu_np1  = [37.77,  8.86, 0.12]
gpu_np1  = [ 2.34,  0.94, 0.00]

# np = 4
cpu_np4  = [18.87,  2.26, 0.03]
gpu_np4  = [32.73, 15.85, 0.01]

# ---------------------------------------------------------------------------
# Figure: 2 subplots side by side (np=1, np=4)
# ---------------------------------------------------------------------------

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 5.5))
fig.suptitle("CPU vs GPU — Si, ncell=4, ecutwfc = 8.0 Ry, 1 k-point",
             fontsize=13, fontweight="bold")

BAR_WIDTH = 0.35
COLORS = {"cpu": "#2196F3", "gpu": "#4CAF50"}


def add_bars(ax, cpu_vals, gpu_vals, title):
    x = np.arange(len(categories))
    bars_c = ax.bar(x - BAR_WIDTH / 2, cpu_vals, BAR_WIDTH,
                    label="CPU", color=COLORS["cpu"], zorder=3)
    bars_g = ax.bar(x + BAR_WIDTH / 2, gpu_vals, BAR_WIDTH,
                    label="GPU", color=COLORS["gpu"], zorder=3)

    ymax = max(max(cpu_vals), max(gpu_vals))
    for bars in [bars_c, bars_g]:
        for bar in bars:
            h = bar.get_height()
            label = f"{h:.2f}s" if h < 1 else f"{h:.1f}s"
            ax.text(bar.get_x() + bar.get_width() / 2,
                    h + ymax * 0.02,
                    label, ha="center", va="bottom", fontsize=9, zorder=4)

    ax.set_xticks(x)
    ax.set_xticklabels(categories, fontsize=10)
    ax.set_ylabel("Wall time (s)", fontsize=10)
    ax.set_title(title, fontsize=11, fontweight="bold")
    ax.yaxis.set_minor_locator(mticker.AutoMinorLocator())
    ax.grid(axis="y", which="major", linestyle="--", alpha=0.5, zorder=0)
    ax.legend(fontsize=9)
    ax.set_xlim(-0.6, len(x) - 0.4)
    ax.set_ylim(0, ymax * 1.3)


add_bars(ax1, cpu_np1, gpu_np1, "np = 1  (1 MPI rank)")
add_bars(ax2, cpu_np4, gpu_np4, "np = 4  (4 MPI ranks)")

# Add speedup annotations for np=1
for i, (c, g) in enumerate(zip(cpu_np1, gpu_np1)):
    if g > 0:
        speedup = c / g
        ax1.text(i, max(c, g) * 1.15 + max(cpu_np1) * 0.05,
                 f"{speedup:.1f}x", ha="center", fontsize=9,
                 color="red", fontweight="bold")

fig.tight_layout()
outfile = os.path.join(os.path.dirname(os.path.abspath(__file__)),
                       "cpu_vs_gpu_37444496.png")
fig.savefig(outfile, dpi=160)
print(f"Saved: {outfile}")
plt.close(fig)
