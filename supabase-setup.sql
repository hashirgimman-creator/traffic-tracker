-- Run this in your Supabase SQL Editor

create table violations (
  id uuid default gen_random_uuid() primary key,
  plate text not null,
  driver text,
  vehicle text,
  type text not null,
  location text not null,
  severity text not null default 'Medium',
  notes text,
  created_at timestamptz default now()
);

-- Allow logged-in users to read/write their org's data
alter table violations enable row level security;

create policy "Authenticated users can do everything"
  on violations for all
  using (auth.role() = 'authenticated')
  with check (auth.role() = 'authenticated');
