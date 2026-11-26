// Public Supabase settings for cloud sync. Both values are safe to commit:
// the anon (publishable) key only allows what the row-level security policies in supabase/schema.sql allow.
// NEVER put the service_role / secret key here.
// Leave them empty to run in browser-only mode (no sign-in).
window.MORNING_BENCH_CONFIG = {
  supabaseUrl: "",      // e.g. "https://abcdefghijklmnop.supabase.co"
  supabaseAnonKey: ""   // the "anon public" or "publishable" key from Project Settings → API Keys
};
