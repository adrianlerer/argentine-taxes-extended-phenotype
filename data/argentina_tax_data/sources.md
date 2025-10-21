# Data Sources: Argentina Tax Data

## National Tax Collection (2010-2024)

**Source**: Dirección Nacional de Investigaciones y Análisis Fiscal (DNIAF)  
**Institution**: Ministerio de Economía de Argentina  
**URL**: https://www.argentina.gob.ar/economia/ingresos-publicos  
**Access date**: October 2025  
**Format**: Excel files (converted to CSV for repository)  
**Frequency**: Monthly (aggregated to annual for analysis)  
**Variables**:
- Total tax collection by tax type
- % of GDP
- Nominal pesos (not inflation-adjusted)

**Reality Filter**: `[VERIFIED]` - Official government source

**Notes**:
- 2019 Q2 provincial data interpolated from Q1 and Q3 due to missing official report
- 2015 methodology change: MECON changed reporting standard (adjusted for comparability in analysis)

---

## Provincial IIBB Collection (2004-2024)

**Source**: ICiudad Foundation - "La recaudación tributaria de las provincias 2024"  
**Institution**: Fundación Institucional  
**URL**: https://www.iciudad.org.ar/  
**Access date**: October 2025  
**Original data**: Dirección Nacional de Asuntos Provinciales (DNAP)  
**Format**: PDF report (data manually extracted to CSV)  
**Variables**:
- IIBB (Ingresos Brutos / Gross Receipts) collection by province
- % of provincial GDP
- Per capita collection

**Reality Filter**: `[VERIFIED]` - Secondary compilation of official data

**Notes**:
- CABA (Ciudad Autónoma de Buenos Aires) data separated from Provincia de Buenos Aires since 2004
- 2020 COVID-19 impact: Collection drop 15-20% across most provinces

---

## Provincial Fiscal Autonomy Index

**Source**: IARAF (Instituto Argentino de Análisis Fiscal)  
**Report**: "Índice de Autonomía Fiscal Provincial 2023"  
**URL**: https://www.iaraf.org  
**Access date**: October 2025  
**Methodology**: Own revenues / Total revenues (higher = more autonomous)  
**Variables**:
- Autonomy index (0-1 scale)
- Ranking by province
- Coparticipation dependence (inverse of autonomy)

**Reality Filter**: `[VERIFIED]` - Academic/research institution compilation

**Notes**:
- Includes only recurring revenues (excludes asset sales, debt)
- "Own revenues" = provincial taxes (IIBB, vehicle tax, stamp tax, real estate tax)
- "Total revenues" = own + coparticipation + specific transfers + royalties

---

## Total Tax Pressure (1994-2025)

**Source**: Multiple
- **National level**: MECON - DNIAF
- **Provincial level**: ICiudad Foundation aggregation
- **GDP data**: INDEC (Instituto Nacional de Estadística y Censos)

**URL**: 
- INDEC: https://www.indec.gob.ar
- MECON: https://www.argentina.gob.ar/economia

**Calculation**: (Total tax collection National + Provincial) / GDP × 100  
**Access date**: October 2025  
**Format**: Annual time series 1994-2025

**Reality Filter**: `[ESTIMATION]` - Calculated from verified official sources

**Notes**:
- 2025 data: Projected based on Q1-Q3 actual + Q4 forecast
- Does NOT include municipal taxes (data availability limited)
- Does NOT include social security contributions (reported separately)

---

## Coparticipation Distribution Coefficients

**Source**: Ley 23.548 (1988) + subsequent amendments  
**Legal database**: InfoLeg (http://servicios.infoleg.gob.ar)  
**Access date**: October 2025  
**Variables**:
- Primary distribution (Nation vs. Provinces): 42.34% provinces, 57.66% nation (pre-transfers)
- Secondary distribution (among provinces): Fixed coefficients by province
- Special regimes (AMBA, Patagonia, etc.)

**Reality Filter**: `[VERIFIED]` - Official legal text

**Notes**:
- Coefficients have NOT changed since 1988 (despite Transitional Clause 6 mandate)
- Does NOT reflect population changes 1988-2025
- Does NOT reflect economic output changes

---

## Income Tax Collection (Impuesto a las Ganancias) 2010-2024

**Source**: AFIP (Administración Federal de Ingresos Públicos)  
**URL**: https://www.afip.gob.ar/institucional/estudios/  
**Report**: "Estadísticas Tributarias - Recaudación por Impuesto"  
**Access date**: October 2025  
**Format**: Annual reports (PDF), data extracted to CSV  
**Variables**:
- Total income tax collection
- % of total national revenue
- Corporate vs. individual breakdown (when available)

**Reality Filter**: `[VERIFIED]` - Official tax authority data

**Notes**:
- 2024 data includes reforms: Minimum non-taxable amount increased July 2024
- Historical series: Law 11,682 (1932) → Law 20,628 (1973) → current Law 27,346 (2017 reform)

---

## Comparative Data: USA, Brazil, Mexico

**Source**: Various official national sources + OECD Revenue Statistics  
**URL**: 
- OECD: https://www.oecd.org/tax/revenue-statistics/
- USA: IRS (https://www.irs.gov/statistics)
- Brazil: Receita Federal (https://www.gov.br/receitafederal)
- Mexico: SAT (https://www.sat.gob.mx)

**Access date**: October 2025  
**Variables**:
- Federal income tax as % of total revenue
- Constitutional authorization date
- Amendment process (if applicable)

**Reality Filter**: `[VERIFIED]` - Official sources cross-referenced with OECD

---

## Data Cleaning Notes

### Currency Conversion
- All figures in nominal Argentine pesos (ARS)
- NOT adjusted for inflation (due to measurement disputes)
- For real comparisons, USD conversion at official rate used (when specified)

### Missing Data
- 2019 Q2 provincial IIBB: Interpolated from Q1 and Q3
- 2001-2002 crisis period: Some provincial data gaps (reconstruction from subsequent reports)

### Methodology Changes
- **2015 MECON reporting change**: Previous "economic activity tax" merged into "other taxes" category. We reconstructed historical series using 2014 disaggregated data as baseline.
- **2020 COVID-19 impact**: Special treatment of payment deferrals (accounted as collection when received, not when deferred)

---

## Data Repository Structure

```
data/argentina_tax_data/
├── recaudacion_nacional_2010_2024.csv       # National tax collection
├── recaudacion_provincial_iibb.csv          # Provincial gross receipts tax
├── autonomia_fiscal_provincial.csv          # Fiscal autonomy index
├── coparticipacion_coefficients.csv         # Distribution coefficients
├── impuesto_ganancias_2010_2024.csv        # Income tax specific data
└── sources.md                               # This file
```

---

## How to Cite This Dataset

**APA**:
```
Lerer, A. (2025). Argentina Tax Data (2010-2024) [Dataset]. 
GitHub: https://github.com/adrianlerer/argentine-taxes-extended-phenotype/data/argentina_tax_data/
```

**BibTeX**:
```bibtex
@misc{lerer2025taxdata,
  author = {Lerer, Adrian},
  title = {Argentina Tax Data (2010-2024)},
  year = {2025},
  publisher = {GitHub},
  url = {https://github.com/adrianlerer/argentine-taxes-extended-phenotype/data/argentina_tax_data/}
}
```

---

## License

**Data**: CC BY 4.0 (Creative Commons Attribution 4.0 International)  
**Original sources**: Check specific government licenses (most are public domain)

---

**Last updated**: October 20, 2025  
**Maintained by**: Adrian Lerer (adrian@lerer.com.ar)
