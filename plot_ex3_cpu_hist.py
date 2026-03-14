#!/usr/bin/env python3
import argparse
import re
from pathlib import Path

import matplotlib.pyplot as plt


BLOCK_TITLES = {
    1: "Block 1: fixed nd=1, vary nb",
    2: "Block 2: fixed nb=1, vary nd",
    3: "Block 3: vary nd and nb together",
}


def default_input_file(jobs_dir: Path) -> Path:
    files = sorted(jobs_dir.glob("cb_ex3_cpu_*.out"), key=lambda path: path.stat().st_mtime)
    if not files:
        raise FileNotFoundError(f"No cb_ex3_cpu_*.out files found in {jobs_dir}")
    return files[-1]


def parse_output(path: Path):
    case_re = re.compile(r"--- np=(\d+), nd=(\d+), nb=(\d+) ---")
    davidson_re = re.compile(r"davidson\s*:\s*[0-9.]+s CPU\s+([0-9.]+)s WALL")
    block_re = re.compile(r"BLOCK\s+(\d+):")

    records = []
    current_block = None
    pending_case = None

    with path.open("r", encoding="utf-8") as handle:
        for raw_line in handle:
            line = raw_line.strip()

            block_match = block_re.search(line)
            if block_match:
                current_block = int(block_match.group(1))
                continue

            case_match = case_re.search(line)
            if case_match:
                pending_case = {
                    "np": int(case_match.group(1)),
                    "nd": int(case_match.group(2)),
                    "nb": int(case_match.group(3)),
                    "block": current_block,
                }
                continue

            davidson_match = davidson_re.search(line)
            if davidson_match and pending_case is not None:
                records.append(
                    {
                        **pending_case,
                        "wall": float(davidson_match.group(1)),
                    }
                )
                pending_case = None

    if not records:
        raise ValueError(f"No davidson wall times found in {path}")

    return records


def make_block_labels(block, records):
    if block == 1:
        return [f"nb={record['nb']}" for record in records]
    if block == 2:
        return [f"nd={record['nd']}" for record in records]
    return [f"nd={record['nd']}\nnb={record['nb']}" for record in records]


def plot_records(records, title: str, output_path: Path):
    grouped = {1: [], 2: [], 3: []}
    for record in records:
        block = record["block"]
        if block in grouped:
            grouped[block].append(record)

    nonempty_blocks = [block for block in (1, 2, 3) if grouped[block]]
    if not nonempty_blocks:
        raise ValueError("No block data available to plot")

    fig, axes = plt.subplots(
        len(nonempty_blocks),
        1,
        figsize=(12, 4.0 * len(nonempty_blocks) + 0.5),
        constrained_layout=True,
    )
    if len(nonempty_blocks) == 1:
        axes = [axes]

    colors = {1: "#4C78A8", 2: "#F58518", 3: "#54A24B"}

    for axis, block in zip(axes, nonempty_blocks):
        block_records = grouped[block]
        labels = make_block_labels(block, block_records)
        wall_times = [record["wall"] for record in block_records]
        x_positions = list(range(len(block_records)))

        bars = axis.bar(
            x_positions,
            wall_times,
            width=0.82,
            color=colors[block],
            edgecolor="black",
            linewidth=0.8,
        )

        axis.set_xticks(x_positions, labels)
        axis.set_ylabel("Davidson wall time [s]")
        axis.set_title(BLOCK_TITLES[block])
        axis.grid(axis="y", alpha=0.25)
        axis.spines[["top", "right"]].set_visible(False)

        ymax = max(wall_times)
        for bar, wall in zip(bars, wall_times):
            axis.text(
                bar.get_x() + bar.get_width() / 2,
                wall + 0.02 * ymax,
                f"{wall:.2f}",
                ha="center",
                va="bottom",
                fontsize=9,
            )

    axes[-1].set_xlabel("Run configuration")
    fig.suptitle(title)
    fig.savefig(output_path, dpi=150)
    print(f"Saved plot to: {output_path}")


def main():
    parser = argparse.ArgumentParser(
        description="Plot Exercise 3 CPU davidson wall times from a SLURM output file"
    )
    parser.add_argument("input", nargs="?", default=None, help="Path to cb_ex3_cpu_*.out")
    parser.add_argument("-o", "--output", default=None, help="Output image path")
    args = parser.parse_args()

    jobs_dir = Path(__file__).resolve().parent / "jobs"
    input_path = Path(args.input) if args.input else default_input_file(jobs_dir)
    if not input_path.is_absolute():
        input_path = (Path.cwd() / input_path).resolve()

    output_path = Path(args.output) if args.output else input_path.with_suffix(".png")
    if not output_path.is_absolute():
        output_path = (Path.cwd() / output_path).resolve()

    records = parse_output(input_path)
    plot_records(records, f"Exercise 3 CPU scaling: {input_path.name}", output_path)


if __name__ == "__main__":
    main()