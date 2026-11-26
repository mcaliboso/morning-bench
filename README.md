# Morning Bench

A guided 30-minute morning routine for engineers, in one static page.

| Block | Time | What it does |
|---|---|---|
| Cube warm-up | 3 min | Scramble generator and hold-to-start solve timer |
| Arithmetic sprint | 5 min | 2 min normal round, 1 min drill that mixes your slowest problems back in with fresh ones, 2 min normal round (+ − × ÷, configurable ranges) |
| LeetCode | 15 min | Countdown with a bell, problem log, outcome and key-idea notes |
| Open-ended drill | 7 min | Daily rotation: Fermi, back-of-envelope design, post-mortem, paper summary, redo a missed problem. Optional AI review scoring each answer on a 5×20-point rubric (Claude version only) |

Plus an optional adaptive dual n-back tab and a Progress tab (streak, consistency grid, score charts, LeetCode log, drill journal).

## Running it

No build step. Open `index.html` in a browser, or serve the folder with any static host. It's deployed with GitHub Pages from the `main` branch root.

## Data and accounts

Without an account, history is stored in the browser's `localStorage` under `morning-bench.v1`, so it stays on the device and browser you use.

With an account (Google or email/password, through Supabase), progress saves to your account and syncs across devices. Each day is one row in `public.sessions`; row-level security keeps every row private to its owner. The first time you sign in, the app offers to add any history already saved in that browser. Setup steps are in [`supabase/SETUP.md`](supabase/SETUP.md). `config.js` holds only the public project URL and anon key; never put the service-role key in this repo.

## AI review

In the Claude-hosted version the drill reviewer runs on your Claude account. On GitHub Pages, add your own Anthropic API key under **Setup → AI review**. The key is stored only in your browser's localStorage, is sent only to `api.anthropic.com`, and never goes in this repo. Reviews are billed to your API account. You can pick Claude Opus 5.5 or Claude Sonnet 5.5 as the grader, and **Remove key** deletes it from the browser.
