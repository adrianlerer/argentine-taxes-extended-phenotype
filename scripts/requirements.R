# R Dependencies for Argentine Tax Reform Analysis Scripts
# Installation: source("requirements.R")

cat("\n")
cat("=" %>% rep(60) %>% paste(collapse = ""), "\n")
cat("INSTALLING R PACKAGES FOR TAX REFORM ANALYSIS\n")
cat("=" %>% rep(60) %>% paste(collapse = ""), "\n\n")

# List of required packages
packages <- c(
  "tidyverse",    # Data manipulation and visualization
  "ggplot2",      # Advanced plotting (included in tidyverse)
  "dplyr",        # Data manipulation (included in tidyverse)
  "tidyr",        # Data tidying (included in tidyverse)
  "readr",        # Data reading (included in tidyverse)
  "broom",        # Tidy model outputs
  "pscl",         # McFadden R-squared calculation
  "scales",       # Scale functions for visualization
  "lubridate"     # Date manipulation
)

cat("[INFO] Checking and installing required packages...\n\n")

# Install missing packages
for (pkg in packages) {
  if (!require(pkg, character.only = TRUE, quietly = TRUE)) {
    cat(paste0("[INSTALL] Installing package: ", pkg, "\n"))
    install.packages(pkg, repos = "https://cloud.r-project.org/", 
                    dependencies = TRUE, quiet = TRUE)
  } else {
    cat(paste0("[OK] Package already installed: ", pkg, "\n"))
  }
}

cat("\n")
cat("=" %>% rep(60) %>% paste(collapse = ""), "\n")
cat("PACKAGE INSTALLATION COMPLETE\n")
cat("=" %>% rep(60) %>% paste(collapse = ""), "\n\n")

cat("You can now run the analysis scripts:\n")
cat("  Rscript scripts/cli_calculation.R\n")
cat("  Rscript scripts/labor_reform_analysis.R\n\n")
