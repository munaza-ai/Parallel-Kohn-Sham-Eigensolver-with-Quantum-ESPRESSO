#!/usr/bin/env python3
"""
plot_scaling_histograms.py
Produces bar-chart scaling plots for Exercises 2, 3, 4 of the CB Davidson miniapp.
Data source: timings.tsv (same directory)
"""

import os
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.ticker as mticker
import numpy as np

# ---------------------------------------------------------------------------
# Raw data (from timings.tsv)
# ---------------------------------------------------------------------------

ex2 = {
    "title": "Exercise 2: PW parallelism (cegterg, nd=1)",
    "xlabel": "Number of MPI ranks (np)",
    "x_labels": ["1", "2", "4", "8", "16", "32"],
    "x_vals":   [1,    2,   4,   8,   16,   32],
    "davidson": [31.94, 21.70, 14.73, 16.45, 13.32, 12.57],
    "fftw":     [6.18,   3.33,  1.90,  1.81,  0.99,  0.72],
}

ex3 = {
    "title": "Exercise 3: ScaLAPACK parallelism (pcegterg, np=32)",
    "xlabel": "Number of diagonalisation procs (nd)",
    "x_labels": ["1", "2", "4", "8", "16"],
    "x_vals":   [1,   2,   4,   8,   16],
    "davidson": [12.78, 35.09, 14.09, 13.68, 5.95],
    "fftw":     [0.91,   0.80,  1.56,  1.00,  1.51],
}

ex4 = {
    "title": "Exercise 4: k-point pool parallelism (np=32, 50 k-pts)",
    "xlabel": "Number of k-point pools (nk)",
    "x_labels": ["1", "2", "4", "8", "16", "32"],
    "x_vals":   [1,   2,   4,   8,   16,   32],
    "davidson": [97.36, 60.65, 62.22, 45.61, 39.86, 32.02],
    "fftw":     [23.25, 11.34,  8.87,  8.04,  9.04,  8.65],
}

exercises = [ex2, ex3, ex4]

# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

BAR_WIDTH = 0.38
COLORS = {"davidson": "#2196F3", "fftw": "#FF9800"}

def ideal_speedup(t_ref, x_vals):
    """Return ideal wall time assuming linear speedup from x_vals[0]."""
    return [t_ref / (x / x_vals[0]) for x in x_vals]


def make_bar_chart(ax, data, show_speedup=True):
    x = np.arange(len(data["x_vals"]))
    bars_d = ax.bar(x - BAR_WIDTH / 2, data["davidson"], BAR_WIDTH,
                    label="davidson (WALL)", color=COLORS["davidson"], zorder=3)
    bars_f = ax.bar(x + BAR_WIDTH / 2, data["fftw"], BAR_WIDTH,
                    label="fftw (WALL)", color=COLORS["fftw"], zorder=3)

    # value labels on top of each bar
    for bar in list(bars_d) + list(bars_f):
        h = bar.get_height()
        ax.text(bar.get_x() + bar.get_width() / 2, h + 0.3,
                f"{h:.1f}s", ha="center", va="bottom", fontsize=7.5, zorder=4)

    # ideal speedup line for davidson only
    if show_speedup and len(data["x_vals"]) > 1:
        ideal = ideal_speedup(data["davidson"][0], data["x_vals"])
        ax.plot(x - BAR_WIDTH / 2, ideal, "k--", linewidth=1.2,
                label="ideal speedup (davidson)", zorder=5)

    ax.set_xticks(x)
    ax.set_xticklabels(data["x_labels"])
    ax.set_xlabel(data["xlabel"], fontsize=10)
    ax.set_ylabel("Wall time (s)", fontsize=10)
    ax.set_title(data["title"], fontsize=11, fontweight="bold")
    ax.yaxis.set_minor_locator(mticker.AutoMinorLocator())
    ax.grid(axis="y", which="major", linestyle="--", alpha=0.5, zorder=0)
    ax.legend(fontsize=8)
    ax.set_xlim(-0.6, len(x) - 0.4)
    ax.set_ylim(0, max(data["davidson"]) * 1.25)


# ---------------------------------------------------------------------------
# Figure 1: one plot per exercise, stacked vertically
# ---------------------------------------------------------------------------

fig, axes = plt.subplots(3, 1, figsize=(9, 14))
fig.suptitle("CB Davidson miniapp — scaling study", fontsize=13, fontweight="bold", y=0.995)

for ax, ex in zip(axes, exercises):
    make_bar_chart(ax, ex)

fig.tight_layout()
out1 = os.path.join(os.path.dirname(__file__), "scaling_all_exercises.png")
fig.savefig(out1, dpi=160)
print(f"Saved: {out1}")

# ---------------------------------------------------------------------------
# Figure 2: individual per-exercise PNGs
# ---------------------------------------------------------------------------

for ex in exercises:
    fig2, ax2 = plt.subplots(figsize=(7, 4.5))
    make_bar_chart(ax2, ex)
    fig2.tight_layout()
    safe = ex["title"].split(":")[0].replace(" ", "_").lower()  # exercise_2 etc.
    out2 = os.path.join(os.path.dirname(__file__), f"{safe}_scaling.png")
    fig2.savefig(out2, dpi=160)
    print(f"Saved: {out2}")
    plt.close(fig2)

plt.close(fig)
