#!/usr/bin/env python3
"""
Plot cumulative wall time (sum over all k-points) vs number of MPI tasks.
Files: timing_t<ntasks>_<job_id>.txt
"""

import argparse
import glob
import os
import re
from pathlib import Path
from collections import defaultdict


def parse_timing_file(path: Path):
    wall_seconds = None
    max_rss_kb = None
    with path.open("r", encoding="utf-8") as f:
        for line in f:
            line = line.strip()
            if line.startswith("wall_seconds="):
                wall_seconds = float(line.split("=", 1)[1])
            elif line.startswith("max_rss_kb="):
                max_rss_kb = float(line.split("=", 1)[1])
    if wall_seconds is None:
        raise ValueError(f"No wall_seconds found in {path}")
    return wall_seconds, max_rss_kb


def collect_records(pattern: str):
    regex = re.compile(r"timing_t(\d+)_(\d+)\.txt$")
    records = []
    for file_path in glob.glob(pattern):
        path = Path(file_path).resolve()
        m = regex.search(path.name)
        if not m:
            continue
        ntasks = int(m.group(1))
        job_id = int(m.group(2))
        wall_seconds, max_rss_kb = parse_timing_file(path)
        records.append(dict(ntasks=ntasks, job_id=job_id,
                            wall_seconds=wall_seconds, max_rss_kb=max_rss_kb))
    return records


def main():
    parser = argparse.ArgumentParser(
        description="Plot cumulative wall time vs MPI task count"
    )
    parser.add_argument("--pattern", default="timing_t*.txt")
    parser.add_argument("--output",  default="timing_t_scaling.png")
    parser.add_argument("--title",   default="Davidson diagonalisation – scaling")
    parser.add_argument("--memory",  action="store_true",
                        help="Add a subplot for peak RSS memory")
    args = parser.parse_args()

    records = collect_records(args.pattern)
    if not records:
        raise SystemExit(f"No timing files found for pattern: {args.pattern}")

    try:
        import matplotlib.pyplot as plt
        import matplotlib.ticker as ticker
        import numpy as np
    except ImportError as exc:
        raise SystemExit("matplotlib and numpy are required.") from exc

    # ── accumulate per ntasks ──────────────────────────────────────────────
    wall_sum = defaultdict(float)
    mem_max  = defaultdict(lambda: None)
    kcount   = defaultdict(int)

    for r in records:
        nt = r["ntasks"]
        wall_sum[nt] += r["wall_seconds"]
        kcount[nt]   += 1
        if r["max_rss_kb"] is not None:
            prev = mem_max[nt]
            mem_max[nt] = r["max_rss_kb"] if prev is None else max(prev, r["max_rss_kb"])

    all_ntasks = sorted(wall_sum)
    walls      = [wall_sum[nt] for nt in all_ntasks]
    mems       = [mem_max[nt]  for nt in all_ntasks]
    has_mem    = args.memory and any(m is not None for m in mems)

    # ideal scaling anchored to first data point
    t0, n0 = walls[0], all_ntasks[0]
    ideal  = [t0 * n0 / nt for nt in all_ntasks]

    # ── figure ────────────────────────────────────────────────────────────
    nrows = 2 if has_mem else 1
    fig, axes = plt.subplots(nrows, 1,
                             figsize=(max(7, 1.1 * len(all_ntasks) + 3),
                                      4.5 * nrows + 0.5),
                             sharex=True)
    if nrows == 1:
        axes = [axes]
    ax = axes[0]

    x     = np.arange(len(all_ntasks))
    bar_w = 0.55

    bars = ax.bar(x, walls, width=bar_w, color="#4C72B0",
                  edgecolor="white", linewidth=0.5, zorder=3,
                  label="Measured")

    # value labels on top of bars
    for bar, v in zip(bars, walls):
        ax.text(bar.get_x() + bar.get_width() / 2,
                bar.get_height() + 0.01 * max(walls),
                f"{v:.1f} s",
                ha="center", va="bottom", fontsize=9, color="dimgray")

    # ideal (linear) scaling line
    ax.plot(x, ideal, color="#DD8452", linewidth=1.8,
            linestyle="--", marker="o", markersize=5,
            zorder=4, label="Ideal (linear) scaling")

    # speedup labels inside bars
    for i, (nt, w) in enumerate(zip(all_ntasks, walls)):
        speedup = walls[0] / w
        ax.text(x[i], w * 0.5, f"×{speedup:.1f}",
                ha="center", va="center",
                fontsize=8.5, color="white", fontweight="bold")

    ax.set_xticks(x)
    ax.set_xticklabels([str(nt) for nt in all_ntasks], fontsize=10)
    ax.set_ylabel("Cumulative wall time  [s]\n(sum over all k-points)", fontsize=10)
    ax.set_title(args.title, fontsize=13, fontweight="bold", pad=10)
    ax.yaxis.set_minor_locator(ticker.AutoMinorLocator())
    ax.grid(axis="y", alpha=0.3, zorder=0)
    ax.grid(axis="y", which="minor", alpha=0.12, zorder=0)
    ax.spines[["top", "right"]].set_visible(False)
    ax.legend(fontsize=9, framealpha=0.7)

    if has_mem:
        ax2 = axes[1]
        mem_mib = [(m / 1024 if m is not None else 0) for m in mems]
        ax2.bar(x, mem_mib, width=bar_w, color="#55A868",
                edgecolor="white", linewidth=0.5, zorder=3)
        for bar, v in zip(ax2.patches, mem_mib):
            if v > 0:
                ax2.text(bar.get_x() + bar.get_width() / 2,
                         bar.get_height() + 0.01 * max(mem_mib),
                         f"{v:.0f}",
                         ha="center", va="bottom", fontsize=9, color="dimgray")
        ax2.set_ylabel("Peak RSS  [MiB]", fontsize=10)
        ax2.set_xlabel("Number of MPI processes", fontsize=11)
        ax2.yaxis.set_minor_locator(ticker.AutoMinorLocator())
        ax2.grid(axis="y", alpha=0.3, zorder=0)
        ax2.spines[["top", "right"]].set_visible(False)
    else:
        ax.set_xlabel("Number of MPI processes", fontsize=11)

    fig.tight_layout(h_pad=1.5)
    fig.savefig(args.output, dpi=150, bbox_inches="tight")
    print(f"Saved to: {os.path.abspath(args.output)}")
    print(f"\n{'Tasks':>8}  {'k-pts':>6}  {'Wall [s]':>10}  {'Speedup':>8}")
    for nt, w in zip(all_ntasks, walls):
        print(f"{nt:>8}  {kcount[nt]:>6}  {w:>10.2f}  {walls[0]/w:>8.2f}×")


if __name__ == "__main__":
    main()
