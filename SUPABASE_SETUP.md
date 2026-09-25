# 🥊 APEX CLUB — 3-Minute Supabase Quickstart

This turnkey system features a **Dual-Engine Architecture**. Out-of-the-box, it operates seamlessly using high-speed browser `localStorage`. To link your live Supabase cloud database, follow these 3 steps:

---

### Step 1: Create Your Supabase Project (1 min)
1. Go to [https://supabase.com](https://supabase.com) and create a new project.
2. Choose your preferred region and database password.

---

### Step 2: Execute SQL Migrations (1 min)
1. Navigate to the **SQL Editor** tab in your Supabase dashboard.
2. Open and copy the entire contents of `supabase/schema.sql` into the query editor, then click **RUN**.
3. (Optional) Run `supabase/seed.sql` to populate sample trainers, classes, and booking records.

---

### Step 3: Connect Frontend Hooks (1 min)
In `assets/js/db.js`, replace the placeholder credentials with your project's URL and Anon Key:

```javascript
const SUPABASE_URL = "https://YOUR_PROJECT.supabase.co";
const SUPABASE_ANON_KEY = "YOUR_ANON_KEY";
```

### ✅ That's It!
Your APEX CLUB instance is now connected to a high-concurrency PostgreSQL backend with Row-Level Security!
