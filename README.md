# rwc-bookclub

Living supplemental site for a *Real-World Cryptography* (David Wong) book club.

- **Site:** https://hacker6284.github.io/rwc-bookclub/
- **Stack:** [MkDocs Material](https://squidfunk.github.io/mkdocs-material/), GitHub Pages
- **Content:** one page per Wong chapter plus Foundations; YouTube links layered Computerphile → 3Blue1Brown → Sebastian Lague → Ben Eater → Numberphile / extras

## Local preview

```bash
python3 -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt
mkdocs serve
```

## Deploy

Pushes to `main` build and publish via GitHub Actions (`.github/workflows/pages.yml`).
