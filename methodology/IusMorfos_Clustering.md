# IusMorfos: Temporal Clustering Method
## Identifying Patterns in Institutional Reform Attempts

**Version**: 1.0  
**Developed by**: Adrian Lerer (2025)  
**Etymology**: *Ius* (Latin: law) + *Morfos* (Greek: form/shape)

---

## Purpose

IusMorfos is a methodology for **temporal clustering analysis** of institutional reform attempts, designed to identify:

1. **Crisis windows** - Periods when reforms succeed
2. **Lock-in periods** - Periods when reforms systematically fail
3. **Actor patterns** - Which institutional actors drive/block reforms
4. **Outcome correlations** - What factors predict success/failure

---

## Core Concept: Legal Reform "Morphospace"

Analogous to biological morphospace (distribution of possible phenotypes), **legal morphospace** maps the distribution of attempted institutional reforms across:

- **Time axis**: When reforms attempted
- **Outcome axis**: Success/failure/partial implementation
- **Actor axis**: Who initiated reform (executive, legislative, judicial, etc.)
- **Magnitude axis**: Scope of change (incremental vs. structural)

**Key insight**: Reforms cluster temporally around **exogenous shocks** (economic crises, political transitions), creating **punctuated equilibrium** pattern.

---

## Method

### Step 1: Define Reform Universe

Specify:
- **Policy domain**: Tax reform, labor reform, etc.
- **Time span**: E.g., 1994-2025
- **Inclusion criteria**: What counts as "reform attempt"?
  - Legislative bills introduced
  - Executive decrees issued
  - Fiscal pacts signed
  - Constitutional amendments proposed

### Step 2: Collect Reform Data

For each reform attempt, record:
1. **Date** (initiation, debate, passage/failure)
2. **Actor** (who proposed: president, congress, provinces, etc.)
3. **Scope** (incremental vs. structural)
4. **Outcome** (passed, failed, partial implementation, compliance rate)
5. **Context** (economic crisis, political transition, court ruling, etc.)

### Step 3: Temporal Clustering

Identify clusters using:
- **Visual inspection**: Plot reforms on timeline, look for dense periods
- **Statistical clustering**: K-means, DBSCAN on time-series
- **Event detection**: Identify "shocks" that trigger reform waves

### Step 4: Pattern Analysis

Compare clusters:
- Do successful reforms cluster around crises?
- Do failed reforms cluster in "normal" periods?
- Which actors succeed/fail systematically?

### Step 5: ESE Identification

**Evolutionarily Stable Equilibrium** periods = long stretches with:
- High reform attempt frequency
- Zero substantive success
- Multiple actor types trying and failing

**Hypothesis**: ESE periods indicate structural impossibility of reform (convergent actor incentives blocking change).

---

## Application Example: Argentine Tax Reform (1994-2025)

### Step 1: Universe

- **Domain**: Federal tax system and coparticipation
- **Time span**: 1994-2025 (post-constitutional reform)
- **Inclusion**: Fiscal pacts, coparticipation bills, constitutional implementation attempts

### Step 2: Data Collected

| Year | Initiative | Actor | Scope | Outcome | Context |
|------|------------|-------|-------|---------|---------|
| 1994 | Transitional Clause 6 | Constitutional Convention | Structural | Mandate created (not implemented) | Constitutional reform |
| 1996 | Deadline for new coparticipation law | Congress (required) | Structural | **FAILED** | Economic growth period |
| 1999 | Compromiso Federal | National + Provinces | Incremental | 20% compliance | Pre-2001 crisis |
| 2002 | Emergency measures | Executive | Incremental | 80% compliance | **Crisis window** |
| 2017 | Consenso Fiscal | National + Provinces | Incremental | 0% compliance | Post-crisis normalization |
| 2023 | Milei reforms | Executive | Incremental | Ongoing | Economic crisis |

### Step 3: Clusters Identified

**Cluster 1: Crisis window (2001-2003)**
- Context: Debt default, currency devaluation, political instability
- Reform success rate: 80%
- Pattern: Emergency measures accepted

**Cluster 2: Lock-in period (2003-2023)**
- Context: Economic recovery → normalization
- Reform success rate: 0-20%
- Pattern: Systematic failure despite multiple attempts

**Cluster 3: New crisis window? (2023-2025)**
- Context: Hyperinflation threat, political outsider (Milei)
- Reform success rate: TBD
- Pattern: Ongoing experiment

### Step 4: Pattern Analysis

**Finding 1**: Structural reforms (constitutional compliance) = 0% success in all periods  
**Finding 2**: Incremental reforms succeed ONLY during crisis windows  
**Finding 3**: Executive-driven reforms more successful than legislative (shorter veto players)

### Step 5: ESE Identification

**2003-2023 = ESE period**:
- 20-year stretch
- 11 reform attempts
- <5% average compliance
- Five convergent actors blocking change (see Tax Reform Paper, Section 8)

**Prediction**: ESE breaks only with exogenous shock (severe crisis disrupting actor incentives).

---

## Application Example: Argentine Labor Reform (1994-2024)

### Clusters Identified

**Cluster 1: Failed structural attempts (1998-2001)**
- De la Rúa flexibilization bills
- Outcome: Blocked by CGT, Court

**Cluster 2: Crisis window with zero labor reform (2001-2003)**
- **Anomaly**: Despite severe crisis, labor system unchanged
- **Explanation**: Art. 14 bis "negative conditions" + quadruple constitutional lock

**Cluster 3: Lock-in period (2003-2024)**
- 60+ reform attempts
- 0% structural success
- Pattern: Same as tax reform ESE

**Key insight**: Labor reform shows STRONGER lock-in than tax reform (zero success even in crisis windows).

---

## Advantages

1. **Visualizes persistence patterns**: Makes long-term failure visible
2. **Identifies contingent windows**: Shows when reform possible (crises)
3. **Distinguishes incremental vs. structural impossibility**: Some reforms never succeed regardless of context
4. **Comparative analysis**: Enables cross-country comparison of reform dynamics

---

## Integration with Extended Phenotype Theory

IusMorfos clustering reveals **phenotypic stability** of institutions:

- **Punctuated equilibrium**: Long stasis + brief crisis-driven change
- **ESE periods**: Institutional "fitness landscape" with local optimum trapping system
- **Selection pressure failure**: Normative pressure for reform (constitutional mandate, economic efficiency) fails to overcome ESE

**Key theoretical implication**: Legal institutions exhibit **evolutionary inertia** analogous to biological constraints—reform attempts analogous to "hopeful monsters" that fail to survive selection.

---

## Limitations

1. **Subjective outcome coding**: What counts as "success" may be disputed
2. **Small sample sizes**: Few countries, few reforms per domain
3. **Retrospective bias**: We know outcomes, hard to assess contemporaneous expectations
4. **Missing counterfactuals**: Can't observe "what if reform succeeded"

---

## Tools and Resources

**Data collection**:
- Legislative databases (Argentine Congress: https://www.hcdn.gob.ar)
- Government archives (decree repositories)
- Newspaper archives (for context reconstruction)

**Visualization**:
- Excel/Google Sheets for timeline charts
- Python (pandas, matplotlib) for clustering
- R (ggplot2) for publication-quality figures

**Statistical analysis**:
- K-means clustering (scikit-learn)
- Time-series event detection (ruptures package)
- Survival analysis (for "time until failure")

---

## Citation

If you use IusMorfos in your research, cite as:

**APA**:
```
Lerer, A. (2025). IusMorfos: Temporal Clustering Method for Institutional Reform Analysis. 
GitHub: https://github.com/adrianlerer/argentine-taxes-extended-phenotype/
```

**BibTeX**:
```bibtex
@misc{lerer2025iusmorfos,
  author = {Lerer, Adrian},
  title = {IusMorfos: Temporal Clustering Method for Institutional Reform Analysis},
  year = {2025},
  url = {https://github.com/adrianlerer/argentine-taxes-extended-phenotype/methodology/IusMorfos_Clustering.md}
}
```

---

## Future Developments

**Version 2.0 (planned)**:
- Machine learning classification of "crisis windows" vs. "normal periods"
- Bayesian updating of success probability as reforms progress
- Network analysis of actor coalitions (who allies with whom)
- Cross-domain comparison (tax vs. labor vs. trade reforms)

---

## Related Methodologies

- **Policy Diffusion Analysis**: Rogers (2003) innovation diffusion curves
- **Process Tracing**: Beach & Pedersen (2013) causal mechanism identification  
- **Qualitative Comparative Analysis (QCA)**: Ragin (2008) necessary/sufficient conditions
- **Event History Analysis**: Box-Steffensmeier & Jones (2004) time-to-event modeling

**IusMorfos distinction**: Focuses specifically on **temporal clustering around crises** and **ESE identification** in legal/institutional context.

---

**License**: CC BY 4.0  
**Maintained by**: Adrian Lerer (adrian@lerer.com.ar)  
**Last updated**: October 2025
