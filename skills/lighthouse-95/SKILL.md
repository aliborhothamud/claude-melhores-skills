---
name: lighthouse-95
description: Use when a website must score 95+ in every Lighthouse category (Performance, Accessibility, Best Practices, SEO), when scores are stuck below target, or when diagnosing poor FCP, LCP, TBT, or CLS on a deployed site.
---

# Lighthouse 95+ in Every Category

## Overview

Never optimize blind. The loop is: **measure the real URL → identify the exact element/cause in the JSON → fix that one cause → redeploy → re-measure**. Guessing burns rounds; one identified cause is worth ten plausible optimizations.

## Iron Rules

1. **Measure the URL users actually hit.** Any host with preview/prod aliases (Vercel, Netlify, Cloudflare Pages): a plain deploy creates a *preview* — the public alias still serves the OLD production until you promote it (on Vercel: `--prod`). Measuring the stale deploy wastes a full round (this happens silently: scores just "don't move").
2. **No fix before identifying the cause.** Extract the LCP element and its phase breakdown from the JSON before touching anything.
3. **Verdict = 3 consecutive runs.** Throttled runs vary ±0.5s / ±4 points. One run proves nothing.

## Mobile AND Desktop

Lighthouse defaults to **MOBILE emulation** (mid-tier phone, slow 4G, 4x CPU throttle) — the hard mode, and what Google uses for Core Web Vitals. Desktop scores run 10–20 points higher. Measure **both**, optimize against the MOBILE run (fix mobile → desktop follows; the reverse is false), and never compare runs across presets.

## Measure & Diagnose

```bash
# Mobile (default emulation)
npx lighthouse https://SITE --output=json --output-path=./lh-mobile.json --quiet \
  --chrome-flags="--headless=new" \
  --only-categories=performance,accessibility,best-practices,seo

# Desktop (confirm after mobile passes)
npx lighthouse https://SITE --preset=desktop --output=json --output-path=./lh-desktop.json --quiet \
  --chrome-flags="--headless=new" \
  --only-categories=performance,accessibility,best-practices,seo
```

Then interrogate the JSON — never just read the scores:

```bash
node -e "
const r = require('./lh-mobile.json');
for (const [k,v] of Object.entries(r.categories)) console.log(k, Math.round(v.score*100));
// LCP element + phases (audit id varies by LH version):
const lcp = r.audits['lcp-breakdown-insight'] || r.audits['largest-contentful-paint-element'];
console.log(JSON.stringify(lcp?.details?.items, null, 1));
// TBT culprits:
r.audits['bootup-time']?.details?.items?.slice(0,5)
  .forEach(i => console.log('JS:', i.url.split('/').pop(), Math.round(i.total)+'ms'));
// a11y failures with exact selectors:
Object.values(r.audits).filter(a => a.score !== null && a.score < 1 &&
  r.categories.accessibility.auditRefs.some(x => x.id === a.id))
  .forEach(a => console.log('A11Y:', a.id, a.details?.items?.[0]?.node?.selector || ''));
"
```

## Fix Playbook (by identified cause)

| Cause (from JSON) | Fix |
|---|---|
| LCP is TEXT with high `elementRenderDelay` | It's waiting for a web font swap. Self-host, then **instance + subset** the font (below). A 129KB variable font became 21KB and moved LCP 2.9s → 1.7s. |
| LCP is IMAGE | `<link rel="preload" as="image" fetchpriority="high">` + explicit `width`/`height` + compress (sharp/mozjpeg, resize to display size). |
| High TBT from a JS lib (bootup-time) | Load it AFTER `window` `load` via injected script tags. Animation libs (GSAP etc.): invert visibility — **CSS never hides content; JS hides only below-fold elements right before animating them**. LCP, no-JS, and reduced-motion stay safe, and 1.2s of TBT becomes ~0. |
| FCP high, same-origin small page | Inline the critical CSS into `<head>` (kills the stylesheet round-trip). Trim preloads competing with the LCP resource. |
| Fonts from Google/CDN | Self-host woff2 (latin subset), `font-display: swap`, preload only slim critical files. Zero external origins is the end state. |
| a11y `color-contrast` | Check **CSS specificity bugs**, not just palette: a `.nav a { color }` rule can override `.btn-primary` and paint low-contrast text nobody intended. |
| a11y `landmark-one-main` | Wrap page content in `<main>`. |
| SEO/BP stragglers | Canonical link, meta description, `theme-color`, explicit image dimensions, HTTPS. |

## Font Instancing + Subsetting (the usual killer move)

```python
# pip install fonttools brotli
from fontTools.ttLib import TTFont
from fontTools.varLib.instancer import instantiateVariableFont
from fontTools.subset import Subsetter, Options

f = TTFont("font-variable.woff2")
if "fvar" in f:  # pin variable axes to the ONE weight you actually use
    instantiateVariableFont(f, {"wght": 600, "opsz": 48}, inplace=True)
opt = Options(); opt.flavor = "woff2"; opt.layout_features = ["*"]
s = Subsetter(opt)
s.populate(unicodes=range(0x20, 0x17F))  # latin + latin-ext; add smart quotes U+2013-2026
s.subset(f); f.flavor = "woff2"; f.save("font-600.woff2")
```

Update `@font-face` to `font-weight: 600` and fix any usage relying on other weights.

## Traps (each cost a real round)

| Trap | Reality |
|---|---|
| "Scores didn't move — my fix failed" | Check you measured the NEW deploy (preview vs production alias). |
| "Preloads are good, add them all" | A 129KB font preload starves the LCP image on 4G. Preload only what LCP needs; slim files first. |
| "Optimize images first, it's always images" | Today's LCP was an H1 waiting on a font. Identify the element first. |
| "One run at 95 = done" | Variance. Three consecutive runs ≥95, all categories, or keep going. |
| "Hide content in CSS, reveal with JS animations" | JS loads late/never → invisible page, failed LCP. Content visible by default; JS only hides what it will animate. |

## When NOT to Use

- **Field data (CrUX / real-user metrics)** — Lighthouse is a *lab* tool. If the problem is "Search Console says CWV failing", real-user conditions differ; lab 95+ does not guarantee a field pass.
- **localhost / dev mode** — dev bundles are unminified and unoptimized; scores are meaningless. Only measure deployed, production-built URLs.
- **SPAs measured only on the shell route** — measure the routes users actually land on.

## Verification Gate

Done means: **3 consecutive runs ≥95 in all four categories on MOBILE, plus one desktop run ≥95 confirming — production URL.** Report both metric tables (FCP/LCP/TBT/CLS) before/after, not just scores.
