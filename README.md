# Resume (public)

The short, public resume for Nushrat Naushin.

## Public link

<https://naushin264-png.github.io/cv/resume.pdf>

This is the URL to link from a website. It is served by GitHub Pages and is
deliberately short and stable, so it stays valid as the resume is revised.

## Why this repository is separate

The full master CV lives in a **private** repository, `Resume`. GitHub Pages
will only publish from a public repository on this account, so a private master
CV and a public resume link cannot coexist in one repository. This repository
therefore holds only the two-page public resume, and stays public so the link
above keeps working. Nothing here should contain anything that is not intended
to be world-readable.

## Contents

| Path | What it is |
| --- | --- |
| `resume.tex` | Two-page resume, LaTeX source — the file to edit |
| `resume.pdf` | Built from that source, and the file served at the public link |

## Building

With MiKTeX (or any TeX Live) on the path:

```
pdflatex resume.tex
pdflatex resume.tex
```

Two runs, so cross-references settle. The VS Code settings in `.vscode/` build
it on save. Packages used are all standard — `mathptmx`, `geometry`, `enumitem`,
`titlesec`, `xcolor`, `microtype`, `hyperref` — so it also compiles unchanged on
Overleaf.

Commit the rebuilt `resume.pdf` along with the source; the public link serves
that file directly, so an unrebuilt PDF means a stale resume on the web.

## Keeping it to two pages

This document is a condensation of the master CV, not a copy of it. It leaves
out exhaustive coursework lists, committee rosters, and the full publication
list. **It must stay at two pages** — check the page count after editing.

When the master CV gains something, decide whether it earns space here. Most
additions will not. The two documents are separate sources and will drift on
purpose.
