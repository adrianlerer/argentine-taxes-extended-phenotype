# Data Sources: Argentina Labor Reform Attempts

## Reform Attempts Database (1994-2024)

**Source**: Multiple
- Argentine Congress Library (Biblioteca del Congreso)
- HCDN (Honorable Cámara de Diputados de la Nación) legislative tracking
- Senate (Senado de la Nación) legislative history
- Official Bulletin (Boletín Oficial) for enacted laws

**URL**:
- Congress: https://www.hcdn.gob.ar
- Senate: https://www.senado.gob.ar
- Legal database: http://servicios.infoleg.gob.ar

**Access date**: October 2024  
**Methodology**: Systematic search of legislative bills containing keywords: "reforma laboral", "flexibilización", "Art. 14 bis", "Ley de Contrato de Trabajo"  
**Time span**: 1994-2024 (post-constitutional reform)  
**Format**: CSV database with fields:
- Bill number
- Year introduced
- Author (executive, senator, deputy)
- Scope (structural vs. incremental)
- Outcome (passed, rejected, abandoned, expired)
- Key provisions attempted

**Reality Filter**: `[VERIFIED]` - Official legislative records

**Sample size**: 60+ reform attempts identified

---

## Supreme Court Cases (Art. 14 bis jurisprudence)

**Source**: SAIJ (Sistema Argentino de Información Jurídica)  
**URL**: http://www.saij.gob.ar  
**Search parameters**: 
- Constitutional article: Art. 14 bis
- Court: CSJN (Corte Suprema de Justicia de la Nación)
- Time span: 1957-2024 (Art. 14 bis added in 1957 reform)
- Keywords: "progresividad", "ultraactividad", "irrenunciabilidad"

**Access date**: October 2024  
**Key cases analyzed**:
- De Luca (1969) - Fallos 273:87
- Gunther (1984) - Fallos 308:1118
- Vizzoti (2004) - Fallos 327:3677
- Aquino (2004) - Fallos 327:3753
- Madorrán (2007) - Fallos 330:2988

**Methodology**: RootFinder Protocol genealogical analysis (see methodology docs)  
**Reality Filter**: `[VERIFIED]` - Full case texts accessed and citation networks mapped

---

## Comparative Labor Reform Data

### Brazil

**Source**: Brazilian Congress (Câmara dos Deputados + Senado Federal)  
**Key reform**: Lei 13.467/2017 (Reforma Trabalhista - Temer government)  
**URL**: https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2017/lei/l13467.htm  
**Access date**: October 2024  
**Reality Filter**: `[VERIFIED]` - Official legal text

**Key changes documented**:
- Prevalence of collective agreements over legislation (in specific matters)
- Regulation of "intermittent" contracts
- Limits on ultraactivity
- Reform of labor court procedures

---

### Spain

**Source**: Spanish Parliament (Congreso de los Diputados)  
**Key reform**: Real Decreto-ley 3/2012 (Rajoy government)  
**URL**: https://www.boe.es/buscar/act.php?id=BOE-A-2012-2076  
**Access date**: October 2024  
**Reality Filter**: `[VERIFIED]` - Official legal text (BOE)

**Key changes documented**:
- Internal flexibility (working hours, functions)
- Individual dismissal facilitation
- Priority of firm-level agreements
- Reduction of severance payments

---

### Chile

**Source**: Chilean Congress (Biblioteca del Congreso Nacional)  
**Key reforms**: Multiple laws 2001-2016 (Lagos, Bachelet, Piñera governments)  
**URL**: https://www.bcn.cl/leychile/  
**Access date**: October 2024  
**Reality Filter**: `[VERIFIED]` - Official legal database

**Key changes documented**:
- Subcontracting regulation (2006)
- Collective bargaining reform (2016)
- Non-discrimination protections (2012)

---

## Constitutional Lock-in Index (CLI) Components

**Source**: Original research compilation from:
1. **Constitutional texts**: Each country's constitution (vagueness scoring)
2. **Judicial activism**: Supreme/Constitutional Court case counts (labor rights expansion)
3. **Treaty hierarchy**: Constitutional rank of ILO Conventions
4. **Precedent weight**: Common law vs. civil law systems
5. **Amendment difficulty**: Formal constitutional amendment procedures

**Methodology**: See CLI_FRAMEWORK.md in `/docs/constitutional-lockin-index/`  
**Countries analyzed**: 10 (Argentina, Brazil, Chile, Spain, USA, Germany, UK, Mexico, Colombia, Uruguay)  
**Reality Filter**: `[PARAPHRASE]` for comparative constitutional law, `[INFERENCE]` for scoring methodology

---

## Reform Success Rate Calculations

**Formula**: (Structural reforms passed) / (Total structural reforms attempted) × 100

**Definition of "structural"**: Reforms that modify core protections in:
- Dismissal rules (severance, cause requirements)
- Collective bargaining rules (ultraactivity, agreement hierarchy)
- Constitutional floor (Art. 14 bis "núcleo irreductible")

**Argentina calculation**:
- Structural attempts: 60+ (1994-2024)
- Structural successes: 0
- Success rate: 0%

**Brazil calculation**:
- Structural attempts: 12 (2000-2017)
- Structural successes: 1 (Lei 13.467/2017)
- Success rate: 8.3%

**Reality Filter**: `[ESTIMATION]` - Based on documented legislative history, "structural" classification involves researcher judgment

---

## Ultraactivity Doctrine Evolution

**Source**: Supreme Court jurisprudence + academic commentary  
**Key sources**:
1. **Fiorito, Alejandro** (2014). "La ultraactividad de los convenios colectivos." *Revista de Derecho Laboral*. [Academic paper]
2. **Ley 14.250** (1953) - Collective bargaining law establishing ultraactivity
3. **CSJN cases**: Tracking judicial interpretation 1953-2024

**Methodology**: RootFinder Protocol + secondary source triangulation  
**Reality Filter**: `[PARAPHRASE]` for doctrine evolution, `[VERIFIED]` for specific case holdings

---

## Data Repository Structure

```
data/argentina_labor_reform/
├── reform_attempts_1994_2024.csv     # All legislative attempts
├── csjn_art14bis_cases.csv           # Supreme Court cases
├── comparative_reforms.csv           # Brazil, Spain, Chile reforms
├── cli_scores_10_countries.csv       # Constitutional Lock-in Index
└── sources.md                        # This file
```

---

## Missing Data and Limitations

### Legislative Tracking
- **Pre-1994 reforms**: Limited digital archives (only major laws accessible)
- **Provincial-level reforms**: Not systematically tracked (focus on national level)
- **Executive decrees**: Partial coverage (only those that reached judicial review)

### Comparative Data
- **India**: Land reform data incomplete (state-level variation high)
- **South Africa**: Labor reform tracking 1994-2024 partial

### Judicial Data
- **Pre-1980 cases**: Not all digitized on SAIJ
- **Lower courts**: Not systematically analyzed (focus on CSJN only)

---

## How to Cite This Dataset

**APA**:
```
Lerer, A. (2024). Argentina Labor Reform Attempts Database (1994-2024) [Dataset]. 
GitHub: https://github.com/adrianlerer/argentine-taxes-extended-phenotype/data/argentina_labor_reform/
```

**BibTeX**:
```bibtex
@misc{lerer2024labordata,
  author = {Lerer, Adrian},
  title = {Argentina Labor Reform Attempts Database (1994-2024)},
  year = {2024},
  publisher = {GitHub},
  url = {https://github.com/adrianlerer/argentine-taxes-extended-phenotype/data/argentina_labor_reform/}
}
```

---

## License

**Data**: CC BY 4.0 (Creative Commons Attribution 4.0 International)  
**Original sources**: Check specific government/academic licenses

---

**Last updated**: October 2024  
**Maintained by**: Adrian Lerer (adrian@lerer.com.ar)
