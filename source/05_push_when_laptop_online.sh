#!/bin/bash
# Run on Zach's Mac once desktop agent is connected / locally:
#   bash /path/to/05_push_when_laptop_online.sh
set -euo pipefail
REPO="${1:-/Users/zachmills/Developer/rwc-bookclub}"
PATCH_TGZ="${2:-}"
cd "$REPO"
if [[ -n "$PATCH_TGZ" && -f "$PATCH_TGZ" ]]; then
  tar xzf "$PATCH_TGZ" -C "$REPO"
fi
git status -sb
git add -A
git commit -m "Redo video placements from transcripts (not title keywords)" || true
git push origin main
gh run watch --exit-status
curl -sL 'https://hacker6284.github.io/rwc-bookclub/chapters/02-hash-functions/' | rg -n 'How TOR|BitTorrent|Pi hiding|2\.4\.4' | head
