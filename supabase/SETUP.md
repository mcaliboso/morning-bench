# Setting up accounts (Supabase)

Takes about 15 minutes. Until `config.js` is filled in, the site runs in browser-only mode.

## 1. Create the Supabase project
1. Sign in at https://supabase.com and create a new project (the free plan is enough).
2. Open **SQL Editor → New query**, paste the contents of `supabase/schema.sql`, and run it.

## 2. Allow the site's address
**Authentication → URL Configuration**
- Site URL: `https://mcaliboso.github.io/morning-bench/`
- Redirect URLs: add `https://mcaliboso.github.io/morning-bench/`

## 3. Email sign-up
Email/password works out of the box. Supabase sends a confirmation email; its built-in mailer is rate-limited, which is fine for personal use.

## 4. Google sign-in
1. In Google Cloud Console (https://console.cloud.google.com), create a project, then **APIs & Services → OAuth consent screen**: External, app name "Morning Bench", your email as support and developer contact. Add yourself as a test user (or publish the app).
2. **Credentials → Create credentials → OAuth client ID** → Web application.
   - Authorized JavaScript origins: `https://mcaliboso.github.io`
   - Authorized redirect URIs: the callback URL shown in Supabase under **Authentication → Sign In / Providers → Google** (it looks like `https://<project-ref>.supabase.co/auth/v1/callback`).
3. Copy the Client ID and Client secret into that Google provider page in Supabase and enable it.

## 5. Connect the site
**Project Settings → API Keys**: copy the Project URL and the **anon public** (or **publishable**) key into `config.js`. Never use the `service_role` / secret key.
