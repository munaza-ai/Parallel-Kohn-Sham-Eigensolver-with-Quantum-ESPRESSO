#!/usr/bin/env python3
import argparse
import csv
from pathlib import Path

import matplotlib.pyplot as plt


def read_scaling_tsv(path: Path):
    ntasks = []
    wall = []
    with path.open("r", encoding="utf-8") as f:
        reader = csv.DictReader(f, delimiter="\t")
        for row in reader:
            ntasks.append(int(row["ntasks"]))
            wall.append(float(row["wall_seconds"]))
    if not ntasks:
        raise ValueError(f"No rows found in {path}")
    return ntasks, wall


def default_input_file(jobs_dir: Path) -> Path:
    files = sorted(jobs_dir.glob("scaling_*.tsv"), key=lambda p: p.stat().st_mtime)
    if not files:
        raise FileNotFoundError(f"No scaling_*.tsv found in {jobs_dir}")
    return files[-1]


def main():
    parser = argparse.ArgumentParser(description="Plot scaling TSV as wide grouped bars")
    parser.add_argument("input", nargs="?", default=None, help="Path to scaling_*.tsv")
    parser.add_argument("-o", "--output", default=None, help="Output image path (png)")
    args = parser.parse_args()

    jobs_dir = Path(__file__).resolve().parent
    input_path = Path(args.input) if args.input else default_input_file(jobs_dir)
    if not input_path.is_absolute():
        input_path = (Path.cwd() / input_path).resolve()

    ntasks, wall = read_scaling_tsv(input_path)

    t1 = wall[0]
    measured_speedup = [t1 / t for t in wall]
    ideal_speedup = [n / ntasks[0] for n in ntasks]

    x = list(range(len(ntasks)))
    width = 0.42

    fig, axes = plt.subplots(1, 2, figsize=(13, 5), constrained_layout=True)

    ax0 = axes[0]
    ax0.bar(x, wall, width=0.7, color="#1f77b4", edgecolor="black", linewidth=0.8)
    ax0.set_xticks(x, [str(n) for n in ntasks])
    ax0.set_xlabel("MPI ranks")
    ax0.set_ylabel("Wall time [s]")
    ax0.set_title("Wall Time")
    ax0.grid(axis="y", alpha=0.25)

    ax1 = axes[1]
    ax1.bar([i - width / 2 for i in x], measured_speedup, width=width,
            label="Measured speedup", color="#2ca02c", edgecolor="black", linewidth=0.8)
    ax1.bar([i + width / 2 for i in x], ideal_speedup, width=width,
            label="Ideal speedup", color="#ff7f0e", edgecolor="black", linewidth=0.8)
    ax1.set_xticks(x, [str(n) for n in ntasks])
    ax1.set_xlabel("MPI ranks")
    ax1.set_ylabel("Speedup vs first point")
    ax1.set_title("Measured vs Ideal Speedup")
    ax1.legend()
    ax1.grid(axis="y", alpha=0.25)

    fig.suptitle(f"Scaling summary: {input_path.name}")

    output_path = Path(args.output) if args.output else input_path.with_suffix(".png")
    if not output_path.is_absolute():
        output_path = (Path.cwd() / output_path).resolve()

    fig.savefig(output_path, dpi=150)
    print(f"Saved plot to: {output_path}")


if __name__ == "__main__":
    main()
