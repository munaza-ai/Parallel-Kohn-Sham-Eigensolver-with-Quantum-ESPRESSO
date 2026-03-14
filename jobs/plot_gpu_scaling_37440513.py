#!/usr/bin/env python3
"""
plot_gpu_scaling_37440513.py
Bar-chart for Exercise 5: GPU offloading scaling (si4, ecutwfc=60.0)
Data source: cb_scaling_37440513.out
"""

import os
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.ticker as mticker
import numpy as np

# ---------------------------------------------------------------------------
# Data extracted from cb_scaling_37440513.out
# np = number of MPI ranks (GPUs), nd=1, cegterg
# ---------------------------------------------------------------------------

x_labels = ["1", "2", "4", "8", "16", "32"]
x_vals   = [1,    2,   4,   8,   16,   32]

davidson_wall = [6.86, 24.84, 39.01, 73.54, 160.02, 355.81]
fftw_wall     = [3.34, 13.46, 19.51, 36.35,  78.76, 175.98]
fftw_gpu      = [3.27, 10.28, 12.71, 22.63,  49.58, 114.39]
g_psi_wall    = [0.01,  0.02,  0.02,  0.07,   0.11,   0.20]

# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

BAR_WIDTH = 0.22
COLORS = {
    "davidson": "#2196F3",
    "fftw_wall": "#FF9800",
    "fftw_gpu":  "#4CAF50",
    "g_psi":     "#9C27B0",
}


def ideal_speedup(t_ref, xv):
    return [t_ref / (x / xv[0]) for x in xv]


# ---------------------------------------------------------------------------
# Figure 1: grouped bar chart — all timers
# ---------------------------------------------------------------------------

fig, ax = plt.subplots(figsize=(10, 5.5))
x = np.arange(len(x_vals))

bars_d = ax.bar(x - 1.5 * BAR_WIDTH, davidson_wall, BAR_WIDTH,
                label="davidson (WALL)", color=COLORS["davidson"], zorder=3)
bars_fw = ax.bar(x - 0.5 * BAR_WIDTH, fftw_wall, BAR_WIDTH,
                 label="fftw (WALL)", color=COLORS["fftw_wall"], zorder=3)
bars_fg = ax.bar(x + 0.5 * BAR_WIDTH, fftw_gpu, BAR_WIDTH,
                 label="fftw (GPU)", color=COLORS["fftw_gpu"], zorder=3)
bars_g = ax.bar(x + 1.5 * BAR_WIDTH, g_psi_wall, BAR_WIDTH,
                label="g_psi (WALL)", color=COLORS["g_psi"], zorder=3)

# value labels
for bars in [bars_d, bars_fw, bars_fg, bars_g]:
    for bar in bars:
        h = bar.get_height()
        if h < 1:
            label = f"{h:.2f}"
        else:
            label = f"{h:.1f}"
        ax.text(bar.get_x() + bar.get_width() / 2, h + 1.5,
                label, ha="center", va="bottom", fontsize=7, rotation=45, zorder=4)

ax.set_xticks(x)
ax.set_xticklabels(x_labels)
ax.set_xlabel("Number of MPI ranks / GPUs (np)", fontsize=11)
ax.set_ylabel("Wall time (s)", fontsize=11)
ax.set_title("Exercise 5: GPU offloading scaling — si4 (ecutwfc = 60.0 Ry)",
             fontsize=12, fontweight="bold")
ax.yaxis.set_minor_locator(mticker.AutoMinorLocator())
ax.grid(axis="y", which="major", linestyle="--", alpha=0.5, zorder=0)
ax.legend(fontsize=9, loc="upper left")
ax.set_xlim(-0.6, len(x) - 0.4)
ax.set_ylim(0, max(davidson_wall) * 1.35)

fig.tight_layout()
out1 = os.path.join(os.path.dirname(os.path.abspath(__file__)),
                    "gpu_scaling_37440513_all.png")
fig.savefig(out1, dpi=160)
print(f"Saved: {out1}")
plt.close(fig)

# ---------------------------------------------------------------------------
# Figure 2: focus on davidson — bar + ideal-speedup reference
# ---------------------------------------------------------------------------

fig2, ax2 = plt.subplots(figsize=(8, 5))
bars = ax2.bar(x, davidson_wall, 0.5,
               label="davidson (WALL)", color=COLORS["davidson"], zorder=3)

for bar in bars:
    h = bar.get_height()
    ax2.text(bar.get_x() + bar.get_width() / 2, h + 2,
             f"{h:.1f}s", ha="center", va="bottom", fontsize=9, zorder=4)

ax2.set_xticks(x)
ax2.set_xticklabels(x_labels)
ax2.set_xlabel("Number of MPI ranks / GPUs (np)", fontsize=11)
ax2.set_ylabel("Wall time (s)", fontsize=11)
ax2.set_title("Exercise 5: Davidson wall time vs GPUs — si4 (ecutwfc = 60.0 Ry)",
              fontsize=12, fontweight="bold")
ax2.yaxis.set_minor_locator(mticker.AutoMinorLocator())
ax2.grid(axis="y", which="major", linestyle="--", alpha=0.5, zorder=0)
ax2.legend(fontsize=9)
ax2.set_xlim(-0.6, len(x) - 0.4)
ax2.set_ylim(0, max(davidson_wall) * 1.25)

fig2.tight_layout()
out2 = os.path.join(os.path.dirname(os.path.abspath(__file__)),
                    "gpu_scaling_37440513_davidson.png")
fig2.savefig(out2, dpi=160)
print(f"Saved: {out2}")
plt.close(fig2)

# ---------------------------------------------------------------------------
# Figure 3: FFT wall vs GPU time comparison
# ---------------------------------------------------------------------------

fig3, ax3 = plt.subplots(figsize=(8, 5))
w = 0.35
bars_fw3 = ax3.bar(x - w / 2, fftw_wall, w,
                   label="fftw WALL (host+device+comm)", color=COLORS["fftw_wall"], zorder=3)
bars_fg3 = ax3.bar(x + w / 2, fftw_gpu, w,
                   label="fftw GPU (kernel only)", color=COLORS["fftw_gpu"], zorder=3)

for bars in [bars_fw3, bars_fg3]:
    for bar in bars:
        h = bar.get_height()
        ax3.text(bar.get_x() + bar.get_width() / 2, h + 1,
                 f"{h:.1f}s", ha="center", va="bottom", fontsize=8.5, zorder=4)

ax3.set_xticks(x)
ax3.set_xticklabels(x_labels)
ax3.set_xlabel("Number of MPI ranks / GPUs (np)", fontsize=11)
ax3.set_ylabel("Wall time (s)", fontsize=11)
ax3.set_title("Exercise 5: FFT wall vs GPU time — si4 (ecutwfc = 60.0 Ry)",
              fontsize=12, fontweight="bold")
ax3.yaxis.set_minor_locator(mticker.AutoMinorLocator())
ax3.grid(axis="y", which="major", linestyle="--", alpha=0.5, zorder=0)
ax3.legend(fontsize=9)
ax3.set_xlim(-0.6, len(x) - 0.4)
ax3.set_ylim(0, max(fftw_wall) * 1.25)

fig3.tight_layout()
out3 = os.path.join(os.path.dirname(os.path.abspath(__file__)),
                    "gpu_scaling_37440513_fft.png")
fig3.savefig(out3, dpi=160)
print(f"Saved: {out3}")
plt.close(fig3)
