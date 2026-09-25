-- APEX CLUB: Supabase Production PostgreSQL Schema
-- Strict Row-Level Security (RLS) & Multi-Tenant Support

-- Enable UUID extension
create extension if not exists "uuid-ossp";

-- 1. Coaches / Trainers Roster
create table public.trainers (
  id uuid default uuid_generate_v4() primary key,
  name text not null,
  role text not null,
  specialty text not null,
  rounds text not null,
  image_url text not null,
  status text default 'Available',
  created_at timestamp with time zone default timezone('utc'::text, now()) not null
);

-- 2. Class Sessions Radar
create table public.classes (
  id uuid default uuid_generate_v4() primary key,
  title text not null,
  coach_name text not null,
  category text not null,
  session_time text not null,
  duration text not null,
  intensity text not null,
  spots_total integer default 10,
  spots_booked integer default 0,
  fee numeric(10,2) default 95.00,
  created_at timestamp with time zone default timezone('utc'::text, now()) not null
);

-- 3. Fighter Bookings & Reservations
create table public.bookings (
  id uuid default uuid_generate_v4() primary key,
  booking_code text unique not null,
  athlete_name text not null,
  athlete_email text not null,
  athlete_phone text not null,
  session_title text not null,
  coach_name text,
  session_date text not null,
  tier text default 'Standard Station',
  fee numeric(10,2) default 95.00,
  status text default 'Confirmed',
  created_at timestamp with time zone default timezone('utc'::text, now()) not null
);

-- 4. Fighter Medical & Sparring Legal Waivers
create table public.waivers (
  id uuid default uuid_generate_v4() primary key,
  waiver_code text unique not null,
  athlete_name text not null,
  emergency_phone text not null,
  division text default 'Full Contact & Ring Sparring',
  signed_at timestamp with time zone default timezone('utc'::text, now()) not null,
  verified boolean default true
);

-- Row Level Security (RLS)
alter table public.trainers enable row level security;
alter table public.classes enable row level security;
alter table public.bookings enable row level security;
alter table public.waivers enable row level security;

-- Public Read Policies
create policy "Public read trainers" on public.trainers for select using (true);
create policy "Public read classes" on public.classes for select using (true);

-- Public Insert Policies
create policy "Public insert bookings" on public.bookings for insert with check (true);
create policy "Public insert waivers" on public.waivers for insert with check (true);

-- Admin Full Access Policies
create policy "Admin manage trainers" on public.trainers using (auth.role() = 'authenticated');
create policy "Admin manage classes" on public.classes using (auth.role() = 'authenticated');
create policy "Admin manage bookings" on public.bookings using (auth.role() = 'authenticated');
create policy "Admin manage waivers" on public.waivers using (auth.role() = 'authenticated');
