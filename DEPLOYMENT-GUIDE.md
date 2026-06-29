# 🚦 How to Deploy Traffic Violation Tracker
## Complete beginner guide — takes about 15 minutes

---

## STEP 1 — Create a free Supabase account (database)

1. Go to https://supabase.com
2. Click **"Start your project"** → sign up with Google or email
3. Click **"New project"**
4. Fill in:
   - Name: `traffic-tracker`
   - Database password: (make one up, save it somewhere)
   - Region: pick the closest to Pakistan (e.g. Singapore)
5. Click **"Create new project"** — wait ~2 minutes for it to set up

---

## STEP 2 — Set up the database table

1. In Supabase, click **"SQL Editor"** in the left sidebar
2. Click **"New query"**
3. Open the file `supabase-setup.sql` from this folder
4. Copy ALL the text and paste it into the SQL editor
5. Click **"Run"** (green button)
6. You should see "Success. No rows returned"

---

## STEP 3 — Get your Supabase keys

1. In Supabase, click **"Project Settings"** (gear icon, bottom left)
2. Click **"API"**
3. You'll see two values — copy them:
   - **Project URL** → looks like `https://xyzxyz.supabase.co`
   - **anon public key** → a long string starting with `eyJ...`
4. Keep these copied, you'll need them in Step 5

---

## STEP 4 — Create a free Vercel account (hosting)

1. Go to https://vercel.com
2. Click **"Sign Up"** → sign up with GitHub
   - If you don't have GitHub: go to https://github.com and create a free account first
3. Once signed in to Vercel, you're ready

---

## STEP 5 — Upload your code to GitHub

1. Go to https://github.com/new
2. Name: `traffic-tracker`, set to **Private**, click **"Create repository"**
3. You'll see instructions — follow the "upload files" option:
   - Click **"uploading an existing file"**
   - Drag and drop the entire `traffic-app` folder
   - Click **"Commit changes"**

---

## STEP 6 — Deploy to Vercel

1. Go back to https://vercel.com/dashboard
2. Click **"Add New Project"**
3. Find and select your `traffic-tracker` GitHub repo → click **"Import"**
4. Before clicking Deploy, click **"Environment Variables"**
5. Add two variables:
   - Name: `NEXT_PUBLIC_SUPABASE_URL` → paste your Supabase Project URL
   - Name: `NEXT_PUBLIC_SUPABASE_ANON_KEY` → paste your Supabase anon key
6. Click **"Deploy"** — wait ~2 minutes

---

## STEP 7 — Your app is live! 🎉

Vercel will give you a URL like:
**https://traffic-tracker-abc123.vercel.app**

That's your live app! Share it with anyone.

To give it a custom domain name (e.g. traffictracker.pk):
- Buy a domain at https://pknic.net.pk (Pakistan) or https://namecheap.com
- In Vercel → your project → "Domains" → add your domain → follow instructions

---

## Troubleshooting

**"Invalid login credentials"** → make sure you confirmed your email after signing up

**Blank page / error** → double-check your Supabase URL and key in Vercel environment variables

**Table not found error** → make sure you ran the SQL in Step 2

---

## Need help?

Ask Claude! Paste the error message and say "I'm setting up my traffic tracker app"
