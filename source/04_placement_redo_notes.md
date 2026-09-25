# Placement redo notes (transcript-based)

Date: 2026-09-25 00:47 

## Method
1. Start from `audit/*_relevant.json` in-scope lists (348 videos).
2. Fetch English captions via yt-dlp (`--write-auto-sub --write-sub --skip-download --sub-lang en`), clean VTT → plain text under `transcripts/<channel>/<id>.txt`. When captions are missing, download audio and transcribe with Whisper (`faster-whisper`); mark `transcript_source: whisper`.
3. Write a content summary from the transcript into `transcripts/summaries.jsonl`.
4. Place **only** when transcript phrases honestly match a Wong TOC section (or Foundations). Title-substring matching is banned; hard bans cover known false friends (`digital`≠signatures, `hiding`≠commitments, Tor≠BitTorrent, breadboard≠Kerckhoff).
5. Prefer omission over noise. Unplaced-in-scope is acceptable.
6. Outline rebuilt from authoritative `chapter_headings.json` (no invented Tor-under-12.3.1 nodes; no orphan keyword leaves like bare `hiding`).
7. Layering: Computerphile → 3Blue1Brown → Sebastian Lague → Ben Eater → Numberphile/Numberphile2/Stand-up Maths/Matt_Parker_2.

## Counts
| | Before (keyword/heuristic) | After (transcript) |
|---|---|---|
| Video attachments | 348 | 280 |
| Unplaced in-scope | 0 (forced) | 68 |
| No transcript | n/a | 3 |
| Outline nodes | ~552 | 234 |
| Outline leaves | ~404 | 181 |

## User failure examples — where they went
- Ben Eater 'Stepping through a program...' (was under 1.3 security through obscurity)
  - Now: `0.6` — forced after transcript spot-check
- Ben Eater 'Let's build a digital clock!' (was under 1.4.3 Digital signatures)
  - Now: `REMOVED/unplaced` — forced unplaced after transcript spot-check (known false-friend / off-topic)
- 3Blue1Brown 'Pi hiding in prime regularities' (was under 2.4.1 leaf 'hiding')
  - Now: `0.4` — forced after transcript spot-check
- Computerphile 'How TOR Works' (was under 2.4.3 BitTorrent)
  - Now: `2.4.4` — forced after transcript spot-check
- Computerphile 'TOR Hidden Services' (was under 2.4.3 BitTorrent)
  - Now: `2.4.4` — forced after transcript spot-check
- Fabricated outline node '12.3.1 Tor': **not present**. Wong `12.3.1` is `12.3.1 Volatility` (Volatility). Tor lives at `2.4.4`.

## SHA-3 / Tor TOC sanity
- Sponge/Keccak videos → `2.5.2 The SHA-3 hash function` (not inventing elsewhere).
- Tor videos → `2.4.4 Tor` (Wong hash applications), **not** `2.4.3 BitTorrent`, **not** `12.3.1` (Volatility).

## Unplaced policy
Videos with no captions, weak/ambiguous transcript match, or clearly off-topic content (fluids sims, chess bots, LLM transformers, bedside digital clocks, etc.) remain unplaced. See `summaries.jsonl` for per-video reasons.

## Whisper pass
Videos that had no YouTube captions were transcribed with `faster-whisper` (`base`, English) from downloaded audio (`yt-dlp -x`). Plain text lands under `transcripts/<channel>/<id>.txt`; `summaries.jsonl` marks `transcript_source: whisper` for those ids (see also `transcripts/_whisper_ids.json`).

- Whisper succeeded: **25** (of ~27 prior `no_transcript` candidates)
- Whisper failed / no speech: **2** — Silent / no-speech clips (no usable ASR): `2Kk0KMQeRCk`, `dmo0whbDiGQ` (Euler Disk speed variants).
- Newly placed from Whisper transcripts: **15**
- Whispered but still unplaced (honest omission): **10**
- Remaining inventory with no transcript file: **3**

Placement still prefers omission: bedside digital-clock breadboard series stays unplaced; Euler disk / spinning coins / ray marching / naive-fraction / postcard geometry stay unplaced; Ramanujan/FLT history goes to Foundations `0.4` (not elliptic-curve key exchange).
