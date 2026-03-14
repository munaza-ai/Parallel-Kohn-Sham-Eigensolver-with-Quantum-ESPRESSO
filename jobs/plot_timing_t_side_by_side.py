#!/usr/bin/env python3
import argparse
import glob
import os
import re
from pathlib import Path


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

        records.append(
            {
                "path": path,
                "name": path.name,
                "ntasks": ntasks,
                "job_id": job_id,
                "wall_seconds": wall_seconds,
                "max_rss_kb": max_rss_kb,
            }
        )

    records.sort(key=lambda r: (r["ntasks"], r["job_id"]))
    return records


def main():
    parser = argparse.ArgumentParser(
        description="Plot wall times from timing_t*.txt files as side-by-side bars"
    )
    parser.add_argument(
        "--pattern",
        default="timing_t*.txt",
        help="Glob pattern for timing files (default: timing_t*.txt)",
    )
    parser.add_argument(
        "--output",
        default="timing_t_side_by_side.png",
        help="Output image path (default: timing_t_side_by_side.png)",
    )
    parser.add_argument(
        "--title",
        default="Wall Time Comparison from timing_t*.txt",
        help="Plot title",
    )
    args = parser.parse_args()

    records = collect_records(args.pattern)
    if not records:
        raise SystemExit(
            f"No matching timing files found for pattern: {args.pattern}"
        )

    try:
        import matplotlib.pyplot as plt
    except ImportError as exc:
        raise SystemExit(
            "matplotlib is required. Install it with: pip install matplotlib"
        ) from exc

    labels = [f"t{r['ntasks']}_j{r['job_id']}" for r in records]
    values = [r["wall_seconds"] for r in records]

    x = list(range(len(records)))

    plt.figure(figsize=(max(10, 0.85 * len(records)), 5.5))
    bars = plt.bar(x, values, width=0.75)

    for bar, value in zip(bars, values):
        plt.text(
            bar.get_x() + bar.get_width() / 2,
            bar.get_height(),
            f"{value:.2f}",
            ha="center",
            va="bottom",
            fontsize=8,
            rotation=90,
        )

    plt.xticks(x, labels, rotation=45, ha="right")
    plt.ylabel("Wall time [s]")
    plt.xlabel("Run (tasks_job)")
    plt.title(args.title)
    plt.grid(axis="y", alpha=0.25)
    plt.tight_layout()
    plt.savefig(args.output, dpi=150)

    print(f"Plotted {len(records)} timing files")
    print(f"Saved figure to: {os.path.abspath(args.output)}")


if __name__ == "__main__":
    main()
