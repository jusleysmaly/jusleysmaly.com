# PROJECT TEMPLATE — Brand Archive (PT / EN)

Source of truth for every file in `content/projects/`.
Copy everything from the first `---` line to the end into
`content/projects/<id>.md`, then add the id to `manifest.projects` in `site.md`.

One file per project, both languages inside it:

- **Frontmatter** (between `---`) — structured data read by the site.
- **# PT** — Portuguese editorial text. Default language of the site.
- **# EN** — English editorial text. An equivalent editorial version, not a literal translation.

Rules:

- Do not invent data. Unknown values stay empty: `""` for text, `null` for
  stage, `[]` for lists. Never fill a field just to complete it.
- `id` = file name without `.md` — lowercase, no spaces, hyphens only.
- `status`: `wip` | `done` — WIP / DONE are not translated.
- `year`: YYYY as a number, or `""` if unknown.
- `updated`: YYYY-MM-DD only when a date is documented, otherwise `""`.
- `stage`: 0 Strategy · 1 Identity · 2 System · 3 Application.
  DONE projects are always `3`. WIP: the documented current stage, or `null`.
- `disciplines`: same items in `pt` and `en`, in the same order. Repeat them
  in the `## Disciplines` sections of the text.
- `frames`: frame 01 is ALWAYS `type: "logo"` with `ratio: "1:1"` — even when
  no logo image is documented. After the logo: 3–5 frames. Only frames backed
  by the project's documented elements — never add frames to fill the count.
  - `type`: lowercase English key, `_` between words. Every type used must also
    exist in `site.md → aux.frames`. Current keys:
    logo · system · typography · exploration · application · context ·
    color · illustration · stationery · digital · packaging · uniform ·
    fleet · photography · vessel · lettering · naming · traceability ·
    brand_architecture · endorsement_system
  - `ratio`: `"4:5"` | `"3:2"` | `"16:10"`, or `""` until images exist.
  - `image`: path relative to /brand/ (e.g. `assets/projects/<id>/…`),
    or `""` while the site uses placeholders. Never invent file names.
  - `caption.pt` / `caption.en`: short frame label.
- `log`: only events with a complete, documented date. Newest first.
  No documented events → `log: []`.
- `case` (optional): external full case (e.g. Behance). Add the block only when
  the project really has one — never invent URLs. With `case.url` the metadata
  shows CASE + "VIEW FULL CASE ↗" (new tab) instead of the completed/updated date.
  ```
  case:
    label: "View full case"
    url: "https://…"
  ```
- Text: short and editorial — a working archive, not a case study.
  Leave a section empty rather than writing unconfirmed content.

---
id: ""
title: ""
status: ""
year: ""
updated: ""
stage: null
disciplines:
  pt: []
  en: []
frames:
  - type: "logo"
    ratio: "1:1"
    image: ""
    caption:
      pt: "Marca"
      en: "Mark"
  - type: ""
    ratio: ""
    image: ""
    caption:
      pt: ""
      en: ""
  - type: ""
    ratio: ""
    image: ""
    caption:
      pt: ""
      en: ""
  - type: ""
    ratio: ""
    image: ""
    caption:
      pt: ""
      en: ""
log: []
# log entry format:
#  - date: "YYYY-MM-DD"
#    pt: ""
#    en: ""
---

# PT

## Description

## Context

## Challenge

## Approach

## Disciplines

# EN

## Description

## Context

## Challenge

## Approach

## Disciplines
