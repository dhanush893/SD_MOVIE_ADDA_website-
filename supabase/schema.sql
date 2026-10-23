create table if not exists public.movies (slug text primary key,title text not null,year text,language text,quality text,file_name text,file_size_mb numeric,synopsis text,poster_url text,telegram_url text,source_message_id text,status text not null default 'published' check (status in ('draft','published','hidden')),created_at timestamptz not null default now(),updated_at timestamptz not null default now());
create index if not exists movies_status_created_idx on public.movies(status,created_at desc);
alter table public.movies enable row level security;
-- Server-side API uses the service-role key; never expose that key to the browser.
