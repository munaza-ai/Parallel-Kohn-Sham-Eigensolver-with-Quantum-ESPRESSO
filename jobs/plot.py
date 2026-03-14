import matplotlib.pyplot as plt
import re
from pathlib import Path

# ── Dark Blue & Gold Theme ─────────────────────────────────────
DARK_BG     = "#05080F"
PANEL_BG    = "#0B1221"
CARD_BG     = "#0E1829"
GOLD        = "#F5A800"
GOLD_PALE   = "#FDD878"
NEON        = "#00C8FF"
BLUE        = "#1B4FD8"
MUTED       = "#5A7A9A"
OFF_WHITE   = "#D4DCE8"
GRID_COLOR  = "#1A2D4A"

def parse_scaling_log_optimized(filename):
    path = Path(filename)
    if not path.exists():
        raise FileNotFoundError(f"Errore: File '{filename}' non trovato.")
    content = path.read_text()
    runs = re.split(r"--- np=\d+, nd=.*---", content)[1:]
    pool_data = {'nk': [], 'time': []}
    for run in runs:
        nk_match   = re.search(r"nk=\s*(\d+)", run)
        time_match = re.search(r"davidson\s*:\s*.*CPU\s*([\d\.]+)s\s*WALL", run)
        if nk_match and time_match:
            pool_data['nk'].append(int(nk_match.group(1)))
            pool_data['time'].append(float(time_match.group(1)))
    sorted_data = sorted(zip(pool_data['nk'], pool_data['time']))
    return {
        'nk':  [x[0] for x in sorted_data],
        'time': [x[1] for x in sorted_data]
    }

def plot_optimized(pool_data):
    plt.rcParams.update({
        'figure.facecolor':  DARK_BG,
        'axes.facecolor':    PANEL_BG,
        'axes.edgecolor':    GRID_COLOR,
        'axes.labelcolor':   OFF_WHITE,
        'xtick.color':       MUTED,
        'ytick.color':       MUTED,
        'text.color':        OFF_WHITE,
        'font.family':       'monospace',
    })

    fig, (ax_time, ax_speedup) = plt.subplots(
        1, 2, figsize=(14, 5),
        facecolor=DARK_BG
    )

    nks       = pool_data['nk']
    times     = pool_data['time']
    base_time = times[0]
    base_nk   = nks[0]

    # ── Bar chart: Wall Time ───────────────────────────────────
    bars = ax_time.bar(
        [str(k) for k in nks], times,
        color=GOLD, edgecolor=DARK_BG, linewidth=1.2, width=0.55
    )
    # value labels on top of bars
    for bar, t in zip(bars, times):
        ax_time.text(
            bar.get_x() + bar.get_width() / 2,
            bar.get_height() + max(times) * 0.015,
            f"{t:.1f}s",
            ha='center', va='bottom',
            color=GOLD_PALE, fontsize=9
        )
    ax_time.set_title('Wall Time — Davidson',    color=GOLD,      fontsize=13, pad=12)
    ax_time.set_xlabel('Numero di Pool (nk)',    color=OFF_WHITE, fontsize=11)
    ax_time.set_ylabel('Tempo [s]',              color=OFF_WHITE, fontsize=11)

    # ── Line chart: Speedup ────────────────────────────────────
    speedup_misurato = [base_time / t for t in times]
    speedup_ideale   = [k / base_nk   for k in nks]

    ax_speedup.plot(
        nks, speedup_misurato,
        marker='o', markersize=8, linewidth=2.5,
        color=GOLD, markerfacecolor=DARK_BG, markeredgecolor=GOLD,
        markeredgewidth=2, label='Misurato'
    )
    ax_speedup.plot(
        nks, speedup_ideale,
        linestyle='--', linewidth=1.8,
        color=NEON, alpha=0.7, label='Ideale'
    )
    ax_speedup.set_title('Scalabilità Pool (Speedup)', color=GOLD,      fontsize=13, pad=12)
    ax_speedup.set_xlabel('Numero di Pool (nk)',       color=OFF_WHITE, fontsize=11)
    ax_speedup.set_ylabel('Speedup Relativo',          color=OFF_WHITE, fontsize=11)
    ax_speedup.set_xscale('log', base=2)
    ax_speedup.set_xticks(nks)
    ax_speedup.get_xaxis().set_major_formatter(plt.ScalarFormatter())
    ax_speedup.legend(
        facecolor=CARD_BG, edgecolor=GRID_COLOR,
        labelcolor=OFF_WHITE, fontsize=10
    )

    # ── Shared styling ─────────────────────────────────────────
    for ax in (ax_time, ax_speedup):
        ax.grid(True, linestyle='--', alpha=0.25, color=MUTED)
        ax.spines['top'].set_visible(False)
        ax.spines['right'].set_visible(False)
        ax.spines['left'].set_color(GRID_COLOR)
        ax.spines['bottom'].set_color(GRID_COLOR)

    # gold separator line between panels
    fig.add_artist(plt.Line2D(
        [0.505, 0.505], [0.08, 0.92],
        transform=fig.transFigure,
        color=GOLD, linewidth=0.8, alpha=0.4
    ))

    plt.tight_layout(pad=2.5)
    plt.savefig('pool_scaling_opt.png', dpi=300, bbox_inches='tight',
                facecolor=DARK_BG)
    print("Grafico salvato con successo.")

if __name__ == "__main__":
    data = parse_scaling_log_optimized("ex4data.out")
    plot_optimized(data)
