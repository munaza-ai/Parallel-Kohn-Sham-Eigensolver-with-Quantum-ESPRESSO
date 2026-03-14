#!/usr/bin/env python3
"""
plot_gpu_scaling.py
Bar charts from cb_gpu_scaling_37437802.out
"""

import os
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.ticker as mticker
import numpy as np

# ---------------------------------------------------------------------------
# Data from cb_gpu_scaling_37437802.out
# ---------------------------------------------------------------------------

test1 = {
    "title": "Test 1 — PW-parallel scaling (single k-point, ncell=4, nbnd=768)",
    "xlabel": "Number of GPUs",
    "x_labels": ["1", "2", "4"],
    "x_vals":   [1, 2, 4],
    "davidson": [3.29, 31.60, 64.51],
    "fftw":     [0.70, 10.35, 21.54],
    "fftw_gpu": [0.61,  8.42, 17.25],
}

test2 = {
    "title": "Test 2 — k-pool scaling (4 GPUs, 4 k-points, ncell=4, nbnd=768)",
    "xlabel": "Number of k-pools (nk)",
    "x_labels": ["1", "2", "4"],
    "x_vals":   [1, 2, 4],
    "davidson": [243.69, 123.80, 53.85],
    "fftw":     [ 81.63,  39.95,  8.73],
    "fftw_gpu": [ 65.10,  32.00,  4.63],
}

# ---------------------------------------------------------------------------
# Colours
# ---------------------------------------------------------------------------
C_DAV  = "#2196F3"
C_FFT  = "#FF9800"
C_GPU  = "#4CAF50"

# ---------------------------------------------------------------------------
# Plot
# ---------------------------------------------------------------------------
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(14, 5.5))
fig.suptitle("GPU scaling — CB Davidson miniapp (Leonardo, A100)",
             fontsize=14, fontweight="bold", y=1.01)

for ax, data in [(ax1, test1), (ax2, test2)]:
    n = len(data["x_vals"])
    x = np.arange(n)
    w = 0.25

    bars_d = ax.bar(x - w, data["davidson"], w,
                    label="davidson (WALL)", color=C_DAV, zorder=3)
    bars_f = ax.bar(x,     data["fftw"],     w,
                    label="FFT (WALL)", color=C_FFT, zorder=3)
    bars_g = ax.bar(x + w, data["fftw_gpu"], w,
                    label="FFT (GPU)", color=C_GPU, zorder=3)

    # value labels
    for bars in [bars_d, bars_f, bars_g]:
        for bar in bars:
            h = bar.get_height()
            ax.text(bar.get_x() + bar.get_width() / 2, h + 0.5,
                    f"{h:.1f}s", ha="center", va="bottom", fontsize=8, zorder=4)

    # ideal speedup line (from first data point)
    if data is test2:
        ideal = [data["davidson"][0] / (v / data["x_vals"][0])
                 for v in data["x_vals"]]
        ax.plot(x - w, ideal, "k--", lw=1.2, label="ideal speedup", zorder=5)

    ax.set_xticks(x)
    ax.set_xticklabels(data["x_labels"])
    ax.set_xlabel(data["xlabel"], fontsize=11)
    ax.set_ylabel("Wall time (s)", fontsize=11)
    ax.set_title(data["title"], fontsize=10, fontweight="bold")
    ax.yaxis.set_minor_locator(mticker.AutoMinorLocator())
    ax.grid(axis="y", which="major", ls="--", alpha=0.5, zorder=0)
    ax.legend(fontsize=8, loc="upper left" if data is test1 else "upper right")
    ax.set_xlim(-0.5, n - 0.5)
    ax.set_ylim(0, max(data["davidson"]) * 1.25)

fig.tight_layout()
out = os.path.join(os.path.dirname(os.path.abspath(__file__)), "gpu_scaling.png")
fig.savefig(out, dpi=160, bbox_inches="tight")
print(f"Saved: {out}")
plt.close(fig)
