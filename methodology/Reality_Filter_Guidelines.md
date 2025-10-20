# Reality Filter Guidelines
## Confidence Tagging System for Research Claims

**Version**: 1.0  
**Developed by**: Adrian Lerer (2025)  
**Purpose**: Prevent hallucinations and clarify epistemic status of research claims

---

## Problem Statement

Academic research increasingly uses AI assistance, creating risk of:
1. **Hallucinated sources** - Citations to non-existent papers/cases
2. **Paraphrased distortions** - Secondary sources misrepresenting primary sources
3. **Inferential leaps** - Conclusions presented as facts
4. **Unverified data** - Statistics cited without source verification

**Reality Filter** is a tagging system that makes epistemic status **explicit and verifiable**.

---

## Tag Taxonomy

### `[VERIFIED]` - Highest confidence

**Definition**: Primary source directly accessed and quoted/paraphrased  
**Requirement**: Must provide URL, page number, or archival reference  
**Example**:
> "Article 75 inc. 2 CN states: 'Imponer contribuciones directas, por tiempo determinado'" [VERIFIED: Constitución Nacional Argentina 1994, Art. 75 inc. 2, http://servicios.infoleg.gob.ar/infolegInternet/anexos/0-4999/804/norma.htm]

**Use cases**:
- Constitutional/statutory text
- Court cases with full text accessed
- Official government statistics with URL
- Historical documents digitized

---

### `[PARAPHRASE]` - High confidence

**Definition**: Reconstructed from reliable secondary academic sources  
**Requirement**: Cite academic paper/book that cites primary source  
**Example**:
> "Alberdi argued that provinces should monopolize direct taxation" [PARAPHRASE: Porto (2004), citing Alberdi's Sistema Económico (1854), Chapter III]

**Use cases**:
- Academic consensus on historical facts
- Court case holdings summarized in treatises
- Statistical data aggregated by research institutions

---

### `[INFERENCE]` - Medium confidence

**Definition**: Logical conclusion from documented premises  
**Requirement**: Show reasoning chain explicitly  
**Example**:
> "Since Law 11,682 expired Dec 31, 1934 [VERIFIED: Law text] and was renewed annually 1935-1973 [VERIFIED: AFIP historical data], the requirement 'for determinate time' was violated for 39 years before formal replacement" [INFERENCE: Violation = operation beyond declared expiration without constitutional amendment]

**Use cases**:
- Legal interpretations
- Causal claims with documented correlation
- Comparative conclusions

---

### `[ESTIMATION]` - Medium-low confidence

**Definition**: Calculation based on verified data with stated assumptions  
**Requirement**: Show formula and data sources  
**Example**:
> "National income tax represents ~40% of provincial revenues via coparticipation transfers [ESTIMATION: Calculated as (Income tax collection 2024: $26 trillion [VERIFIED: MECON] × Average coparticipation rate 0.45 [VERIFIED: Law 23.548]) / Total provincial revenues $51 trillion [VERIFIED: ICiudad 2024]]"

**Use cases**:
- Derived statistics
- Projections from historical trends
- Aggregations across multiple sources

---

### `[CONJECTURE]` - Low confidence

**Definition**: Provisional hypothesis requiring verification  
**Requirement**: Explicitly state speculative nature + falsification criteria  
**Example**:
> "We conjecture that AFIP bureaucratic resistance explains failure of 2017 Consenso Fiscal [CONJECTURE: No documentary evidence found; requires interviews with AFIP officials or internal memos. Falsification: Evidence of AFIP support for reform would disprove this hypothesis]"

**Use cases**:
- Explanatory hypotheses without direct evidence
- Motivational attributions
- Future predictions

---

### `[FLAGGED]` - Requires verification

**Definition**: Claim found in sources but not yet verified  
**Requirement**: Mark for follow-up verification  
**Example**:
> "Supreme Court case Nordenskjöld (1984) established labor progressivity doctrine [FLAGGED: Commonly cited but full text not accessed; verification pending]"

**Use cases**:
- Commonly repeated claims requiring primary source check
- Statistical claims without source metadata
- Legal doctrines attributed without case citation

---

## Application Guidelines

### Rule 1: **Every empirical claim MUST have a tag**

❌ **Bad**: "Argentina's income tax violates the Constitution"  
✅ **Good**: "Argentina's income tax violates Art. 75 inc. 2 requirement of 'determinate time'" [VERIFIED: Constitution text + Law 11,682 permanent operation since 1932]

### Rule 2: **Tag at sentence level, not paragraph level**

Allows readers to distinguish verified facts from inferences within same argument.

### Rule 3: **Upgrade tags when possible**

`[FLAGGED]` → `[VERIFIED]` after accessing primary source  
`[CONJECTURE]` → `[INFERENCE]` after finding supporting evidence

### Rule 4: **Degrade tags when necessary**

If citation URL becomes dead link: `[VERIFIED]` → `[PARAPHRASE]`  
If calculation assumption questioned: `[ESTIMATION]` → `[CONJECTURE]`

---

## Examples from Research Papers

### Tax Reform Paper

**Claim**: "Law 11,682 was sanctioned December 30, 1932"  
**Tag**: `[VERIFIED: Boletín Oficial 02/01/1933, confirmed in Biblioteca del Congreso archives]`

**Claim**: "93 years of continuous constitutional violation"  
**Tag**: `[INFERENCE: 1932-2025 = 93 years; violation = operation beyond 'determinate time' without amendment]`

**Claim**: "Five actors create ESE: AFIP, provinces, government, professionals, Court"  
**Tag**: `[INFERENCE: Game-theoretic analysis of documented incentives; requires formal modeling for full verification]`

---

### Labor Reform Paper

**Claim**: "Aquino (2004) does NOT cite Nordenskjöld"  
**Tag**: `[VERIFIED: Fallos 327:3753 full text accessed via SAIJ, no citation found to Nordenskjöld in any considerando]`

**Claim**: "Brazil succeeded because lacked ultraactivity doctrine"  
**Tag**: `[PARAPHRASE: Mendes (2012) comparing Brazilian and Argentine labor law; + INFERENCE: Comparative analysis of reform outcomes]`

---

## Integration with RootFinder Protocol

RootFinder genealogical analysis produces `[VERIFIED]` tags for citations:

**Verified citation**: "Madorrán cites Aquino 3 times"  
**Tag**: `[VERIFIED: Madorrán Fallos 330:2988, Considerandos 4°, 7°, 8° explicitly cite Aquino 327:3753]`

**Absence of citation**: "Aquino does NOT cite Nordenskjöld"  
**Tag**: `[VERIFIED BY ABSENCE: Full text search of Aquino 327:3753 returns zero matches for 'Nordenskjöld']`

---

## Quality Control Checklist

Before publication, check:

- [ ] Every empirical claim has Reality Filter tag
- [ ] All `[VERIFIED]` claims have accessible sources (URL or archive reference)
- [ ] All `[INFERENCE]` claims show reasoning explicitly
- [ ] All `[CONJECTURE]` claims state falsification criteria
- [ ] No `[FLAGGED]` claims remain (upgrade or remove)
- [ ] Statistical `[ESTIMATION]` show calculation formulas

---

## Comparison with Traditional Academic Citations

| Traditional Citation | Reality Filter |
|---------------------|----------------|
| "Alberdi (1854) argued..." | `[PARAPHRASE]` or `[VERIFIED]` depending on direct access |
| No source given | **Not acceptable** - requires tag |
| "It is well known that..." | Requires `[CONJECTURE]` or upgrade to `[PARAPHRASE]` |
| Secondary citation: "X cited in Y" | Use `[PARAPHRASE: Y, citing X]` |

**Advantage**: Reality Filter makes **epistemic status** explicit, not just attribution.

---

## Citation

If you use Reality Filter in your research, cite as:

**APA**:
```
Lerer, A. (2025). Reality Filter Guidelines: Confidence Tagging System for Research Claims. 
GitHub: https://github.com/adrianlerer/argentine-taxes-extended-phenotype/
```

**BibTeX**:
```bibtex
@misc{lerer2025realityfilter,
  author = {Lerer, Adrian},
  title = {Reality Filter Guidelines: Confidence Tagging System for Research Claims},
  year = {2025},
  url = {https://github.com/adrianlerer/argentine-taxes-extended-phenotype/methodology/Reality_Filter_Guidelines.md}
}
```

---

## Future Developments

**Version 2.0 (planned)**:
- Color-coding for visualization (green = VERIFIED, yellow = INFERENCE, red = CONJECTURE)
- Automated tag extraction for bibliography generation
- Integration with Zotero/Mendeley citation managers
- Browser extension for real-time fact-checking

---

**License**: CC BY 4.0  
**Maintained by**: Adrian Lerer (adrian@lerer.com.ar)  
**Last updated**: October 2025
