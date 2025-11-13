# 🚗 MTCars Performance Analysis in R

A small but polished **R data analysis project** using the built-in `mtcars` dataset.  
My project showcases:

- R scripting
- Exploratory Data Analysis (EDA)
- Visualization with **ggplot2**
- Simple linear regression modeling

This project includes both:

- An **R Markdown report** (`mtcars_analysis.Rmd`) – nice for knitted HTML/PDF output
- A standalone **R script** (`mtcars_analysis.R`) – runs the analysis and saves plots to disk

---

## 📦 Requirements

You’ll need R plus these packages:

- `tidyverse` (for `dplyr`, `ggplot2`, etc.)
- `broom`
- `GGally` (for correlation plot – optional but included)

Install them in R with:

```r
install.packages(c("tidyverse", "broom", "GGally"))
```

---

## ▶️ Option 1 – Run the R script

From the project folder in a terminal:

```bash
Rscript mtcars_analysis.R
```

This will:

- Print summary statistics and model summary to the console
- Save plots into a `plots/` folder:
  - `plots/mpg_vs_hp.png`
  - `plots/mpg_vs_wt.png`
  - `plots/corr_plot.png`
  - `plots/model_diagnostics.png`

---

## ▶️ Option 2 – Knit the R Markdown report

1. Open `mtcars_analysis.Rmd` in RStudio.
2. Make sure the packages are installed.
3. Click **Knit** (to HTML).

The rendered report will include:

- Intro + dataset explanation
- EDA tables and plots
- Correlation exploration
- Linear regression model for `mpg`
- Interpretation of coefficients and model diagnostics

---

## 📂 Project Structure

```text
r_mtcars_analysis/
├─ README.md
├─ mtcars_analysis.Rmd    # Full narrative report
└─ mtcars_analysis.R      # Script version that saves plots
```
