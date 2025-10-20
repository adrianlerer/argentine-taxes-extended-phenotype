# RootFinder Protocol
## Genealogical Analysis of Legal Precedents

**Version**: 1.0  
**Developed by**: Adrian Lerer (2025)  
**Inspired by**: Phylogenetic analysis in evolutionary biology

---

## Purpose

RootFinder Protocol is a methodology for **genealogical analysis of judicial precedents**, analogous to phylogenetic tree construction in biology. It traces how legal doctrines evolve through citation networks, identifying:

1. **Foundational precedents** ("root cases")
2. **Doctrinal mutations** (changes in interpretation over time)
3. **Evolutionary pathways** (how courts build on prior decisions)

---

## Method

### Step 1: Identify Target Doctrine

Define the legal doctrine to be traced. Example:
- *Target*: "Constitutionality of permanent national direct income tax (Argentina)"
- *Time span*: 1932-2025

### Step 2: Search for Foundational Cases

Use judicial databases (SAIJ, Lexis, JSTOR Law) to find earliest cases mentioning:
- Constitutional article at issue (Art. 67 inc. 2 → Art. 75 inc. 2)
- Key statutory provisions (Law 11,682/1932)
- Boolean search: `("impuesto a los réditos" OR "impuesto a las ganancias") AND constitucionalidad`

### Step 3: Citation Network Analysis

For each case found:
1. Extract citations to prior cases
2. Map citation relationships (Case A cites Case B)
3. Identify "hub cases" (most cited)

### Step 4: Doctrinal Evolution Tracking

Compare legal reasoning across time:
- What arguments did early cases accept?
- When did doctrine shift?
- What external events triggered shifts?

### Step 5: Reality Filter Tagging

Tag each finding:
- `[VERIFIED]` - Primary source accessed directly
- `[PARAPHRASE]` - Reconstructed from academic commentary
- `[INFERENCE]` - Logical conclusion from documented premises

---

## Application Example: Argentine Income Tax (Tax Reform Paper)

**Target**: How CSJN legitimized permanent national direct tax (1932-2025)

**Step 1 Results**:
- ❌ No foundational case found in 1933-1934 (expected but absent)
- ✅ First confirmed mention: Fallos 170:186 (1934) - but not about Law 11,682
- ✅ First substantive case: *Banco Provincia c/ Nación* (Fallos 186:170, 1940)

**Step 2 Results** (Citation network from Fallos 186:170):
- Cites: Fallos 170:186 (1934)
- Cited by: 150+ subsequent cases (major hub)

**Step 3 Results** (Doctrinal evolution):
- **1940**: "Temporary" interpreted as "while law with expiration date exists (even if renewable)"
- **1973**: Ley 20.628 removes expiration → Court does NOT object
- **1994**: Constitutional reform maintains "for determinate time" → Court ignores discrepancy
- **2019**: *García* case questions APPLICATION but not CONSTITUTIONALITY

**Conclusion**: Legitimation occurred through **judicial silence** (never declared unconstitutional) rather than explicit approval.

---

## Application Example: Labor Reform (Negative Conditions Paper)

**Target**: Evolution of Art. 14 bis "progressive" doctrine

**Key Finding**: Genealogy commonly cited as "Vizzoti descends from Aquino, which descends from Nordenskjöld" is **INCORRECT**.

**Verified Genealogy**:
```
De Luca (1969) - Improper stability
    |
    [20 year gap]
    |
Gunther (1984) - Alterum non laedere
    |
    [20 year gap]
    |
SIMULTANEOUS DYAD (2004):
├─ Vizzoti (14/09/2004) → Does NOT cite Nordenskjöld
└─ Aquino (21/09/2004) → Does NOT cite Nordenskjöld
    |
Milone (26/10/2004)
    |
Madorrán (03/05/2007)
```

**Methodological insight**: Direct citation verification revealed that doctrinal narrative ("Nordenskjöld as foundation") is a **post-hoc reconstruction** not supported by actual case citations.

---

## Advantages

1. **Falsifiability**: Claims about doctrinal lineage can be verified/falsified by checking actual citations
2. **Discovers silences**: Identifies cases that SHOULD have been cited but weren't
3. **Maps doctrinal mutations**: Shows when and how legal reasoning shifts
4. **Comparative analysis**: Enables cross-country comparison of doctrine evolution

---

## Limitations

1. **Access barriers**: Not all historical cases digitized (pre-1970 especially in Argentina)
2. **Language dependence**: Works best with systematic citation practices (common law > civil law)
3. **Interpretation bias**: Researcher must infer doctrine from limited text
4. **Missing oral traditions**: Some doctrines spread through legal culture without formal citation

---

## Tools and Resources

**Recommended databases**:
- **Argentina**: SAIJ (Sistema Argentino de Información Jurídica) - http://www.saij.gob.ar
- **USA**: Westlaw, LexisNexis, Google Scholar (case law)
- **Brazil**: STF (Supremo Tribunal Federal) - https://portal.stf.jus.br
- **Citation analysis**: Manual extraction or use tools like Casetext, Ravel Law

**Visualization**:
- Graphviz for citation networks
- D3.js for interactive trees
- Excel/CSV for tabular genealogies

---

## Citation

If you use RootFinder Protocol, cite as:

**APA**:
```
Lerer, A. (2025). RootFinder Protocol: Genealogical Analysis of Legal Precedents. 
GitHub: https://github.com/adrianlerer/argentine-taxes-extended-phenotype/
```

**BibTeX**:
```bibtex
@misc{lerer2025rootfinder,
  author = {Lerer, Adrian},
  title = {RootFinder Protocol: Genealogical Analysis of Legal Precedents},
  year = {2025},
  url = {https://github.com/adrianlerer/argentine-taxes-extended-phenotype/methodology/RootFinder_Protocol.md}
}
```

---

## Future Developments

**Version 2.0 (planned)**:
- Automated citation extraction from PDFs
- Machine learning classification of doctrinal shifts
- Network analysis metrics (betweenness centrality, PageRank for case importance)
- Integration with Reality Filter confidence scoring

---

**License**: CC BY 4.0  
**Maintained by**: Adrian Lerer (adrian@lerer.com.ar)  
**Last updated**: October 2025
