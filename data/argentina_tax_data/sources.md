# Data Sources: Argentina Tax Data

## National Tax Collection (2010-2024)

**Source**: Dirección Nacional de Investigaciones y Análisis Fiscal (DNIAF)  
**Institution**: Ministerio de Economía de Argentina  
**URL**: https://www.argentina.gob.ar/economia/ingresos-publicos  
**Access date**: October 2025  
**Format**: Excel files (converted to CSV)  
**Frequency**: Monthly (aggregated to annual)  
**Variables**: Total tax collection by tax type, % GDP, nominal pesos  
**Reality Filter**: [VERIFIED] - Official government source

---

## Provincial IIBB Collection (2004-2024)

**Source**: ICiudad Foundation - "La recaudación tributaria de las provincias 2024"  
**Institution**: Fundación ICiudad  
**URL**: https://www.iciudad.org.ar/  
**Access date**: October 2025  
**Original data**: Dirección Nacional de Asuntos Provinciales (DNAP)  
**Format**: PDF report (data manually extracted to CSV)  
**Variables**: IIBB collection by province, % GDP provincial, per capita  
**Reality Filter**: [VERIFIED] - Secondary compilation of official data

---

## Tax Pressure by Jurisdiction

**Source**: Instituto Argentino de Análisis Fiscal (IARAF)  
**URL**: https://www.iaraf.org  
**Report**: "Presión Tributaria por Jurisdicción 2023"  
**Access date**: October 2025  
**Variables**: Total tax pressure (national + provincial + municipal) by province  
**Reality Filter**: [VERIFIED] - Authoritative think tank

---

## GDP Data

**Source**: Instituto Nacional de Estadística y Censos (INDEC)  
**URL**: https://www.indec.gob.ar  
**Series**: Cuentas Nacionales - PIB trimestral  
**Access date**: October 2025  
**Variables**: Nominal GDP, Real GDP, deflators  
**Reality Filter**: [VERIFIED] - Official statistics (note: contested by some economists)

---

## Coparticipation Transfers

**Source**: Ministerio del Interior - Dirección Nacional de Asuntos Provinciales  
**URL**: https://www.argentina.gob.ar/interior  
**Format**: Monthly reports  
**Variables**: Transfers by province, primary/secondary distribution  
**Reality Filter**: [VERIFIED] - Official data

---

## Data Cleaning Notes

1. **Currency conversion**: All figures in nominal Argentine pesos (not adjusted for inflation unless explicitly stated)
2. **Missing data**: 2019 Q2 provincial data interpolated from Q1 and Q3
3. **Methodology change**: 2015 MECON changed reporting standard (series adjusted for comparability)
4. **IIBB disaggregation**: Data for Buenos Aires separated into CABA (autonomous city) and Buenos Aires Province
5. **GDP deflator**: Official INDEC deflator used (alternative deflators available from private consultancies)

---

**Dataset files in this directory**:
- `recaudacion_nacional_2010_2024.csv` - National tax collection
- `recaudacion_provincial_iibb.csv` - Provincial gross receipts tax
- `autonomia_fiscal_provincial.csv` - Fiscal autonomy index by province
- `coparticipacion_transfers.csv` - Federal revenue sharing transfers

---

**Last updated**: October 20, 2025
