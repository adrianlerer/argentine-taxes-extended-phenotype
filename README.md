# Legal Phenotype Research
## Evolutionary Analysis of Constitutional Lock-in Mechanisms

**Author**: Ignacio Adrian Lerer  
**Affiliation**: Independent Researcher  
**Contact**: adrian@lerer.com.ar  
**Repository**: https://github.com/adrianlerer/argentine-taxes-extended-phenotype

---

## Overview

This repository contains research materials, data, and methodology documentation for two working papers applying **evolutionary legal theory** to analyze constitutional lock-in mechanisms in Argentina:

1. **Tax Reform as Extended Phenotype** (2025)  
   *How the 1932 constitutional mutation created a 93-year fiscal lock-in*

2. **Negative Conditions and Constitutional Lock-in** (2024)  
   *Why labor reform systematically fails despite Art. 14 bis*

Both papers demonstrate how **constitutional design choices** create **evolutionarily stable equilibria (ESE)** that block structural reforms for decades.

---

## Key Findings

### Paper 1: Tax Reform Phenotype

**Central thesis**: Argentina's tax system is not a rational design but the **extended phenotype** of a 1932 constitutional mutation (Law 11,682 - income tax) that violated Art. 67 inc. 2 CN by becoming permanent despite being declared "temporary until December 31, 1934."

**Evidence**:
- ✅ **93 years** of continuous violation of constitutional requirement "for determinate time"
- ✅ **29 years** of non-compliance with Transitional Clause 6 (1994 Constitutional Reform)
- ✅ **11 fiscal pacts** with <20% compliance rate (1992-2021)
- ✅ **5 institutional actors** with convergent incentives to maintain status quo

**Comparative anomaly**: Argentina is the **ONLY case** where a federal income tax operates 93 years **without constitutional reform** authorizing it (vs. USA Amendment XVI, 1913).

---

### Paper 2: Negative Conditions CLI

**Central thesis**: Art. 14 bis CN (social rights) creates "negative conditions" that make labor reform structurally impossible without constitutional amendment - explaining why 60+ reform attempts failed (1994-2024).

**Evidence**:
- ✅ **0% success rate** in structural labor reforms (1994-2024)
- ✅ **Quadruple constitutional lock**: Art. 14 bis + Ultraactivity doctrine + Federal system + Supreme Court deference
- ✅ Comparative success: Brazil/Spain/Chile reformed labor markets - Argentina did NOT

---

## Innovative Methodologies

This research introduces three novel analytical tools:

### 1. **RootFinder Protocol**

**Purpose**: Genealogical analysis of legal precedents  
**Method**: Trace judicial doctrine evolution through citation networks (analogous to phylogenetic analysis in biology)  
**Application**: Mapping CSJN jurisprudence on income tax constitutionality (1934-2025)

📄 [Full documentation](methodology/RootFinder_Protocol.md)

---

### 2. **Reality Filter**

**Purpose**: Confidence tagging system for research claims  
**Tags**:
- `[VERIFIED]` - Primary source directly accessed
- `[PARAPHRASE]` - Reconstructed from secondary academic sources
- `[INFERENCE]` - Logical conclusion from documented premises
- `[ESTIMATION]` - Calculation based on verified data
- `[CONJECTURE]` - Provisional hypothesis

**Application**: Every claim in both papers is tagged with confidence level.

📄 [Full guidelines](methodology/Reality_Filter_Guidelines.md)

---

### 3. **IusMorfos (Temporal Clustering)**

**Purpose**: Identify temporal patterns in reform attempts  
**Method**: Cluster reform initiatives by time period + outcome + institutional actor  
**Application**: Detect "crisis windows" vs. "lock-in periods"

📄 [Full documentation](methodology/IusMorfos_Clustering.md)

---

## Repository Structure

```
papers/               # Working papers (full text)
├── 01_tax_reform_phenotype/
│   ├── tax_reform_phenotype_v1.md     # Complete paper (~23,500 words)
│   ├── abstract.md                     # SSRN abstract
│   └── appendices/                     # Data tables and figures
└── 02_negative_conditions_cli/
    ├── negative_conditions_cli_v1.md   # Complete paper
    ├── abstract.md                     # SSRN abstract
    └── appendices/                     # Reform attempts database

methodology/          # Analytical tools documentation
├── RootFinder_Protocol.md
├── Reality_Filter_Guidelines.md
└── IusMorfos_Clustering.md

data/                 # Datasets (CSV format)
├── argentina_tax_data/
│   ├── recaudacion_nacional_2010_2024.csv
│   ├── recaudacion_provincial_iibb.csv
│   ├── autonomia_fiscal_provincial.csv
│   └── sources.md                      # Metadata
└── argentina_labor_reform/
    ├── reform_attempts_1994_2024.csv
    └── sources.md

docs/                 # Research process documentation
├── tax_reform_project/
│   ├── TAREA_0_1_DISENO_ALBERDIANO.md
│   ├── TAREA_0_2_MUTACION_1932.md
│   ├── TAREA_1_CRONOLOGIA_REFORMAS.md
│   ├── TAREA_2_DATOS_FISCALES.md
│   ├── TAREA_3_JURISPRUDENCIA_CSJN.md
│   ├── TAREA_4_COMPARACIONES_INTERNACIONALES.md
│   └── TAREA_5_SINTESIS_EJECUTIVA.md
└── negative_conditions_project/
    └── [CLI framework documentation]
```

---

## Data Availability

All datasets are **CC BY 4.0** licensed. Sources:

**Tax data**:
- Ministry of Economy Argentina (DNIAF): National tax collection 2010-2024
- ICiudad Foundation: Provincial IIBB (gross receipts tax) 2004-2024
- IARAF: Tax pressure by jurisdiction

**Labor reform data**:
- Argentine Congress Library: Legislative tracking 1994-2024
- Supreme Court: Jurisprudence on Art. 14 bis

Full source metadata: [`data/*/sources.md`](data/)

---

## How to Cite

### Paper 1 (Tax Reform)

**APA**:
```
Lerer, I.A. (2025). Tax Reform as Extended Phenotype: The 1932 Constitutional 
Mutation and Argentina's Fiscal Lock-in. SSRN Working Paper. 
https://ssrn.com/abstract=[ID]
```

**BibTeX**:
```bibtex
@techreport{lerer2025tax,
  title={Tax Reform as Extended Phenotype: The 1932 Constitutional Mutation and Argentina's Fiscal Lock-in},
  author={Lerer, Ignacio Adrian},
  year={2025},
  institution={SSRN},
  url={https://ssrn.com/abstract=[ID]}
}
```

---

### Paper 2 (Negative Conditions)

**APA**:
```
Lerer, A. (2024). Negative Conditions and Constitutional Lock-in: Why Labor 
Reform Fails in Argentina. SSRN Working Paper. 
https://ssrn.com/abstract=[ID]
```

**BibTeX**:
```bibtex
@techreport{lerer2024negative,
  title={Negative Conditions and Constitutional Lock-in: Why Labor Reform Fails in Argentina},
  author={Lerer, Adrian},
  year={2024},
  institution={SSRN},
  url={https://ssrn.com/abstract=[ID]}
}
```

---

## Reproducibility

All analysis is **fully reproducible**:

1. ✅ Primary sources cited with URLs (when available)
2. ✅ Data extraction process documented
3. ✅ Confidence level tagged on every claim ([VERIFIED], [PARAPHRASE], etc.)
4. ✅ Methodological protocols openly documented

**Note**: Some Argentine government data requires direct access to official sites (MECON, AFIP) - we provide aggregated datasets with source metadata.

---

## License

**Papers**: CC BY 4.0 (Creative Commons Attribution 4.0 International)  
**Data**: CC BY 4.0  
**Code** (if any): MIT License

You are free to:
- ✅ Share — copy and redistribute the material
- ✅ Adapt — remix, transform, and build upon the material

Under the following terms:
- ⚠️ Attribution — You must give appropriate credit

[Full license text](LICENSE)

---

## Acknowledgments

**Methodological inspiration**:
- Richard Dawkins (*The Extended Phenotype*, 1982) - Extended phenotype concept
- Daniel Dennett (*Darwin's Dangerous Idea*, 1995) - Universal Darwinism
- Karl Popper (*The Myth of the Framework*, 1994) - Institutional lock-in
- Alan Watson (*Legal Transplants*, 1974) - Comparative legal evolution

**Data sources**:
- Argentine Ministry of Economy (MECON)
- ICiudad Foundation
- Argentine Congress Library
- SAIJ (Argentine Legal Information System)

**AI assistance**:
- Research assistance: Claude (Anthropic) + Genspark AI
- All AI-generated content was verified against primary sources

---

## Contact

For questions, collaborations, or access to additional materials:

📧 Email: adrian@lerer.com.ar  
🐦 Twitter/X: @LererAdrian  
🔗 LinkedIn: https://www.linkedin.com/in/adrianlerer/?locale=en_US  
📄 SSRN: https://papers.ssrn.com/sol3/cf_dev/AbsByAuth.cfm?per_id=7512489

---

**Last updated**: October 20, 2025  
**Version**: 1.0
