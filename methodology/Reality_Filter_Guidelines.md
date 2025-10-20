# Reality Filter Guidelines
## Confidence Tagging System for Academic Research

**Version**: 1.0  
**Developed by**: Adrian Lerer (2025)  
**Purpose**: Transparent epistemology in legal-evolutionary research

---

## Motivation

Academic research on historical legal systems faces a fundamental challenge: **not all claims have equal evidential support**. Some statements are directly verified from primary sources; others are reasonable inferences; still others are provisional conjectures awaiting confirmation.

Traditional academic writing often obscures these distinctions, presenting all claims with equal confidence. The **Reality Filter** makes epistemological status explicit through systematic tagging.

---

## Tag System

### [VERIFIED] - Highest Confidence

**Definition**: Claim directly confirmed by accessing primary source.

**Examples**:
- ✅ "Law 11,682 was enacted on December 30, 1932" [VERIFIED: Boletín Oficial 02/01/1933]
- ✅ "Article 67 inc. 2 CN 1853 states 'por tiempo determinado'" [VERIFIED: Constitutional text accessed]
- ✅ "USA Amendment XVI ratified February 3, 1913" [VERIFIED: National Archives]

**Requirements**: 
- Direct access to original document
- Exact citation with URL (if digitally available)
- Date of access recorded

---

### [PARAPHRASE] - High Confidence

**Definition**: Claim reconstructed from secondary academic sources with strong consensus.

**Examples**:
- ✅ "Alberdi designed fiscal system prioritizing indirect taxes" [PARAPHRASE: Consensus in Porto 2004, Rezk 2018]
- ✅ "1932 income tax enacted in Great Depression context" [PARAPHRASE: Standard historical account]

**Requirements**:
- Minimum 2 academic sources agree
- Sources are peer-reviewed or authoritative
- No contradictory evidence found

---

### [INFERENCE] - Medium Confidence

**Definition**: Logical conclusion from documented premises, but not directly stated in sources.

**Examples**:
- ✅ "AFIP bureaucrats have interest in maintaining income tax" [INFERENCE: From employment data + public choice theory]
- ✅ "Provincial governors opposed fiscal centralization in 1994" [INFERENCE: From voting records + stated positions]

**Requirements**:
- Premises are [VERIFIED] or [PARAPHRASE]
- Logical connection is explicit
- Alternative explanations considered

---

### [ESTIMATION] - Medium Confidence

**Definition**: Quantitative calculation based on verified data, but involving assumptions.

**Examples**:
- ✅ "Tax professionals earn ~$X billion from income tax compliance" [ESTIMATION: From AFIP data × average fees]
- ✅ "Probability of reform 2025-2027 < 2%" [ESTIMATION: Bayesian calculation from historical success rates]

**Requirements**:
- Base data is [VERIFIED]
- Assumptions explicitly stated
- Sensitivity analysis performed (if feasible)

---

### [CONJECTURE] - Low Confidence

**Definition**: Provisional hypothesis awaiting empirical verification.

**Examples**:
- ⚠️ "If Milei attempts constitutional reform, provinces will veto" [CONJECTURE: Prediction not yet tested]
- ⚠️ "Judicial legitimation was intentional strategy" [CONJECTURE: Motive inference without direct evidence]

**Requirements**:
- Explicitly labeled as hypothesis
- Falsification criteria stated
- Alternative hypotheses acknowledged

---

## Application Guidelines

### When to Tag

**MANDATORY tagging**:
1. All quantitative claims
2. All historical assertions
3. All causal claims
4. All predictions

**OPTIONAL tagging** (but recommended):
- Routine background facts (e.g., "Argentina is a federal republic")
- Direct quotations (source citation is sufficient)

---

### How to Tag in Text

**In-line** (short mentions):
> "The 1932 income tax was declared temporary until December 31, 1934 [VERIFIED: Law 11,682 text]."

**Footnote** (detailed claims):
> "Argentina's tax pressure in 2024 reached 29.3% of GDP.¹"
>
> ¹[ESTIMATION] Calculated from MECON 2024 data ($X trillion collection / $Y trillion GDP). Assumes INDEC GDP figures are accurate (contested by some analysts).

**Appendix** (complex inferences):
> "We estimate AFIP bureaucrats' collective interest in income tax preservation at $Z billion annually [ESTIMATION - see Appendix B for calculation details]."

---

## Benefits of Reality Filter

1. **Transparency**: Readers know epistemic status immediately
2. **Replication**: Other researchers can verify high-confidence claims first
3. **Criticism**: Low-confidence claims invite empirical testing
4. **Honesty**: Prevents overclaiming beyond evidence

---

## Limitations

1. **Subjectivity**: Tag assignment involves judgment
2. **Granularity**: Five tags may not capture all nuances
3. **Overhead**: Adds work to research process

---

## Comparison to Traditional Methods

| Traditional | Reality Filter |
|-------------|----------------|
| "Studies show..." (ambiguous) | "Studies show... [PARAPHRASE: Smith 2020, Jones 2021]" |
| "It is likely that..." (vague) | "It is likely that... [INFERENCE: from X + Y data]" |
| "X will probably happen" (unfalsifiable) | "X will probably happen [CONJECTURE: testable by 2027]" |

---

## Citation

If you use Reality Filter methodology, cite as:
```
Lerer, A. (2025). Reality Filter Guidelines: Confidence Tagging System for Academic Research. 
GitHub: https://github.com/adrianlerer/argentine-taxes-extended-phenotype/methodology/Reality_Filter_Guidelines.md
```

---

**License**: CC BY 4.0
