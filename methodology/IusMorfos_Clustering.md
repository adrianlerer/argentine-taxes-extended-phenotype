# IusMorfos: Temporal Clustering Method
## Identifying Patterns in Legal Reform Attempts

**Version**: 1.0  
**Developed by**: Adrian Lerer (2025)  
**Purpose**: Detect "crisis windows" vs. "lock-in periods" in institutional reform

---

## Theoretical Background

**Problem**: Legal reforms cluster temporally - some periods see multiple attempts, others have none. Traditional event-history analysis treats each attempt independently, missing **structural patterns**.

**IusMorfos hypothesis**: Reform attempts cluster into temporal regimes:
- **Crisis windows**: External shocks (economic collapse, political transition) open temporary reform possibilities
- **Lock-in periods**: ESE dominance blocks reforms regardless of technical merit

**Goal**: Quantitatively identify these regimes in historical data.

---

## Method

### Step 1: Define Reform Universe

Specify:
- **Domain**: Tax reform, labor reform, etc.
- **Time span**: e.g., 1994-2025
- **Inclusion criteria**: Legislative bills, executive decrees, fiscal pacts, etc.

**Example (Tax Reform Argentina)**:
- Domain: Federal tax structure & coparticipation
- Span: 1994-2025 (post-constitutional reform)
- Inclusion: Bills in Congress + Fiscal pacts between Nation-Provinces
- **N = 65 reform attempts identified**

---

### Step 2: Code Reform Attributes

For each reform attempt, code:
1. **Date** (month/year)
2. **Outcome** (passed/failed/partial)
3. **Actor** (executive/legislative/judicial/provincial)
4. **Scope** (comprehensive/incremental)
5. **Crisis context** (yes/no)

**Example coding**:
```
{
  "date": "2017-11",
  "name": "Consenso Fiscal",
  "outcome": "failed",
  "actor": "executive+provincial",
  "scope": "comprehensive",
  "crisis": false
}
```

---

### Step 3: Temporal Clustering

Apply clustering algorithm (e.g., DBSCAN, hierarchical) to identify **temporal regimes**:

**Parameters**:
- **ε (epsilon)**: Maximum time gap within a cluster (e.g., 24 months)
- **minPts**: Minimum reforms per cluster (e.g., 3)

**Output**: 
- Cluster 1: 1999-2002 (Crisis window - 12 reforms, 3 passed)
- Cluster 2: 2003-2015 (Lock-in period - 8 reforms, 0 passed)
- Cluster 3: 2017-2019 (Brief window - 5 reforms, 0 passed)
- Cluster 4: 2023-2025 (Milei window - 4 reforms, 1 partial)

---

### Step 4: Regime Characterization

For each temporal cluster, calculate:
1. **Success rate**: % reforms passed
2. **Actor diversity**: Number of distinct initiating actors
3. **Average scope**: Mean comprehensiveness score
4. **Crisis proportion**: % attempts during economic crisis

**Statistical test**: Are success rates significantly different between crisis windows vs. lock-in periods?

---

### Step 5: Predictive Validation

**Hypothesis**: Current period's regime predicts future reform probability.

**Test**: 
- Identify current regime (e.g., October 2025 = Milei window?)
- Predict next 12 months' reform success
- **Verification**: Check predictions in October 2026

---

## Application Example: Argentine Tax Reform (1994-2025)

**Data**: 65 reform attempts coded

**Clustering results** (ε = 24 months, minPts = 3):

| Cluster | Period | Reforms | Success Rate | Crisis % |
|---------|--------|---------|--------------|----------|
| 1 | 1994-1996 | 8 | 12.5% | 0% |
| 2 | 1999-2002 | 14 | 21.4% | 71% |
| 3 | 2003-2015 | 18 | 0% | 6% |
| 4 | 2016-2019 | 11 | 0% | 18% |
| 5 | 2020-2022 | 6 | 0% | 50% |
| 6 | 2023-2025 | 8 | 12.5% | 25% |

**Interpretation**:
- **Crisis window** (1999-2002): Highest success rate (21.4%), correlated with economic collapse
- **Lock-in periods** (2003-2015, 2016-2019, 2020-2022): Zero success despite attempts
- **Current period** (2023-2025): Early "Milei window" - success rate similar to 1994-1996 transition

**Prediction**: If Milei window closes by end-2025, next lock-in period expected 2026-2030 (0% success rate).

---

## Advantages

1. **Pattern detection**: Reveals temporal structure invisible in individual cases
2. **Falsifiability**: Predictions can be tested
3. **Policy relevance**: Identifies "windows of opportunity"

---

## Limitations

1. **Data requirements**: Requires comprehensive coding of reform attempts
2. **Parameter sensitivity**: ε and minPts choices affect clustering
3. **Causality**: Correlation between crisis and success doesn't prove causation

---

## Extension: Actor Network Analysis

**Question**: Do certain actor combinations succeed more often?

**Method**: 
1. Code reform attempts by actor coalition (e.g., "executive + provinces" vs. "legislative only")
2. Calculate success rate by actor type
3. Identify "winning coalitions"

**Hypothesis**: Reforms succeed only when **all ESE actors** agree (federal government + provinces + AFIP + Supreme Court).

**Test**: Check if any successful reform lacked full coalition support.

---

## Citation

If you use IusMorfos methodology, cite as:
```
Lerer, A. (2025). IusMorfos: Temporal Clustering Method for Legal Reform Analysis. 
GitHub: https://github.com/adrianlerer/argentine-taxes-extended-phenotype/methodology/IusMorfos_Clustering.md
```

---

**License**: CC BY 4.0
