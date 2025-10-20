# Contributing to Legal Phenotype Research

Thank you for your interest in contributing to this research project! This repository supports two SSRN working papers on constitutional lock-in mechanisms in Argentina.

---

## 📋 Table of Contents

1. [Code of Conduct](#code-of-conduct)
2. [How to Contribute](#how-to-contribute)
3. [Methodology Standards](#methodology-standards)
4. [Citation Guidelines](#citation-guidelines)
5. [Data Contributions](#data-contributions)
6. [Issue Reporting](#issue-reporting)

---

## Code of Conduct

This project adheres to academic integrity standards:

- ✅ **Honesty**: All claims must be tagged with Reality Filter confidence levels
- ✅ **Transparency**: Methodologies must be documented and reproducible
- ✅ **Attribution**: All sources must be properly cited
- ✅ **Respect**: Constructive criticism welcome, personal attacks not tolerated

---

## How to Contribute

### Types of Contributions Welcome

1. **Data corrections**: If you find errors in fiscal/legislative data
2. **Source verification**: Help verify `[FLAGGED]` claims
3. **Case law additions**: Additional Supreme Court cases relevant to analysis
4. **Comparative insights**: Data from other countries' constitutional reforms
5. **Methodological improvements**: Suggestions for RootFinder/Reality Filter/IusMorfos
6. **Translation**: Help translate abstracts/summaries to other languages

---

## Methodology Standards

All contributions must follow our three methodologies:

### 1. RootFinder Protocol

When adding case law analysis:
- ✅ Verify actual citations (don't rely on secondary summaries)
- ✅ Map citation networks (which cases cite which)
- ✅ Document "silences" (cases that SHOULD cite but don't)
- ✅ Tag findings: `[VERIFIED]` for direct access, `[PARAPHRASE]` for secondary

**Example**:
```markdown
**Claim**: Aquino (2004) cites Gunther (1984)  
**Reality Filter**: [VERIFIED: Fallos 327:3753, Considerando 3°, explicit citation to Fallos 308:1118]
```

---

### 2. Reality Filter Guidelines

Tag ALL empirical claims with confidence levels:

| Tag | Use When | Example |
|-----|----------|---------|
| `[VERIFIED]` | Primary source accessed | Constitutional text, case with URL |
| `[PARAPHRASE]` | Reliable secondary source | Academic paper citing primary |
| `[INFERENCE]` | Logical conclusion | Causal claim from correlation |
| `[ESTIMATION]` | Calculation from data | Derived statistics with formula |
| `[CONJECTURE]` | Provisional hypothesis | Motivation attribution without evidence |
| `[FLAGGED]` | Needs verification | Commonly repeated but unverified |

**❌ Bad example**:
> "Argentina's income tax is unconstitutional."

**✅ Good example**:
> "Argentina's income tax violates Art. 75 inc. 2 CN requirement of 'determinate time'" [VERIFIED: Constitution text http://... + Law 11,682 permanent operation since 1932 [VERIFIED: AFIP data]]

---

### 3. IusMorfos Clustering

When analyzing reform patterns:
- ✅ Document ALL attempts (not just successful ones)
- ✅ Record precise dates (initiation, debate, outcome)
- ✅ Classify by actor (executive, legislative, judicial, provincial)
- ✅ Distinguish incremental vs. structural reforms
- ✅ Note contextual factors (crisis, political transition, etc.)

**Template for reform entry**:

| Year | Initiative | Actor | Scope | Outcome | Context |
|------|------------|-------|-------|---------|---------|
| 2017 | Consenso Fiscal | National + 24 Provinces | Incremental | 0% compliance | Post-crisis normalization |

---

## Citation Guidelines

### For Academic Papers

If you cite this repository in academic work:

**APA**:
```
Lerer, A. (2025). Legal Phenotype Research: Evolutionary Analysis of Constitutional Lock-in Mechanisms [Data repository]. GitHub. https://github.com/adrianlerer/argentine-taxes-extended-phenotype
```

**BibTeX**:
```bibtex
@misc{lerer2025phenotype,
  author = {Lerer, Adrian},
  title = {Legal Phenotype Research: Evolutionary Analysis of Constitutional Lock-in Mechanisms},
  year = {2025},
  publisher = {GitHub},
  url = {https://github.com/adrianlerer/argentine-taxes-extended-phenotype}
}
```

### For Specific Papers

**Tax Reform Paper**:
```
Lerer, I.A. (2025). Tax Reform as Extended Phenotype: The 1932 Constitutional Mutation and Argentina's Fiscal Lock-in. SSRN Working Paper. https://ssrn.com/abstract=[ID]
```

**Labor Reform Paper**:
```
Lerer, A. (2024). Negative Conditions and Constitutional Lock-in: Why Labor Reform Fails in Argentina. SSRN Working Paper. https://ssrn.com/abstract=[ID]
```

---

## Data Contributions

### Submitting New Data

1. **Format**: CSV with UTF-8 encoding
2. **Metadata**: Create corresponding `sources.md` file documenting:
   - Original source (URL + access date)
   - Variables included
   - Data cleaning procedures
   - Reality Filter tag (`[VERIFIED]` or `[PARAPHRASE]`)
   - Known limitations

3. **Size**: Keep individual files <10 MB (use aggregation for larger datasets)

### Data Quality Standards

- ✅ Primary sources preferred (government statistics, official legal databases)
- ✅ Secondary sources acceptable if primary unavailable (cite academic compilations)
- ✅ All calculations must show formulas explicitly
- ✅ Missing data must be documented (don't use silent interpolation)
- ✅ Currency conversions must state exchange rate source and date

**Example metadata entry**:

```markdown
## Provincial IIBB Collection (2010-2024)

**Source**: ICiudad Foundation  
**URL**: https://www.iciudad.org.ar  
**Access date**: October 2025  
**Original data**: DNAP (provincial governments)  
**Format**: PDF → manually extracted to CSV  
**Reality Filter**: [PARAPHRASE: Secondary compilation of official data]  
**Limitations**: 2019 Q2 missing (interpolated from Q1 and Q3)
```

---

## Issue Reporting

### Report Errors

If you find errors in data, citations, or analysis:

1. **Open GitHub Issue** with label: `error-correction`
2. **Include**:
   - Specific claim you're questioning
   - Evidence of error (cite contradicting source)
   - Suggested correction
   - Reality Filter tag for your evidence

**Example issue**:

> **Title**: Correction: Law 11,682 sanctioned Dec 30, 1932 (not 1933)
>
> **Current claim** (TAREA_0.2): "Ley 11.682 sancionada en 1933"  
> **Evidence**: Boletín Oficial 02/01/1933 shows sanction date 30/12/1932  
> **Source**: Biblioteca del Congreso digital archive [URL]  
> **Reality Filter**: [VERIFIED - primary source accessed]
>
> **Suggested fix**: Change all references from "1933" to "1932"

---

### Suggest Improvements

For methodology or analysis suggestions:

1. **Open GitHub Issue** with label: `enhancement`
2. **Include**:
   - Current limitation you're addressing
   - Proposed improvement
   - Implementation feasibility
   - Academic precedents (if any)

**Example issue**:

> **Title**: Enhancement: Add network analysis metrics to RootFinder
>
> **Current**: RootFinder manually maps citation networks  
> **Proposed**: Integrate PageRank/betweenness centrality for case importance  
> **Tools**: NetworkX (Python) or igraph (R)  
> **Precedent**: Fowler et al. (2007) "Network Analysis and the Law"
>
> **Benefits**: Quantify "hub cases" objectively vs. manual identification

---

## Pull Request Process

### Before Submitting

- [ ] Read relevant methodology docs (RootFinder, Reality Filter, IusMorfos)
- [ ] Ensure all new claims have Reality Filter tags
- [ ] Add sources to appropriate `sources.md` file
- [ ] Test that links work (no dead URLs)
- [ ] Check spelling and formatting

### PR Template

```markdown
## Description
[Brief description of changes]

## Methodology Used
- [ ] RootFinder Protocol
- [ ] Reality Filter tagging
- [ ] IusMorfos clustering
- [ ] Other: [specify]

## Reality Filter Summary
- [X] `[VERIFIED]` claims: [count]
- [X] `[PARAPHRASE]` claims: [count]
- [X] `[INFERENCE]` claims: [count]
- [X] No `[FLAGGED]` claims remain

## Checklist
- [ ] All empirical claims tagged
- [ ] All URLs accessible
- [ ] Metadata complete
- [ ] Tests passed (if applicable)
```

---

## Questions?

- **Email**: adrian@lerer.com.ar
- **GitHub Issues**: https://github.com/adrianlerer/argentine-taxes-extended-phenotype/issues
- **SSRN**: https://papers.ssrn.com/sol3/cf_dev/AbsByAuth.cfm?per_id=7512489

---

## License

All contributions will be licensed under **CC BY 4.0** (Creative Commons Attribution 4.0 International).

By contributing, you agree to license your contributions under the same terms.

---

**Thank you for helping improve legal evolution research! 🚀**
