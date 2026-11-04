<div align="center">

<!-- Banner -->
<img src="https://capsule-render.vercel.app/api?type=waving&color=0:2AF598,100:009EFD&height=300&section=header&text=Building%20the%20Cities%20of%20Tomorrow&fontSize=50&animation=fadeIn&fontAlignY=38&desc=Technology%2C%20Infrastructure%2C%20and%20Sustainability&descAlignY=55&descAlign=50" width="100%" />

<!-- Badges -->
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Build Status](https://img.shields.io/badge/build-passing-brightgreen.svg)]()
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)

</div>

---

## Overview

This repository contains the LaTeX source for the research paper **"Building the Cities of Tomorrow: Technology, Infrastructure, and Sustainability"** — a comprehensive review of smart city development spanning technological innovation, physical and digital infrastructure, global connectivity, and alignment with the UN Sustainable Development Goals (SDGs).

The paper examines how IoT, AI, big data analytics, 5G, and renewable energy converge to enable intelligent urban systems, drawing on case studies from Dubai, Barcelona, Singapore, New York City, Seoul, Stockholm, and other metropolitan areas. It also addresses critical challenges: cybersecurity, digital divides, regulatory lag, and the tension between rapid urbanization and long-term environmental sustainability.

**Key contribution:** A structured framework linking digital infrastructure, physical infrastructure, and urban planning to measurable sustainability outcomes, with practical lessons for policymakers, researchers, and practitioners.

---

## Key Features

- **53-page review** structured across 7 sections covering the full smart city stack
- **Springer Nature `sn-jnl` template** (Math & Physical Sciences numbered references)
- **Bibliography** with 120+ references spanning IoT, 5G, AI, urban planning, energy, governance, and SDGs
- **Figures & tables** including network slicing use cases, country-level initiative comparisons, and revenue projections
- **CI/CD pipeline** (GitHub Actions) compiling on every push with TeX Live + `latexmk`
- **Paragraph-level revision history** (67 commits) improving clarity, concision, and academic tone guided by Turnitin AI-similarity diagnostics

---

## Tech Stack & Prerequisites

| Component | Version / Details |
|-----------|-------------------|
| **LaTeX Engine** | pdfLaTeX (TeX Live 2023+) |
| **Build Tool** | `latexmk` |
| **Template** | Springer Nature `sn-jnl.cls` |
| **Bibliography** | BibTeX (`sn-bibliography.bib`) |
| **Packages** | `pgfplots`, `tabularx`, `booktabs`, `adjustbox`, `algorithm2e`, `amsmath`, `graphicx`, `xcolor`, `multirow`, `url`, `appendix` |
| **CI/CD** | GitHub Actions (`ubuntu-24.04`, `actions/checkout@v7`, `actions/upload-artifact@v7`) |
| **Local Build** | `latexmk -pdf -interaction=nonstopmode main.tex && latexmk -c` |

**System requirements (local):**
```bash
# Ubuntu / Debian
sudo apt-get install texlive-full latexmk

# macOS (MacTeX)
brew install --cask mactex

# Windows
# Install TeX Live from tug.org/texlive/
```

---

## Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/<your-org>/<repo-name>.git
cd <repo-name>
```

### 2. Build the PDF locally
```bash
# Full build (runs pdflatex + bibtex as needed, then cleans aux files)
latexmk -pdf -interaction=nonstopmode main.tex && latexmk -c

# Or just compile without cleaning (for debugging)
latexmk -pdf -interaction=nonstopmode main.tex
```

### 3. Output
The compiled PDF is generated at `main.pdf` (53 pages, ~6 MB).

---

## Project Structure

```
.
├── .github/
│   └── workflows/
│       └── latex.yml          # GitHub Actions CI/CD workflow
├── main.tex                   # Primary LaTeX source (Springer Nature sn-jnl)
├── sn-bibliography.bib        # BibTeX bibliography (120+ entries)
├── sn-jnl.cls                 # Springer Nature journal class file
├── figures/image-*.png        # Figures (16 images: architecture, 5G, mobility, etc.)
├── fig.eps / empty.eps        # Vector assets
├── revision_progress.md       # Internal revision tracking (ignored)
├── TODO.md                    # Task tracking (ignored)
├── .gitignore                 # Ignores aux files, PDF, reports, progress logs
├── main.pdf                   # Compiled output (committed for convenience)
└── README.md                  # This file
```

---

## Usage

### For Authors / Collaborators
- Edit `main.tex` for text changes
- Add references to `sn-bibliography.bib` (format follows `sn-mathphys-num`)
- Place new figures in root or `figs/` and reference via `\includegraphics`
- Push to trigger CI; the built PDF is uploaded as an artifact

### For Reviewers / Readers
- Download `main.pdf` from the latest GitHub Actions run artifact
- Or clone and build locally (see Getting Started)

---

## Revision History

This paper underwent a systematic **paragraph-by-paragraph academic revision** (67 commits) to improve clarity, concision, and authenticity of academic voice, using a Turnitin AI-similarity report (83% indicator) as diagnostic guidance. Each paragraph was:

1. **Edited** in isolation
2. **Compiled** with `latexmk` (verified 0 warnings, 0 undefined refs)
3. **Committed** individually with descriptive messages (`docs: revise <section> <paragraph>`)

See `revision_progress.md` (local, gitignored) for the full log.

---

## Contributing

Contributions are welcome! Please:
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/your-change`)
3. Make your changes to `main.tex` or `sn-bibliography.bib`
4. Verify the build passes locally (`latexmk -pdf ...`)
5. Submit a pull request with a clear description

**Guidelines:**
- Preserve Springer Nature `sn-jnl` formatting
- Keep citations in `sn-mathphys-num` numbered style
- Write clear, concise academic prose (avoid formulaic phrasing)
- One logical change per PR when possible

---

## License

This work is licensed under the **MIT License** — see [LICENSE](LICENSE) for details.

The paper content is the intellectual property of the authors. The LaTeX template (`sn-jnl.cls`) is copyright Springer Nature.

---

## Authors & Affiliations

| Author | Affiliation |
|--------|-------------|
| Jaishnu Sree Biradha | Vellore Institute of Technology, Chennai, India |
| Derrick Richard | Vellore Institute of Technology, Chennai, India |
| Suseela Sellamuthu | Vellore Institute of Technology, Chennai, India |
| Bhavadharini R. M. | Vellore Institute of Technology, Chennai, India |
| Krithiga R. | Vellore Institute of Technology, Chennai, India |

*Corresponding author: Suseela Sellamuthu (suseela.s@vit.ac.in)*
