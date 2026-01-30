

# SOX Appendix A — Energy Normalization Standard

**Framework Version:** 1.31 (Canonical)  
**Status:** Normative  
**Scope:** Dimensional Consistency & Quantum Limit Stability  

---

## A.1 Purpose

This appendix defines the **mandatory normalization procedure** required to ensure that all SOX variables are:
- dimensionally consistent,
- comparable across experiments,
- stable in the quantum limit (T → 0).

No audit is valid without explicit compliance with this appendix.

---

## A.2 The Normalization Problem

The Integrity Index is defined as:

𝓘 = Γ / 𝓔

For 𝓘 to be physically meaningful, both Γ and 𝓔 must be expressed in **compatible energy units**.

Using thermal normalization alone (k_B T) becomes ill-defined as T → 0, leading to artificial divergence and graphical distortion.

---

## A.3 Energy Reference of Saturation (E_ref)

To prevent this pathology, all audits MUST normalize Γ and 𝓔 using a **fixed reference energy** E_ref:

Γ_norm = Γ / E_ref  
𝓔_norm = 𝓔 / E_ref  

### A.3.1 Allowed Choices for E_ref

The auditor MUST choose exactly one of the following system-specific constants:

- Fermi Energy (E_F)
- Zero-temperature gap (Δ₀)
- Another dominant intrinsic energy scale (explicitly justified)

### A.3.2 Constancy Requirement

E_ref MUST remain constant:
- across the entire stress path,
- across all points in the Audit Graph.

Changing E_ref mid-trajectory invalidates the audit.

---

## A.4 Reporting Requirement

Every SOX-compliant report MUST explicitly declare:

- the chosen E_ref,
- its numerical value,
- its physical justification.

Failure to do so results in **Audit Invalid — Non-Normalized**.

---

## A.5 Jurisdictional Statement

Normalization is not a presentation choice.  
It is a **jurisdictional prerequisite**.

Without it, the SOX Audit Graph has no legal standing.
