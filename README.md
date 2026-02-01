# SOX — Spectral Information Integrity Auditor

This repository hosts **SOX (Spectral Information Integrity Auditor)**, a formally
verified framework for auditing the logical viability of macroscopic coherent
quantum phases.

SOX is **restrictive, not constructive**.

It defines *necessary conditions for existence* before any microscopic,
phenomenological, or material-specific modeling is attempted.

No dynamics, no Hamiltonians, no pairing mechanisms.

---

## Conceptual stance

SOX acts as a **type-level and audit-level filter**:

> Any physical claim of a coherent macroscopic phase must be able to instantiate
> a solvent, non-fragile information channel.  
> If not, the phase is logically invalid under SOX.

SOX does **not** explain why phases exist.  
It determines when they **cannot** exist.

---

## Repository structure

The repository is organized according to **jurisdictional layers**:

```
Law (formal logic) → Apparatus (audit) → Jurisprudence (cases)
```

---

## 1. Formal Core (Lean 4)

### `Sox_Core.lean`

Defines and proves the **core integrity criterion** for phase existence.

A macroscopic coherent phase exists *if and only if* there exists at least one
channel that:

- satisfies an integrity inequality
- is not fragile under noise

Formally proves:

1. Phase stability is a **logical property**, not an empirical signal
2. **Zombie phases** (local but non-extensive coherence) cannot exist as bulk phases
3. **Informational voids** forbid macroscopic coherence

All results are **theorems**, not postulates.

---

### `Sox_CarrierIndependence.lean`

Formalizes the **Carrier Independence Theorem**.

It proves that phase solvency depends exclusively on:

- erosion (Γ)
- identity (ℰ)

and **not** on the microscopic nature of the carrier (electron, hole, etc.).

Consequences:

- Phase stability is a structural property of the information channel
- Microscopic mechanisms are implementations, not foundations
- SOX is invariant under hardware choice

---

## 2. Audit Apparatus (v1.31.1)

The `audit/` directory contains the **operational and forensic layer** of SOX.
This layer translates the canonical logical framework into **mandatory audit
procedures** for experimental claims.

Contents include:

- `SOX_AUDIT_SHEET.md` — forensic audit act
- `SOX_LAB_GUIDE.md` — laboratory audit procedure
- `SOX_AUDIT_GRAPH_SPEC.md` — normative phase-space geometry
- `APPENDIX_A.md` — unit normalization
- `APPENDIX_B.md` — metrology, resolution gates, quantum limits

This apparatus is **normative**:
if an experiment cannot be mapped into the SOX Audit Graph,
it has no jurisdiction under the framework.

---

## 3. Case Registry (Jurisprudence)

The `cases/` directory records **closed forensic cases** that establish
precedents under SOX.

### `cases/Hg_TypeI/`

Canonical Type I case study:

- **Material:** Elemental Mercury (Hg)
- **Result:** PASS (solvent) → FAIL (catastrophic insolvency)
- **Significance:** Establishes the baseline for *honest failure*

The mercury audit demonstrates:

- Abrupt, bulk phase termination at ℐ = 1
- No persistence, no filamentary survival
- Validation of the SOX Red Zone (Insolvency)
- Correct execution of the Kill-Switch logic

This case is the **jurisprudential anchor** for all future audits.

Any system claiming survival beyond this boundary requires
a **topological extension** (v1.4).

---

## 4. Roadmap

The `roadmap/` directory marks controlled openings of future extensions.

- `v1.4_NOTICE.md` — opening of the **Topological Necessity Program**
  (local insolvency / vortex regimes)

v1.4 is **not a correction** of v1.31,
but a necessary extension forced by systems that survive near the insolvency
boundary without collapsing.

---

## What this repository explicitly does NOT do

This project does **not**:

- Construct superconductivity microscopically
- Specify pairing mechanisms
- Predict critical temperatures or gaps
- Model dynamics, transport, or time evolution
- Identify dominant channels in real materials

All physical interpretation occurs **outside** Lean.

Lean certifies logical consistency only.

---

## Status

- Core axioms: frozen
- Invariance theorems: verified
- Audit apparatus (v1.31.1): closed and validated
- Case registry: initialized (Hg Type I)
- No adjustable parameters
- No phenomenological fitting

All future development must preserve existing theorems and precedents.

---

## Build instructions

Requirements:
- Lean 4
- Lake
- mathlib

From the project root:

```bash
lake build
```

---

## License and use

Released under **CC BY 4.0**.

Permitted uses:
- formal reasoning
- foundational research
- theory auditing
- metrological analysis

**Misuse warning:**  
If you treat SOX as a predictive or phenomenological model,
you are using it incorrectly.

---

## Commit discipline (normative note)

The commit history of this repository is considered part of the audit trail.

Major milestones (e.g. v1.31.1, canonical cases) are introduced via
explicit, descriptive commits and must not be rewritten.

SOX evolves by **jurisprudence, not mutation**.
