# SD MOVIE ADDA

A responsive, dark cinematic movie catalog and detail page with original SD MOVIE ADDA branding. Built with Next.js and Supabase for Vercel.

## Deploy
1. Import this repository into Vercel. Framework preset: Next.js; build command: npm run build.
2. Create a Supabase project and run supabase/schema.sql in its SQL Editor.
3. Configure Vercel environment variables:
   - SUPABASE_URL
   - SUPABASE_SERVICE_ROLE_KEY (server-only; never use a NEXT_PUBLIC_ prefix)
   - WEBSITE_WEBHOOK_SECRET (a long random shared secret)
   - PUBLIC_TELEGRAM_URL (optional authorized channel or viewing link)
   - NEXT_PUBLIC_TELEGRAM_URL (optional public channel link shown in the header)
4. Redeploy after setting environment variables.

## Connect Dhanu Telegram AutoFilter on Koyeb
Set these environment variables in the bot service:
- WEBSITE_WEBHOOK_URL = https://YOUR-VERCEL-DOMAIN/api/movies
- WEBSITE_WEBHOOK_SECRET = exactly the same secret as Vercel

After the receiver successfully sends a media file to its configured destination, it posts parsed metadata to the website. If webhook variables are absent, the bot continues its existing workflow without publishing metadata. This integration publishes metadata only, not the media file itself.

## Notes
- Add only metadata and viewing links you are authorized to distribute.
- Posters are not scraped from third-party sites; poster_url remains empty unless a licensed image is added through an approved workflow.
- Vercel filesystem is not persistent, so Supabase stores the live catalog.
- The POST endpoint requires the shared secret in the X-Webhook-Secret header.
