#!/bin/bash
# Stamp out 8 banner directions × 2 platform sizes (LinkedIn 1584x396, Facebook 851x315)
# from inline markup templates. Each output is a standalone HTML file the size of the
# actual social cover, so it can be screenshotted directly to ship.

set -euo pipefail

OUT="/Users/kanesivesind/Coding/email-sig/social-banners/banners"
mkdir -p "$OUT"

# Sizes: ID:WIDTH:HEIGHT
SIZES=(
  "linkedin:1584:396"
  "facebook:851:315"
)

# Each direction is a function emitting the inner markup with --w/--h variables.
# We wrap with the same outer scaffolding for every direction.

write_page() {
  local id="$1" title="$2" w="$3" h="$4" platform="$5" body="$6" cls="$7"
  local s
  s=$(awk "BEGIN { printf \"%.6f\", $h / 396 }")
  local out="$OUT/${id}-${platform}.html"
  cat > "$out" <<EOF
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <title>Pharos — ${title} · ${platform} ${w}×${h}</title>
  <link rel="stylesheet" href="../banners.css" />
</head>
<body>
  <div class="banner ${cls}" style="--w: ${w}px; --h: ${h}px; --s: ${s};">
${body}
  </div>
</body>
</html>
EOF
  echo "wrote $out"
}

# ============================================================
# Direction 1 — Heritage Band
# ============================================================
heritage_body() {
cat <<'BODY'
    <div class="banner__rule-top"></div>

    <!-- Vertical gold side-rule pacing the headline left margin -->
    <div class="gold-side-rule heritage__side-rule"></div>

    <div class="heritage__eyebrow">
      <span class="eyebrow">Pharos Wealth Partners</span>
    </div>

    <h1 class="headline heritage__headline">
      A <em><span class="gold-underline">fixed point</span></em><br />
      <span class="headline--soft">in shifting markets.</span>
    </h1>

    <!-- Lighthouse "porthole" stamp: outer gold ring, dashed inner echo,
         four cardinal tick marks. Reads as a compass coin or seal. -->
    <div class="heritage__ring"></div>
    <div class="heritage__ring heritage__ring--inner"></div>
    <span class="heritage__tick heritage__tick--n"></span>
    <span class="heritage__tick heritage__tick--s"></span>
    <span class="heritage__tick heritage__tick--e"></span>
    <span class="heritage__tick heritage__tick--w"></span>
    <div class="heritage__lighthouse-wrap">
      <img class="lighthouse-shadow" src="../assets/logos/lighthouse-mark-white.png" alt="Pharos lighthouse" />
    </div>

    <div class="heritage__bottom">
      <div class="lockup">
        <img class="lockup__nm" src="../assets/nm-wordmark-white.svg" alt="Northwestern Mutual" />
        <span class="lockup__divider"></span>
        <span style="font-family: var(--font-heading); font-size: calc(15px * var(--s)); font-weight: 700; color: #fff; letter-spacing: 0.2px;">
          Pharos Wealth Partners
        </span>
      </div>
      <div class="heritage__location">Middleton &middot; Wisconsin</div>
    </div>
BODY
}

# ============================================================
# Direction 2 — Three-band typographic (white field)
# ============================================================
typographic_body() {
cat <<'BODY'
    <div class="banner__rule-top"></div>

    <!-- Gold corner brackets framing the white field as a passport stamp -->
    <span class="typographic__corner typographic__corner--tl"></span>
    <span class="typographic__corner typographic__corner--tr"></span>
    <span class="typographic__corner typographic__corner--bl"></span>
    <span class="typographic__corner typographic__corner--br"></span>

    <div class="typographic__inner">
      <div class="typographic__eyebrow">
        <span class="eyebrow eyebrow--lg eyebrow--centered">Pharos Wealth Partners &middot; Est. 2024</span>
      </div>

      <h1 class="headline headline--ink typographic__headline">
        The plan is the <em>relationship</em>.
      </h1>

      <div class="typographic__credentials">
        Jordan Kosnick, ChFC<sup>&reg;</sup>, RICP<sup>&reg;</sup>, CLU<sup>&reg;</sup>, CLF<sup>&reg;</sup>
      </div>
    </div>

    <!-- Bottom hairline with centered gold diamond fleuron -->
    <div class="typographic__hairline"></div>
    <div class="typographic__lockup">
      <div class="lockup">
        <img class="lockup__nm" src="../assets/nm-wordmark-navy.png" alt="Northwestern Mutual" />
        <span class="lockup__divider lockup__divider--ink"></span>
        <span style="font-family: var(--font-heading); font-size: calc(15px * var(--s)); font-weight: 700; color: var(--pharos-navy); letter-spacing: 0.2px;">
          Pharos Wealth Partners
        </span>
      </div>
    </div>
BODY
}

# ============================================================
# Direction 3 — Lighthouse beam
# ============================================================
beam_body() {
cat <<'BODY'
    <!-- Beam stack: soft outer glow → horizontal cone → bright core →
         eight short rays. Each layer adds a different quality (softness,
         direction, source, sparkle) so the beam reads as actual light. -->
    <div class="beam__glow"></div>
    <div class="beam__cone"></div>
    <svg class="beam__rays" viewBox="-100 -100 200 200" xmlns="http://www.w3.org/2000/svg">
      <g stroke="#f0b428" stroke-width="0.6" stroke-linecap="round">
        <line x1="-90" y1="0" x2="-30" y2="0" opacity="0.9" />
        <line x1="90" y1="0" x2="30" y2="0" opacity="0.5" />
        <line x1="0" y1="-90" x2="0" y2="-30" opacity="0.6" />
        <line x1="0" y1="90" x2="0" y2="30" opacity="0.6" />
        <line x1="-64" y1="-64" x2="-22" y2="-22" opacity="0.55" />
        <line x1="64" y1="-64" x2="22" y2="-22" opacity="0.4" />
        <line x1="-64" y1="64" x2="-22" y2="22" opacity="0.55" />
        <line x1="64" y1="64" x2="22" y2="22" opacity="0.4" />
      </g>
    </svg>
    <div class="beam__core"></div>

    <div class="banner__rule-top"></div>

    <div class="beam__lighthouse">
      <img class="lighthouse-shadow" src="../assets/logos/lighthouse-mark-white.png" alt="Pharos lighthouse" />
    </div>

    <div class="beam__type">
      <div class="beam__eyebrow">
        <span class="eyebrow">A steady hand &middot; Middleton, WI</span>
      </div>
      <h1 class="headline beam__headline">
        Steady light.<br />Through <em><span class="gold-underline">every cycle</span></em>.
      </h1>
    </div>

    <div class="beam__lockup">
      <div class="lockup">
        <img class="lockup__nm" src="../assets/nm-wordmark-white.svg" alt="Northwestern Mutual" />
        <span class="lockup__divider"></span>
        <span style="font-family: var(--font-heading); font-size: calc(15px * var(--s)); font-weight: 700; color: #fff; letter-spacing: 0.2px;">
          Pharos Wealth Partners
        </span>
      </div>
    </div>
BODY
}

# ============================================================
# Direction 4 — By the numbers
# ============================================================
numbers_body() {
cat <<'BODY'
    <div class="numbers__sidebar">
      <div class="numbers__sidebar-rule"></div>
      <div class="numbers__sidebar-mark">
        <img src="../assets/logos/lighthouse-mark-white.png" alt="Pharos lighthouse" />
        <div class="numbers__sidebar-name">Pharos<br />Wealth Partners</div>
      </div>
      <div class="numbers__sidebar-nm">
        <img src="../assets/nm-wordmark-white.svg" alt="Northwestern Mutual" />
      </div>
    </div>

    <div class="numbers__panel">
      <div class="numbers__eyebrow">
        <span class="eyebrow">What twenty-two years of relationships look like</span>
      </div>
      <div class="numbers__grid">
        <div class="numbers__cell">
          <div class="numbers__num">$4M</div>
          <div class="numbers__label">Average household assets</div>
        </div>
        <div class="numbers__cell">
          <div class="numbers__num">22</div>
          <div class="numbers__label">Avg. years of client tenure</div>
        </div>
        <div class="numbers__cell">
          <div class="numbers__num">3</div>
          <div class="numbers__label">Generations of families served</div>
        </div>
      </div>
    </div>
BODY
}

# ============================================================
# Direction 5 — Coordinates
# ============================================================
coordinates_body() {
cat <<'BODY'
    <div class="banner__rule-top"></div>

    <!-- faint chart grid -->
    <svg style="position: absolute; inset: 0; width: 100%; height: 100%; opacity: 0.08;" xmlns="http://www.w3.org/2000/svg">
      <defs>
        <pattern id="grid5" width="40" height="40" patternUnits="userSpaceOnUse">
          <path d="M 40 0 L 0 0 0 40" fill="none" stroke="#fff" stroke-width="0.5" />
        </pattern>
      </defs>
      <rect width="100%" height="100%" fill="url(#grid5)" />
    </svg>

    <!-- compass rose -->
    <svg class="coordinates__compass" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
      <circle cx="50" cy="50" r="46" fill="none" stroke="#c8a14a" stroke-width="0.6" />
      <circle cx="50" cy="50" r="38" fill="none" stroke="#fff" stroke-width="0.4" opacity="0.4" />
      <!-- 32 tick marks: cardinals long, ordinals medium, rest short -->
      <g stroke="#fff" stroke-width="0.4">
        <line x1="50" y1="4" x2="50" y2="14" opacity="0.9" />
        <line x1="50" y1="86" x2="50" y2="96" opacity="0.9" />
        <line x1="4" y1="50" x2="14" y2="50" opacity="0.9" />
        <line x1="86" y1="50" x2="96" y2="50" opacity="0.9" />
        <line x1="17.5" y1="17.5" x2="22.5" y2="22.5" opacity="0.6" />
        <line x1="82.5" y1="17.5" x2="77.5" y2="22.5" opacity="0.6" />
        <line x1="17.5" y1="82.5" x2="22.5" y2="77.5" opacity="0.6" />
        <line x1="82.5" y1="82.5" x2="77.5" y2="77.5" opacity="0.6" />
      </g>
      <!-- north needle -->
      <path d="M 50 12 L 54 50 L 50 88 L 46 50 Z" fill="#fff" opacity="0.85" />
      <path d="M 50 12 L 54 50 L 50 50 Z" fill="#c8a14a" />
      <circle cx="50" cy="50" r="2" fill="#c8a14a" />
      <text x="50" y="9" text-anchor="middle" font-size="6"
            font-family="Source Serif Pro, Georgia, serif" font-weight="700" fill="#c8a14a">N</text>
    </svg>

    <!-- Reticle marks at top-left and bottom-left — chartmaker's
         crosshairs reinforcing "a fixed point" -->
    <span class="coordinates__reticle coordinates__reticle--tl"></span>
    <span class="coordinates__reticle coordinates__reticle--bl"></span>

    <div class="coordinates__type">
      <div class="coordinates__eyebrow">
        <span class="eyebrow">Pharos &middot; 43.0986&deg; N &middot; 89.5039&deg; W</span>
      </div>
      <h1 class="headline coordinates__headline">
        True north<br />
        <span class="headline--gold-italic">in every market cycle.</span>
      </h1>
    </div>

    <div class="coordinates__bottom">
      <div class="lockup">
        <img class="lockup__nm" src="../assets/nm-wordmark-white.svg" alt="Northwestern Mutual" />
        <span class="lockup__divider"></span>
        <span style="font-family: var(--font-heading); font-size: calc(15px * var(--s)); font-weight: 700; color: #fff; letter-spacing: 0.2px;">
          Pharos Wealth Partners
        </span>
      </div>
      <div class="coordinates__location">Middleton, Wisconsin</div>
    </div>
BODY
}

# ============================================================
# Direction 6 — Horizon
# ============================================================
horizon_body() {
cat <<'BODY'
    <!-- Sky atmosphere: faint horizontal bands suggesting haze near
         the horizon line — adds depth without literal clouds. -->
    <div class="horizon__sky-bands"></div>
    <div class="horizon__water"></div>
    <div class="horizon__hairline"></div>

    <!-- Two faint distant lamps along the horizon to extend the sense
         of space beyond the frame. -->
    <div class="horizon__distant-lamp horizon__distant-lamp--a"></div>
    <div class="horizon__distant-lamp horizon__distant-lamp--b"></div>

    <div class="horizon__lamp"></div>
    <div class="horizon__reflection"></div>

    <div class="horizon__lighthouse">
      <img class="lighthouse-shadow" src="../assets/logos/lighthouse-mark-white.png" alt="Pharos lighthouse" />
    </div>

    <div class="banner__rule-top"></div>

    <div class="horizon__type">
      <div class="horizon__eyebrow">
        <span class="eyebrow">Pharos Wealth Partners</span>
      </div>
      <h1 class="headline horizon__headline">
        Defense first.<br /><em><span class="gold-underline">Then dream</span></em>.
      </h1>
      <p class="subhead horizon__sub">
        Multigenerational planning, built one family at a time.
      </p>
    </div>

    <div class="horizon__lockup">
      <div class="lockup">
        <img class="lockup__nm" src="../assets/nm-wordmark-white.svg" alt="Northwestern Mutual" />
        <span class="lockup__divider"></span>
        <span style="font-family: var(--font-heading); font-size: calc(14px * var(--s)); font-weight: 700; color: #fff; letter-spacing: 0.2px;">
          Pharos Wealth Partners
        </span>
      </div>
    </div>
BODY
}

# ============================================================
# Direction 7 — Team, anchored
# ============================================================
team_anchored_body() {
cat <<'BODY'
    <div class="team-anchored__photo">
      <img src="../assets/team-photo.jpg" alt="Pharos team" />
    </div>

    <div class="banner__rule-top"></div>

    <!-- Gold corner brackets framing the type stack on the navy field -->
    <span class="team-anchored__corner team-anchored__corner--tl"></span>
    <span class="team-anchored__corner team-anchored__corner--bl"></span>
    <div class="gold-side-rule team-anchored__side-rule"></div>

    <div class="team-anchored__type">
      <div class="team-anchored__eyebrow">
        <span class="eyebrow">The Pharos team &middot; Middleton, WI</span>
      </div>
      <h1 class="headline team-anchored__headline">
        A four-person practice.<br />
        <span class="headline--soft">Built for <em><span class="gold-underline">households like yours</span></em>.</span>
      </h1>
    </div>

    <div class="team-anchored__lockup">
      <div class="lockup">
        <img class="lockup__nm" src="../assets/nm-wordmark-white.svg" alt="Northwestern Mutual" />
        <span class="lockup__divider"></span>
        <span style="font-family: var(--font-heading); font-size: calc(15px * var(--s)); font-weight: 700; color: #fff; letter-spacing: 0.2px;">
          Pharos Wealth Partners
        </span>
      </div>
    </div>
BODY
}

# ============================================================
# Direction 8 — Team, light field
# ============================================================
team_light_body() {
cat <<'BODY'
    <div class="banner__rule-top"></div>

    <div class="team-light__photo-wrap">
      <img src="../assets/team-photo.jpg" alt="Pharos team" />
    </div>

    <!-- Gold side-rule pacing the cream headline left margin -->
    <div class="gold-side-rule team-light__side-rule"></div>

    <div class="team-light__type">
      <div class="team-light__eyebrow">
        <span class="eyebrow">The Pharos team</span>
      </div>
      <h1 class="headline headline--ink team-light__headline">
        Planning that compounds.
      </h1>
      <p class="subhead subhead--ink team-light__sub">
        <em>Multigenerational planning</em> from a four-person team in Middleton, Wisconsin.
      </p>
    </div>

    <div class="team-light__footer">
      <div class="lockup">
        <img class="lockup__nm" src="../assets/nm-wordmark-white.svg" alt="Northwestern Mutual" />
        <span class="lockup__divider"></span>
        <span style="font-family: var(--font-heading); font-size: calc(14px * var(--s)); font-weight: 700; color: #fff; letter-spacing: 0.2px;">
          Pharos Wealth Partners
        </span>
      </div>
    </div>
BODY
}

# Loop through directions × sizes. Format: id:title:fn:cssClass
DIRECTIONS=(
  "01-heritage:Heritage Band:heritage_body:heritage"
  "02-typographic:Three-band Typographic:typographic_body:typographic"
  "03-beam:Lighthouse Beam:beam_body:beam"
  "05-coordinates:Coordinates:coordinates_body:coordinates"
  "06-horizon:Horizon:horizon_body:horizon"
  "07-team-anchored:Team, Anchored:team_anchored_body:team-anchored"
  "08-team-light:Team, Light Field:team_light_body:team-light"
)

for d in "${DIRECTIONS[@]}"; do
  IFS=":" read -r id title fn cls <<< "$d"
  body=$($fn)
  for sz in "${SIZES[@]}"; do
    IFS=":" read -r platform w h <<< "$sz"
    write_page "$id" "$title" "$w" "$h" "$platform" "$body" "$cls"
  done
done
