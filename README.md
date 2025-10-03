## Introduction to Statistics in Psychology

This repository is a companion to the MSc Psychology module "Introduction to Statistics in Psychology." It will host datasets, scripts, and supporting materials that align with weekly classwork.

### Why Are We Using R?

R is a purpose-built language for statistical computing and data analysis. It is free, open-source, and widely used in research, industry, and academia. For this module, and psychology more broadly, R offers:

- Breadth of statistical methods: from foundational tests (t-tests, correlations, ANOVA) to advanced techniques (generalized linear models, mixed-effects/repeated-measures models, multivariate methods, Bayesian approaches).
- Strong psychology-focused tooling: packages like `tidyverse` (data wrangling/visualization), `lme4`/`lmerTest`/`afex` (mixed models and ANOVA), `psych` (psychometrics), `lavaan` (SEM/CFA), `brms` (Bayesian modeling), `pwr`/`simr` (power/simulation), and many more.
- Reproducible workflows: scripts and notebooks (`.Rmd`/Quarto) make analyses executable, transparent, and easy to version-control for preregistration, assignment submission, and replication.
- High-quality visualization: `ggplot2` enables clear, publication-ready figures aligned with good data visualization practice.
- Large, supportive community: extensive documentation, tutorials, and examples tailored to behavioral sciences make it easier to learn and troubleshoot.

In psychology, we frequently work with repeated measures, hierarchical data (participants within groups/items), psychometric scales, and complex designs. R’s ecosystem handles these patterns naturally, helping you move from raw data to reliable, well-documented results suitable for coursework and research dissemination.


### Install R and RStudio

To work with the materials in this repo, install both R (the language) and RStudio (an IDE for R):

1. Install R
   - Download R from the CRAN website: [Download R (CRAN)](https://cran.r-project.org/)
   - Choose your operating system and follow the installer prompts.

2. Install RStudio
   - Download RStudio Desktop: [Download RStudio Desktop](https://posit.co/download/rstudio-desktop/)
   - Install after R so RStudio can detect your R installation.

### Repository Structure

Below is the structure and purpose of the key directories in this repository:

```bash
psychology/
├─ classes/           # weekly class materials, examples, and exercises
│  └─ week_one/       # materials for Week 1
│     ├─ README.md    # week overview and instructions
│     └─ week_one.r   # guided R script for Week 1 tasks
└─ README.md          # project overview and setup instructions
```

As the module progresses, additional weekly folders (e.g., `week_two/`, `week_three/`) will be added under `classes/` with their own `README.md` and relevant scripts or data.

### Recommended Analysis Repository Structure

When an R repository is an analysis project, structural conventions are loose. But, many data science and academic projects adopt the following style:

```bash
project-root/
├─ R/                 # or src/ — custom functions
├─ data/              # raw and processed data (often split as below)
│  ├─ raw/
│  └─ processed/
├─ notebooks/         # exploratory analysis (R Markdown or Jupyter)
├─ reports/           # rendered outputs (HTML, PDF, slides)
├─ scripts/           # ad‑hoc scripts / workflow entrypoints
├─ README.md          # project overview (this file)
├─ <project>.Rproj    # RStudio project file
└─ renv.lock          # dependency lockfile if using renv
```

- **R/ or src/**: Put reusable functions here so analyses stay clean.
- **data/**: Keep immutable sources in `data/raw/`; write derived files to `data/processed/`.
- **notebooks/**: Use for exploratory work and narratives (e.g., `.Rmd`, `.qmd`, `.ipynb`).
- **reports/**: Generated outputs from analyses (knit documents, figures, tables).
- **scripts/**: Command-line scripts or orchestrations that run steps end-to-end.
- **README.md**: High-level description, setup, and usage.
- **.Rproj**: Makes RStudio open the project with consistent settings.
- **renv.lock**: Reproducible dependencies when using `renv`.

The `rrrpkg` and `ProjectTemplate` initiatives suggest common structures, but adoption is optional. Choose a layout that best supports clarity and reproducibility for your workflow.
