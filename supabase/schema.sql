-- Morning Bench cloud sync. Run once in the Supabase SQL editor.
-- One row per user per day, plus one settings row per user. Row-level security limits every row to its owner.

create table if not exists public.sessions (
  user_id    uuid   not null references auth.users (id) on delete cascade,
  date       text   not null,            -- local date, YYYY-MM-DD
  data       jsonb  not null,            -- the whole day: cube, arithmetic, LeetCode, drill, n-back
  updated_at bigint not null default 0,  -- client timestamp (ms) used to keep the newest copy
  primary key (user_id, date)
);

create table if not exists public.settings (
  user_id uuid  primary key references auth.users (id) on delete cascade,
  data    jsonb not null
);

alter table public.sessions enable row level security;
alter table public.settings enable row level security;

drop policy if exists "Users manage their own sessions" on public.sessions;
create policy "Users manage their own sessions" on public.sessions
  for all to authenticated
  using ((select auth.uid()) = user_id)
  with check ((select auth.uid()) = user_id);

drop policy if exists "Users manage their own settings" on public.settings;
create policy "Users manage their own settings" on public.settings
  for all to authenticated
  using ((select auth.uid()) = user_id)
  with check ((select auth.uid()) = user_id);
