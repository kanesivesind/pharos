# Pharos Wealth Partners — Design System

Extracted from the email signature suite. Use this as the source of truth for all Pharos collateral: social graphics, presentations, web pages, print, video.

---

## Brand Spirit

**Heritage finance, precise execution.** Conservative enough to signal trust with affluent clients; restrained enough to read as modern, not stuffy. The signature design intentionally uses one accent color and one serif heading font — keep collateral disciplined, not decorative.

**Voice in design:**
- Authority through whitespace, not weight
- Gold as a punctuation mark, never a flood
- Hairline rules > heavy borders
- Tight letter-spacing on uppercase labels (institutional finance convention)
- Headshots/photography are crisp, neutral-background, business-formal

---

## Color Tokens

| Token | Hex | Role |
|---|---|---|
| `--pharos-navy` | `#164A7B` | Primary. Headings, links, buttons, logo bands, brand voice |
| `--pharos-gold` | `#c8a14a` | Accent only. Top rules, mini-eyebrows, dividers in heritage contexts |
| `--ink-900` | `#2a2a2a` | Primary body text |
| `--ink-700` | `#444444` | Secondary body, table cells |
| `--ink-500` | `#555555` | Muted body (titles, metadata) |
| `--ink-400` | `#777777` | Tertiary, supporting copy |
| `--ink-300` | `#888888` | Disclaimers, fine print |
| `--ink-200` | `#aaaaaa` | Italicized fine print |
| `--rule-100` | `#e6e9ee` | Hairline dividers |
| `--rule-200` | `#d7dde5` | Borders (image frames) |
| `--surface-50` | `#fafbfc` | Off-white card backgrounds |
| `--surface-0` | `#ffffff` | Pure white |

**Pairing rules:**
- Navy on white → primary text
- White on navy → footer bands, hero bands
- Gold ONLY on: navy backgrounds (text), white backgrounds (3px top rules, dividers, mini-eyebrow text). Never gold-on-gold, never gold body copy at small sizes.
- Body text → always `--ink-900` on white. Don't drop body copy below `--ink-500` for paragraphs.

---

## Typography

### Type Family
- **Headings / brand voice:** **Georgia** (or Times New Roman as fallback). Serif. The signature uses Georgia for the name itself — extend this to all headings, hero copy, and editorial moments.
- **Body / UI / labels:** **Arial** (or Helvetica, system sans-serif as fallback). Sans-serif. Use for everything that isn't a heading or eyebrow.

For premium digital work where webfonts are available, the closest premium pairings are:
- Heading: **Source Serif Pro**, **Lora**, or **Playfair Display** (more dramatic)
- Body: **Inter**, **Source Sans Pro**, or **Helvetica Neue**

### Type Scale

| Level | Family | Size | Weight | Letter-spacing | Use |
|---|---|---|---|---|---|
| Display | Georgia | 32-48px | bold | -0.5px | Hero headlines, slide titles |
| H1 | Georgia | 24-28px | bold | -0.2px | Page/section titles |
| H2 | Georgia | 19-22px | bold | -0.1px | Names, subsection titles |
| H3 | Arial | 16-18px | bold | 0.2px | Card titles, table headers |
| Body | Arial | 13-14px | regular | 0.2px | Paragraphs, lists, UI |
| Body-sm | Arial | 12px | regular | 0.2px | Table cells, metadata |
| **Eyebrow** | Arial | 10px | **bold** | **1.8-2px** | **All caps, gold or navy. Section labels.** |
| Caption | Arial | 11px | regular | 0.2px | Photo captions |
| Fine print | Arial | 9-10px | regular | 0 | Legal/disclaimer |

### Line Heights
- Headlines: `1.2` (tight)
- Body: `1.5` (signature standard) to `1.6` (long-form)
- Fine print: `1.5`

### The Eyebrow Pattern (signature move)
```
SECTION LABEL HERE
```
- Arial 10px, bold
- letter-spacing: 1.8-2px
- text-transform: uppercase
- color: `--pharos-gold` for premium contexts, `--pharos-navy` for utility
- Used in signature as "THE PHAROS TEAM" and credentials line. Reuse for slide section dividers, social post categories, document chapter markers.

---

## Spacing Scale (8pt grid)

| Token | px | Use |
|---|---|---|
| `space-1` | 4 | Inline icon-to-text gap |
| `space-2` | 8 | Between tightly related items |
| `space-3` | 12 | Standard text padding |
| `space-4` | 16 | Card padding, section spacing |
| `space-5` | 22 | Component vertical rhythm |
| `space-6` | 28 | Section padding |
| `space-7` | 40 | Major section breaks |
| `space-8` | 64 | Hero/landing page breaks |

**Signature pattern:** padding inside cards is `space-5` to `space-6`. Top/bottom of major bands is `space-6`. Stick to this rhythm.

---

## Borders & Rules

- **Hairline divider:** `1px solid #e6e9ee` — between content blocks, between table cells
- **Image frame:** `1px solid #d7dde5` — around headshots and photography
- **Heritage top rule:** `3px solid #c8a14a` — sits between navy footer band and content above. Signature accent. Use sparingly: hero bands, footer bands, certificate-style layouts.
- **No border-radius on photographs** in print/email contexts (Outlook compatibility). For digital-only assets, `border-radius: 3-4px` on photos is fine but keep it subtle. Avoid pill shapes or fully-round photo crops — off-brand for the heritage tone.
- **Buttons / cards in digital:** `border-radius: 4px` max.

---

## Layout Patterns

### The Three-Band Composition (signature anchor pattern)
The signatures use a top → middle → bottom band structure. This is the signature compositional move. Replicate in:
- **Slides:** title band / content band / footer band with logo
- **Social posts:** headline band / quote/visual / brand band with logo
- **Web hero:** eyebrow / headline / CTA strip
- **Print:** masthead / body / footer

Each band has clear color separation: white → off-white `#fafbfc` → navy.

### Card Pattern
- Background: `#fafbfc` (subtle off-white)
- Border-top: `1px solid #e6e9ee`
- Padding: `space-5` (22px) inside
- Eyebrow at top in gold or navy
- Content stacked vertically with `space-3` gaps

### Navy Footer Band
- Background: `#164A7B`
- Border-top: `3px solid #c8a14a` (the heritage rule)
- Padding: `space-6` (22-28px) vertical, `space-7` (28px) horizontal
- Logo(s) in white, anchored left and right with vertical-align middle
- Use this band as the "stamp" on every asset — even social graphics get this treatment in some form

---

## Iconography

Signatures use **Icons8 ios-filled** style icons (filled glyph, not outlined) tinted to `--pharos-navy`. Sizes: 11px for inline text, 22px for social media icons.

**Rules:**
- Always tint to navy, never multicolor
- Filled style (not outline) for institutional weight
- Match icon visual weight to surrounding text — don't oversize
- Sources: Icons8, Feather (filled variants), Lucide (with fill applied)

For larger contexts (slides, social), use the same filled style at 24-32px.

---

## Photography Direction

The signature headshots define the photo style:
- **Background:** Light grey or warm off-white (`~#e8e6e3` to `~#f0eee8`). NOT pure white.
- **Crop:** Chest-up, 5:7 aspect ratio (portrait), face occupies upper-center
- **Wardrobe:** Business formal — navy, charcoal, black blazers
- **Lighting:** Soft, even, no harsh shadows
- **Expression:** Warm but composed, light smile, direct eye contact
- **Treatment:** Natural color, NO heavy filters, no B&W

For lifestyle/scene photography (e.g. social posts):
- Earth tones, navy accents, neutral spaces
- Natural light, golden hour acceptable
- People-focused but uncluttered
- Avoid stocky stock — prefer real or AI-generated with editorial restraint

---

## Logo Usage

### Pharos Logo
Located in `/pharos-logos/`. Lighthouse-and-wordmark mark. Use the standard color version on white/light backgrounds, white version on navy.

### Lockup with Northwestern Mutual
The signature establishes the canonical lockup: **NM logo left, Pharos logo right, both at 32px height, against navy band**. This is required by NM compliance — any external collateral needs to maintain NM presence.

### Clear Space
Minimum clear space around any logo = the height of the lighthouse icon × 0.5 on all sides.

### Minimum Sizes
- Pharos logo: 80px wide minimum
- NM logo: 120px wide minimum
- Below these, drop one and use just the larger

---

## Component Patterns

### Button (digital)
```css
background: #164A7B;
color: #ffffff;
font-family: Arial, sans-serif;
font-size: 13px;
font-weight: bold;
letter-spacing: 0.5px;
padding: 12px 24px;
border: 0;
border-radius: 3px;
text-transform: none;  /* sentence case for primary */
```

**Secondary button:** white background, 1px navy border, navy text.

**Tertiary / link button:** navy text underlined or navy text with gold dot before it (`· Get started`).

### Quote Block (for social, slides)
```
[Gold 3px top rule]
[Eyebrow: "CLIENT INSIGHT"]
[Georgia serif italic, 22-28px, navy]
"Quote text here, kept short and sharp."
[Hairline divider]
[Attribution: Arial 12px, ink-500]
— Name, Title
```

### Stat Block
```
[Eyebrow: "BY THE NUMBERS"]
[Georgia bold, 48-72px, navy]   ← The big number
[Arial 13px, ink-500]            ← The descriptor
```

### Three-Column Team Card (signature-native)
Used in signature, replicate everywhere a team appears:
- 4 vertical columns, separated by 1px hairline rules
- Each column: bold name in navy + light grey title beneath
- Eyebrow above the whole row in gold, all-caps

---

## Tone & Copy Voice (design-adjacent)

The design only works if copy matches. Voice principles:
- **Direct, never folksy.** "We help you plan for retirement," not "Let's chat about your golden years!"
- **Specifics over adjectives.** "$4M average household assets" not "high-net-worth families."
- **Precision in numbers.** Always tabular figures (`font-variant-numeric: tabular-nums`) for any number-heavy layout.
- **Em-dashes and middots, not exclamation points.**
- **Sentence case for headlines**, not Title Case (modern). All-caps reserved for eyebrows only.

---

## Quick-Reference: Color & Type Tokens for Pasting

```css
:root {
  /* Brand */
  --pharos-navy: #164A7B;
  --pharos-gold: #c8a14a;

  /* Ink scale */
  --ink-900: #2a2a2a;
  --ink-700: #444444;
  --ink-500: #555555;
  --ink-400: #777777;
  --ink-300: #888888;

  /* Surfaces */
  --surface-0: #ffffff;
  --surface-50: #fafbfc;
  --rule-100: #e6e9ee;
  --rule-200: #d7dde5;

  /* Type */
  --font-heading: Georgia, "Times New Roman", serif;
  --font-body: Arial, Helvetica, sans-serif;
}
```

---

## Anti-Patterns (Do NOT do these)

- ❌ Gradient backgrounds — clashes with the heritage tone
- ❌ Drop shadows on cards (use hairline rules)
- ❌ Multiple accent colors — gold is the only accent
- ❌ Rounded photo crops or pill shapes
- ❌ Sans-serif headings — Georgia is the brand voice
- ❌ Casual emoji or playful illustration
- ❌ Animated GIFs in serious collateral (subtle motion in slides is OK)
- ❌ Stock photography with obvious "stock" feel
- ❌ Dark mode for outward-facing assets — Pharos lives in white/navy

---

## When in Doubt

The signatures themselves are the canonical reference. If you're unsure how something should look, ask: *"Would this fit visually next to the email signature?"* If yes, ship it. If no, simplify until it does.

Files in this repo:
- `/signatures/jordan.html` — most expressive variant (with credentials and social)
- `/signatures/brenda.html` — minimal variant (cleanest baseline)
- `/pharos-logos/` — logo assets
- `/nm-mutual-logos/` — Northwestern Mutual lockup assets

For Claude design generation: paste this entire file as context, then describe the asset.
