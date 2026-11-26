# Morning Bench

A guided 30-minute morning routine for engineers, in one static page.

| Block | Time | What it does |
|---|---|---|
| Cube warm-up | 3 min | Scramble generator and hold-to-start solve timer |
| Arithmetic sprint | 5 min | Timed mental-math rounds (+ − × ÷) with configurable ranges, slowest-problem review |
| LeetCode | 15 min | Countdown with a bell, problem log, outcome and key-idea notes |
| Open-ended drill | 7 min | Daily rotation: Fermi, back-of-envelope design, post-mortem, paper summary, redo a missed problem |

Plus an optional adaptive dual n-back tab and a Progress tab (streak, consistency grid, score charts, LeetCode log, drill journal).

## Running it

No build step. Open `index.html` in a browser, or serve the folder with any static host. It's deployed with GitHub Pages from the `main` branch root.

## Data

History is stored in the browser's `localStorage` under `morning-bench.v1`, so it stays on the device and browser you use. Clearing site data erases it.
