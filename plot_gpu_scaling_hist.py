#!/usr/bin/env python3
"""
Plot histogram-style bars from cb_gpu_scaling_*.out logs.

It parses both sections:
- TEST 1: Single k-point, vary GPU count
- TEST 2: k-pool parallelism

For each section, it plots wall-time bars for davidson / fftw / g_psi,
and a separate plot for fftw GPU time.
"""

import argparse
import re
from pathlib import Path

import matplotlib.pyplot as plt


def default_input_file(jobs_dir: Path) -> Path:
    files = sorted(jobs_dir.glob("cb_gpu_scaling_*.out"), key=lambda p: p.stat().st_mtime)
    if not files:
        raise FileNotFoundError(f"No cb_gpu_scaling_*.out files found in {jobs_dir}")
    return files[-1]


def parse_gpu_scaling_output(path: Path):
    test1_header = "TEST 1:"
    test2_header = "TEST 2:"

    case_np_re = re.compile(r"---\s*np=(\d+)\s*GPU\(s\),\s*nd=(\d+)")
    case_nk_re = re.compile(r"---\s*np=(\d+),\s*nk=(\d+)")

    davidson_re = re.compile(r"davidson\s*:\s*[0-9.]+s CPU\s+([0-9.]+)s WALL")
    gpsi_re = re.compile(r"g_psi\s*:\s*[0-9.]+s CPU\s+([0-9.]+)s WALL")
    fftw_re = re.compile(r"fftw\s*:\s*[0-9.]+s CPU\s+([0-9.]+)s WALL")
    fftw_gpu_re = re.compile(r"([0-9.]+)s GPU\s+\(\s*\d+ calls\)")

    section = None
    pending = None
    records = []

    with path.open("r", encoding="utf-8") as f:
        for raw in f:
            line = raw.strip()

            if test1_header in line:
                section = "test1"
                continue
            if test2_header in line:
                section = "test2"
                continue

            m_np = case_np_re.search(line)
            if m_np:
                pending = {
                    "section": section,
                    "np": int(m_np.group(1)),
                    "nd": int(m_np.group(2)),
                    "nk": None,
                    "davidson_wall": None,
                    "g_psi_wall": None,
                    "fftw_wall": None,
                    "fftw_gpu": None,
                }
                continue

            m_nk = case_nk_re.search(line)
            if m_nk:
                pending = {
                    "section": section,
                    "np": int(m_nk.group(1)),
                    "nd": None,
                    "nk": int(m_nk.group(2)),
                    "davidson_wall": None,
                    "g_psi_wall": None,
                    "fftw_wall": None,
                    "fftw_gpu": None,
                }
                continue

            if pending is None:
                continue

            m = davidson_re.search(line)
            if m:
                pending["davidson_wall"] = float(m.group(1))
                continue

            m = gpsi_re.search(line)
            if m:
                pending["g_psi_wall"] = float(m.group(1))
                continue

            m = fftw_re.search(line)
            if m:
                pending["fftw_wall"] = float(m.group(1))
                continue

            m = fftw_gpu_re.search(line)
            if m and pending["fftw_wall"] is not None:
                pending["fftw_gpu"] = float(m.group(1))
                records.append(pending)
                pending = None

    if not records:
        raise ValueError(f"No timing records found in {path}")

    return records


def _labels_for(section_records):
    labels = []
    for r in section_records:
        if r["section"] == "test1":
            labels.append(f"np={r['np']}")
        else:
            labels.append(f"nk={r['nk']}")
    return labels


def _bar_annotate(ax, bars, values):
    ymax = max(values) if values else 0.0
    dy = 0.02 * ymax if ymax > 0 else 0.02
    for b, v in zip(bars, values):
        ax.text(
            b.get_x() + b.get_width() / 2,
            v + dy,
            f"{v:.2f}",
            ha="center",
            va="bottom",
            fontsize=9,
        )


def plot_histograms(records, output_prefix: Path, title_suffix: str):
    test1 = [r for r in records if r["section"] == "test1"]
    test2 = [r for r in records if r["section"] == "test2"]

    if not test1 and not test2:
        raise ValueError("No test1/test2 records available to plot")

    sections = []
    if test1:
        sections.append(("Test 1: vary np", test1, "#4C78A8"))
    if test2:
        sections.append(("Test 2: vary nk", test2, "#F58518"))

    # Figure 1: wall times for davidson/g_psi/fftw
    fig1, axes1 = plt.subplots(
        len(sections), 1, figsize=(12, 4.2 * len(sections) + 0.4), constrained_layout=True
    )
    if len(sections) == 1:
        axes1 = [axes1]

    for ax, (title, section_records, color) in zip(axes1, sections):
        labels = _labels_for(section_records)
        x = list(range(len(section_records)))

        w_dav = [r["davidson_wall"] for r in section_records]
        w_gpsi = [r["g_psi_wall"] for r in section_records]
        w_fftw = [r["fftw_wall"] for r in section_records]

        width = 0.25
        b1 = ax.bar([i - width for i in x], w_dav, width=width, color=color,
                    edgecolor="black", linewidth=0.7, label="davidson WALL")
        b2 = ax.bar(x, w_fftw, width=width, color="#72B7B2",
                    edgecolor="black", linewidth=0.7, label="fftw WALL")
        b3 = ax.bar([i + width for i in x], w_gpsi, width=width, color="#54A24B",
                    edgecolor="black", linewidth=0.7, label="g_psi WALL")

        _bar_annotate(ax, b1, w_dav)
        _bar_annotate(ax, b2, w_fftw)
        _bar_annotate(ax, b3, w_gpsi)

        ax.set_xticks(x, labels)
        ax.set_ylabel("Time [s]")
        ax.set_title(title)
        ax.grid(axis="y", alpha=0.25)
        ax.spines[["top", "right"]].set_visible(False)
        ax.legend(fontsize=9)

    axes1[-1].set_xlabel("Scaling point")
    fig1.suptitle(f"GPU scaling histograms (WALL): {title_suffix}")
    out1 = output_prefix.with_name(output_prefix.name + "_wall_hist.png")
    fig1.savefig(out1, dpi=150)

    # Figure 2: fftw GPU-only bars
    fig2, axes2 = plt.subplots(
        len(sections), 1, figsize=(12, 4.0 * len(sections) + 0.4), constrained_layout=True
    )
    if len(sections) == 1:
        axes2 = [axes2]

    for ax, (title, section_records, color) in zip(axes2, sections):
        labels = _labels_for(section_records)
        x = list(range(len(section_records)))
        w_gpu = [r["fftw_gpu"] for r in section_records]

        bars = ax.bar(x, w_gpu, width=0.65, color=color,
                      edgecolor="black", linewidth=0.8, label="fftw GPU")
        _bar_annotate(ax, bars, w_gpu)

        ax.set_xticks(x, labels)
        ax.set_ylabel("GPU time [s]")
        ax.set_title(f"{title} - fftw GPU")
        ax.grid(axis="y", alpha=0.25)
        ax.spines[["top", "right"]].set_visible(False)

    axes2[-1].set_xlabel("Scaling point")
    fig2.suptitle(f"GPU scaling histograms (fftw GPU): {title_suffix}")
    out2 = output_prefix.with_name(output_prefix.name + "_fftw_gpu_hist.png")
    fig2.savefig(out2, dpi=150)

    print(f"Saved plot to: {out1}")
    print(f"Saved plot to: {out2}")


def main():
    parser = argparse.ArgumentParser(
        description="Plot histogram bars from cb_gpu_scaling_*.out logs"
    )
    parser.add_argument("input", nargs="?", default=None,
                        help="Path to cb_gpu_scaling_*.out")
    parser.add_argument("-o", "--output-prefix", default=None,
                        help="Output file prefix (without extension)")
    args = parser.parse_args()

    jobs_dir = Path(__file__).resolve().parent / "jobs"
    input_path = Path(args.input) if args.input else default_input_file(jobs_dir)
    if not input_path.is_absolute():
        input_path = (Path.cwd() / input_path).resolve()

    if args.output_prefix:
        output_prefix = Path(args.output_prefix)
        if not output_prefix.is_absolute():
            output_prefix = (Path.cwd() / output_prefix).resolve()
    else:
        output_prefix = input_path.with_suffix("")

    records = parse_gpu_scaling_output(input_path)
    plot_histograms(records, output_prefix, input_path.name)


if __name__ == "__main__":
    main()
