# SETD5 Syndrome Foundation — Website Handoff Guide

## Overview

The public website lives at **setd5syndrome.org**. It is a static HTML file hosted on GitHub Pages. There is no backend server, no CMS, and no framework — just HTML, CSS, and JavaScript.

---

## How It Works

The site is a **single-page application (SPA)**. The entire public website is one file: `index.html`. Navigation between pages (About, Research, Community, etc.) happens via JavaScript — no page reloads. The URL hash (e.g. `#research`) determines which section is shown.

---

## File Structure

```
SETD5 Foundation/
├── index.html                    ← entire public website
├── contact-thank-you.html        ← shown after contact form submission
├── newsletter-thank-you.html     ← shown after newsletter signup
├── volunteer-thank-you.html      ← shown after volunteer form submission
├── robots.txt                    ← allows search engines and Facebook scraper
├── social-preview.jpg            ← Open Graph image for link previews
├── images/                       ← board member photos
├── deploy.command                ← double-click to push from Mac (optional)
└── CLAUDE.md                     ← session memory for AI assistant
```

> **Note:** The board portal (`board/`) has been retired. All board documents were transferred to Google Drive before removal.

---

## Hosting & Deployment

- **Host:** GitHub Pages
- **Repository:** github.com/homekew/FOUNDATION---Setd5
- **Branch:** `master` — every push to master auto-deploys within a few minutes
- **Domain:** setd5syndrome.org (registered and managed in Cloudflare)

### To make a change and deploy

1. Edit the relevant HTML file directly
2. In Terminal, navigate to the folder and run:
   ```bash
   git add index.html
   git commit -m "Description of change"
   git push origin master
   ```
3. Wait 2–3 minutes for GitHub Pages to rebuild

> **Important:** The GitHub repo is currently under Kate Carr's personal GitHub account (`homekew`). It should be transferred to a Foundation-owned GitHub organization account as soon as possible so it is not tied to one person.

---

## Domain & DNS

Everything is managed in **Cloudflare** (cloudflare.com). Cloudflare controls:
- The domain registration for setd5syndrome.org
- All DNS records (MX, SPF, DKIM, DMARC, A records)
- Security rules

The A records point to GitHub Pages IPs. The site is currently set to **DNS Only** (no Cloudflare proxy).

---

## Email

Board member email addresses are managed through **Zoho Mail** (mail.zoho.com). All addresses follow the format `firstname@setd5syndrome.org`.

The admin account controls adding and removing users. Email authentication records (SPF, DKIM, DMARC) are configured in Cloudflare.

---

## Forms & Data

### Contact Form
- Platform: JotForm
- Form ID: `261491156349058`
- Submissions stored in JotForm dashboard
- Redirects to: `contact-thank-you.html`

### Newsletter Signup
- Platform: JotForm
- Form ID: `261491516889067`
- Submissions stored in JotForm dashboard
- Redirects to: `newsletter-thank-you.html`

### Volunteer Interest Form
- Platform: JotForm (different account — see note below)
- Form ID: `261026675977065`
- Connected to Airtable (volunteer roster)
- Redirects to: `volunteer-thank-you.html`

> **Note:** The volunteer form is on a different JotForm account than the contact and newsletter forms. This is a known issue that was not resolved before handoff.

---

## Key Integrations

| Service | Purpose | Login |
|---------|---------|-------|
| GitHub | Hosts the website | Update to Foundation account |
| Cloudflare | Domain, DNS, security | Update to Foundation account |
| Zoho Mail | Board email addresses | Update to Foundation admin |
| JotForm | Contact, newsletter, volunteer forms | Update to Foundation account |
| Airtable | Volunteer roster | Update to Foundation account |
| Facebook | Foundation page at facebook.com/setd5syndrome | Update admin |

---

## Making Common Changes

### Update text on the public website
Edit `index.html`. Search for the text you want to change and edit it directly. Push to master.

### Add a new research study to Clinical Studies page
In `index.html`, find the `id="clinical-studies"` section and add a new card inside the Active Studies section.

### Update board member information
In `index.html`, search for the board member's name. Bio information is in the JavaScript array near the bottom of the file.

### Change the Open Graph preview image (Facebook link preview)
Replace `social-preview.jpg` in the root folder and push to GitHub.

---

## Things Still Needed

- [ ] Transfer GitHub repo from personal account to Foundation GitHub organization
- [ ] Update all service logins to Foundation-owned accounts
- [ ] Set up bank account (board approval required)
- [ ] Form Scientific and Medical Advisory Board
- [ ] Connect contact and newsletter JotForm forms to Airtable for tracking
- [ ] Resolve dual JotForm account issue (volunteer form on separate account)

---

## Notes

- **setd5syndrome.com** (The Companion) is NOT a Foundation asset. It is independently owned and maintained by Kate Carr personally. Do not assume control over it.
- The website has no analytics configured. Consider adding Google Analytics or Plausible if you want traffic data.
- The site uses Google Fonts (Source Serif 4 and Plus Jakarta Sans) loaded from Google's CDN. An internet connection is required to see the correct fonts.
- The translate feature at the top of every page opens Google Translate in a new tab. It is a simple link, not an embedded widget.

---

*Last updated: June 2026*
