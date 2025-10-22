# Paraguay Tax Data: Sources and Metadata

**Last Updated**: October 22, 2025  
**Repository**: argentine-taxes-extended-phenotype  
**Related Research**: 
- `research/genspark_outputs/prompt1_paraguay_system.md`
- `research/genspark_outputs/prompt2_paraguay_why.md`

---

## Primary Data Sources

### Official Government Sources

1. **Ministerio de Economía y Finanzas (MEF)**
   - URL: https://www.mef.gov.py
   - Documents used:
     - "Republic of Paraguay: 2025 USD Budget" (July 2025)
     - "Public Finance Report 2024" (February 2025)
   - Data quality: HIGH (official budget documents)
   - Coverage: 2020-2024 revenue figures

2. **Subsecretaría de Estado de Tributación (SET)**
   - URL: https://www.set.gov.py
   - Data accessed: Tax collection statistics
   - Data quality: HIGH (primary source for tax administration)
   - Note: Detailed breakdowns not publicly available; aggregated in MEF reports

### Multilateral Organizations

3. **OECD Revenue Statistics in Latin America and the Caribbean 2025**
   - URL: https://www.oecd.org/content/dam/oecd/en/publications/reports/2025/05/revenue-statistics-in-latin-america-and-the-caribbean-2025-country-notes_29961c77/paraguay_ba8c3116/2ae5d000-en.pdf
   - Data used: Tax-to-GDP ratios (2020-2023)
   - Methodology: OECD standard (excludes social security)
   - Data quality: HIGH (peer-reviewed, cross-validated)

4. **IMF Article IV Consultation (2024)**
   - Document: "Paraguay: 2024 Article IV Consultation, Third Review"
   - Report No.: 2024/200
   - URL: https://www.elibrary.imf.org/view/journals/002/2024/200/article-A001-en.xml
   - Data used: GDP projections, fiscal analysis
   - Data quality: HIGH (IMF staff estimates)

5. **World Bank**
   - Document: "Paraguay: Country Private Sector Diagnostic" (2025)
   - URL: https://www.ifc.org/content/dam/ifc/doc/2025/paraguay-country-private-sector-diagnostic-en.pdf
   - Data used: Informal economy estimates, structural analysis
   - Data quality: MEDIUM-HIGH (survey-based estimates)

### Private Sector Analysis

6. **PwC Worldwide Tax Summaries**
   - URL: https://taxsummaries.pwc.com/paraguay
   - Last updated: July 16, 2025
   - Data used: Tax rates, structure descriptions
   - Data quality: HIGH (verified by professional tax advisors)

7. **CEIC Data**
   - URL: https://www.ceicdata.com/en/indicator/paraguay/tax-revenue
   - Data used: Monthly tax collection trends
   - Data quality: MEDIUM (compiled from official sources, some lag)

---

## Data Construction Methodology

### Tax-to-GDP Ratios

**Formula**: Tax Revenue / Nominal GDP × 100

**Sources by Year**:
- 2020-2022: OECD Revenue Statistics 2024 (finalized data)
- 2023: OECD Revenue Statistics 2025 (preliminary data)
- 2024: IMF projections + MEF preliminary reports

**Confidence Levels**:
- 2020-2022: ✅ HIGH (audited, finalized)
- 2023: ✅ MEDIUM-HIGH (preliminary official data)
- 2024: ⚠️ MEDIUM (projections based on first-semester actuals)

### Revenue Breakdown by Tax Type

**Method**: 
1. Start with MEF total revenue figures (official)
2. Apply OECD Revenue Statistics proportions by tax category
3. Cross-validate with IMF fiscal tables
4. Adjust for known policy changes (e.g., 2019 dividend tax introduction)

**Estimation Required**:
- ✅ Total revenue: Directly from MEF (no estimation)
- ✅ IVA revenue: Directly from SET reports via MEF (no estimation)
- ⚠️ IRE/IRP breakdown: Estimated from OECD proportions (SET does not publish separate figures)
- ⚠️ Excise taxes: Estimated from customs + MEF aggregates

**Known Data Gaps**:
1. SET does not publish detailed tax-by-tax revenue breakdowns (only aggregates)
2. Informal economy adjustments not quantified in official statistics
3. Maquila regime revenue loss (tax expenditure) not officially calculated

---

## Data Quality Assessment

| Variable | 2020 | 2021 | 2022 | 2023 | 2024 | Source Quality |
|----------|------|------|------|------|------|----------------|
| Total Revenue | ✅ HIGH | ✅ HIGH | ✅ HIGH | ✅ MEDIUM-HIGH | ⚠️ MEDIUM | MEF official |
| Tax/GDP Ratio | ✅ HIGH | ✅ HIGH | ✅ HIGH | ✅ MEDIUM-HIGH | ⚠️ MEDIUM | OECD/IMF |
| IVA Revenue | ✅ HIGH | ✅ HIGH | ✅ HIGH | ✅ MEDIUM-HIGH | ⚠️ MEDIUM | MEF/SET |
| IRE Revenue | ⚠️ MEDIUM | ⚠️ MEDIUM | ⚠️ MEDIUM | ⚠️ MEDIUM | ⚠️ MEDIUM | Estimated from OECD |
| IRP Revenue | ⚠️ MEDIUM | ⚠️ MEDIUM | ⚠️ MEDIUM | ⚠️ MEDIUM | ⚠️ MEDIUM | Estimated from OECD |

**Legend**:
- ✅ HIGH: Official audited data, <5% margin of error
- ✅ MEDIUM-HIGH: Official preliminary data, ~5-10% margin of error
- ⚠️ MEDIUM: Estimates based on official aggregates, ~10-15% margin of error
- ❌ LOW: Rough estimates, >15% margin of error (none used in this dataset)

---

## Comparison Methodology: Paraguay vs. Argentina

**Adjustment for Comparability**:

1. **Provincial Taxes**: Argentina figures include provincial taxes (IIBB, property, stamps); Paraguay has minimal municipal taxes
2. **Social Security**: OECD methodology excludes social security from "tax revenue"; both countries adjusted consistently
3. **Exchange Rates**: All USD figures use average annual exchange rate from World Bank data
4. **GDP Calculations**: Nominal GDP (not PPP) for tax-to-GDP ratios

---

## Update Frequency

**Official Data Release Schedule**:
- MEF Quarterly Reports: Published 45 days after quarter-end
- OECD Revenue Statistics: Annual (published July of following year)
- IMF Article IV: Annual (published ~6 months after consultation)

**Next Expected Updates**:
- 2024 Final Data: March-April 2026 (MEF audited report)
- 2025 Preliminary Data: August 2026 (OECD Revenue Statistics 2026)

---

## Replication Instructions

To replicate this data collection:

1. **Access MEF Reports**:
   ```
   https://www.mef.gov.py/en/publications
   Download "Informe de las Finanzas Públicas" (annual report)
   Table: "Ingresos Tributarios del Gobierno Central"
   ```

2. **Cross-Validate with OECD**:
   ```
   https://www.oecd.org/tax/tax-policy/revenue-statistics-latin-america-caribbean.htm
   Download Excel file: "Revenue Statistics LAC 2025"
   Tab: "Paraguay" → Table 4.1 "Tax revenue by level of government"
   ```

3. **Verify GDP Figures**:
   ```
   World Bank Open Data: https://data.worldbank.org/
   Indicator: NY.GDP.MKTP.CD (GDP current USD)
   Country: Paraguay
   ```

4. **Calculate Tax-to-GDP**:
   ```python
   tax_to_gdp_ratio = (tax_revenue_usd / gdp_nominal_usd) * 100
   ```

---

## Additional Dataset: Government Spending Comparison

### File: `government_spending_comparison.csv`

**Purpose**: Cross-country comparison of government spending patterns to explain why Paraguay operates with 14.5% tax-to-GDP ratio.

**Countries Included**: Paraguay, Argentina, Brazil, Chile, Uruguay, OECD Average

**Variables** (13 columns):
- Total government spending (% GDP)
- Pension spending (% GDP)
- Health spending (% GDP)
- Education spending (% GDP)
- Public sector employment (% of total employment)
- Federal levels (1=unitary, 3=federal system)
- Tax-to-GDP ratio (%)
- Informal employment (%)
- Social security coverage (%)
- University tuition policy
- Gini coefficient (inequality measure)
- Poverty rate (%)

**Data Sources for Spending Comparison**:

1. **Government Spending**: IMF Fiscal Monitor 2023
   - URL: https://www.imf.org/external/datamapper/exp@FPP
   - Data quality: HIGH (official government accounts)

2. **Pension Spending**: OECD Pensions at a Glance 2023
   - URL: https://www.oecd.org/content/dam/oecd/en/publications/support-materials/2023/12/pensions-at-a-glance-2023_4757bf20/PaG2023-country-profiles.pdf
   - Data quality: HIGH (standardized methodology)

3. **Health Spending**: World Bank Health Nutrition and Population Statistics
   - URL: https://data.worldbank.org/indicator/SH.XPD.CHEX.GD.ZS
   - Data quality: HIGH (WHO/World Bank verified)

4. **Education Spending**: UNESCO Institute for Statistics / World Bank
   - URL: https://data.worldbank.org/indicator/SE.XPD.TOTL.GD.ZS
   - Data quality: HIGH (government-reported, cross-validated)

5. **Public Sector Employment**: ILO Statistics / National Labor Force Surveys
   - Data quality: MEDIUM-HIGH (survey-based, methodological differences across countries)

6. **Informal Employment**: 
   - Paraguay: Statista/EPH (68%, 2022) - https://www.statista.com/statistics/1039971/informal-employment-share-paraguay/
   - Other countries: ILO ILOSTAT Database
   - Data quality: MEDIUM-HIGH (survey-based)

7. **Social Security Coverage**: ILO Social Protection Platform
   - URL: https://www.social-protection.org/gimi/
   - Data quality: MEDIUM-HIGH (administrative data + surveys)

8. **Inequality (Gini)**: World Bank PovcalNet / national statistics
   - Data quality: MEDIUM-HIGH (household survey-based)

9. **Poverty Rates**: World Bank Poverty & Equity Data Portal
   - URL: https://data.worldbank.org/topic/poverty
   - Data quality: MEDIUM-HIGH (PPP-adjusted poverty lines)

**Confidence Levels for Spending Comparison**:
- ✅ HIGH: Total gov't spending, pension spending, health spending, education spending
- ✅ MEDIUM-HIGH: Informal employment, social security coverage, Gini coefficient, poverty rates
- ⚠️ MEDIUM: Public sector employment (methodological differences), federal levels (structural classification)

**Related Analysis**: See `research/genspark_outputs/prompt2_paraguay_why.md` for interpretation of spending differentials.

---

## Contact for Data Questions

For questions about this dataset:
- **Repository**: https://github.com/adrianlerer/argentine-taxes-extended-phenotype
- **Issue Tracker**: https://github.com/adrianlerer/argentine-taxes-extended-phenotype/issues
- **Related Research**: 
  - `research/genspark_outputs/prompt1_paraguay_system.md`
  - `research/genspark_outputs/prompt2_paraguay_why.md`

---

**Document Version**: 1.1  
**Last Audit**: October 22, 2025  
**Next Scheduled Review**: March 2026 (after 2024 final data release)
