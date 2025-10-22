# Data Analysis Scripts
## Argentine Tax Reform & Fiscal Federalism Analysis

**Repository**: https://github.com/adrianlerer/argentine-taxes-extended-phenotype  
**Purpose**: Reproducible analysis scripts for tax reform and fiscal federalism data  
**Languages**: Python 3.11+ and R 4.3+

---

## Overview

This directory contains analysis scripts supporting the two SSRN working papers:
1. **Tax Reform as Extended Phenotype** (2025)
2. **Negative Conditions and Constitutional Lock-in** (2024)

All scripts follow **Reality Filter** methodology with tagged confidence levels for reproducibility.

---

## Scripts Included

### Python Scripts

#### 1. `coparticipacion_analysis.py`
**Purpose**: Analyze 31-year constitutional violation of fiscal federalism (Transitional Clause 6)

**Input Data**:
- Fiscal pacts database (1995-2025)
- Provincial fiscal autonomy indices
- Coparticipation distribution percentages

**Output**:
- Timeline visualization of 11 failed reform attempts
- Provincial voting patterns analysis
- CLI component scores for fiscal federalism domain

**Dependencies**:
```bash
pip install pandas numpy matplotlib seaborn scipy
```

**Usage**:
```bash
python scripts/coparticipacion_analysis.py
```

**Output Files**:
- `output/fiscal_federalism_timeline.png`
- `output/provincial_positions_heatmap.png`
- `output/cli_components_radar.png`

---

#### 2. `tax_compliance_visualization.py`
**Purpose**: Visualize tax compliance rates and evolutionarily stable equilibrium (ESE) patterns

**Input Data**:
- National tax collection 2010-2024 (MECON-DNIAF)
- Provincial IIBB data (ICiudad Foundation)
- Fiscal autonomy indices (IARAF)

**Output**:
- Tax compliance trend visualization
- ESE period identification (2003-2023)
- Comparative anomaly chart (93-year income tax without constitutional authorization)

**Dependencies**:
```bash
pip install pandas numpy matplotlib seaborn plotly
```

**Usage**:
```bash
python scripts/tax_compliance_visualization.py
```

**Output Files**:
- `output/tax_compliance_trends.html` (interactive Plotly)
- `output/ese_period_analysis.png`
- `output/comparative_anomaly.png`

---

### R Scripts

#### 3. `labor_reform_analysis.R`
**Purpose**: Statistical analysis of 60+ labor reform attempts (1994-2024)

**Input Data**:
- Legislative tracking database
- Supreme Court labor doctrine cases
- Comparative reform data (Brazil, Spain, Chile)

**Output**:
- Success rate analysis (0% Argentina vs. 8.3% Brazil)
- CLI component regression models
- Comparative visualization

**Dependencies**:
```R
install.packages(c("tidyverse", "ggplot2", "scales", "lubridate"))
```

**Usage**:
```R
source("scripts/labor_reform_analysis.R")
```

**Output Files**:
- `output/labor_reform_success_rates.png`
- `output/cli_regression_results.csv`
- `output/comparative_brazil_argentina.png`

---

#### 4. `cli_calculation.R`
**Purpose**: Calculate Constitutional Lock-in Index (CLI) scores for Argentina domains

**Input Data**:
- CLI component scores (Text Vagueness, Judicial Activism, Treaty Hierarchy, Precedent Weight, Amendment Difficulty)
- Reform outcome data

**Output**:
- CLI scores by domain (Labor 0.87, Pensions 0.84, Fiscal Federalism 0.82, Property 0.76)
- Predictive regression (CLI vs. reform success)
- McFadden R² calculation

**Dependencies**:
```R
install.packages(c("tidyverse", "broom", "pscl"))
```

**Usage**:
```R
source("scripts/cli_calculation.R")
```

**Output Files**:
- `output/cli_scores_by_domain.csv`
- `output/cli_regression_summary.txt`
- `output/cli_predictive_power.png`

---

## Data Directory Structure

Scripts expect data in the following structure:

```
data/
├── argentina_tax_data/
│   ├── recaudacion_nacional_2010_2024.csv
│   ├── recaudacion_provincial_iibb.csv
│   └── autonomia_fiscal_provincial.csv
├── argentina_labor_reform/
│   ├── reform_attempts_1994_2024.csv
│   └── comparative_reform_data.csv
└── argentina_fiscal_federalism/
    ├── fiscal_pacts_1995_2025.csv
    └── provincial_voting_patterns.csv
```

**Note**: CSV files are NOT included in GitHub repository (see `.gitignore`). Access instructions in `data/*/sources.md`.

---

## Reproducibility Standards

All scripts follow these standards:

### 1. Reality Filter Tags
Every data point is tagged with confidence level:
- `[VERIFIED]`: Primary source directly accessed
- `[PARAPHRASE]`: Reconstructed from secondary sources
- `[INFERENCE]`: Logical conclusion from verified data
- `[ESTIMATION]`: Calculation with documented formula
- `[CONJECTURE]`: Provisional hypothesis with falsification criteria

### 2. Version Control
- Python: 3.11+
- R: 4.3.1+
- Package versions specified in `requirements.txt` and `requirements.R`

### 3. Random Seed Setting
All stochastic processes use fixed seeds for reproducibility:
```python
np.random.seed(42)
```
```R
set.seed(42)
```

### 4. Output Documentation
Every visualization includes:
- Data source citation
- Date range
- Reality Filter tags
- Methodology notes

---

## Running All Scripts

**Automated Pipeline** (Bash):
```bash
#!/bin/bash
# run_all_analysis.sh

echo "Running Python analyses..."
python scripts/coparticipacion_analysis.py
python scripts/tax_compliance_visualization.py

echo "Running R analyses..."
Rscript scripts/labor_reform_analysis.R
Rscript scripts/cli_calculation.R

echo "Analysis complete. Check output/ directory for results."
```

**Expected Runtime**: ~5 minutes on standard laptop

---

## Citation

If you use these scripts in academic work, please cite:

**APA**:
```
Lerer, I.A. (2025). Argentine Tax Reform Analysis Scripts [Computer software]. 
GitHub. https://github.com/adrianlerer/argentine-taxes-extended-phenotype
```

**BibTeX**:
```bibtex
@software{lerer2025scripts,
  author = {Lerer, Ignacio Adrian},
  title = {Argentine Tax Reform Analysis Scripts},
  year = {2025},
  url = {https://github.com/adrianlerer/argentine-taxes-extended-phenotype},
  note = {Data analysis scripts for SSRN working papers}
}
```

---

## License

**Code**: MIT License  
**Data outputs**: CC BY 4.0

See `LICENSE` file in repository root for full terms.

---

## Contact

**Issues**: https://github.com/adrianlerer/argentine-taxes-extended-phenotype/issues  
**Email**: adrian@lerer.com.ar  
**SSRN**: https://papers.ssrn.com/sol3/cf_dev/AbsByAuth.cfm?per_id=7512489

---

**Last Updated**: October 21, 2025  
**Version**: 1.0
