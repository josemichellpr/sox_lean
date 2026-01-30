# SOX Appendix B — Erosion Additivity & Verdict Priority

**Framework Version:** 1.31 (Canonical)  
**Status:** Normative  
**Scope:** Noise Accounting & Verdict Dominance  

---

## B.1 Purpose

This appendix closes two critical loopholes in experimental audits:

1. Selective reporting of erosion channels  
2. Abuse of instrumental uncertainty to mask insolvency  

It establishes strict rules for:
- erosion additivity,
- priority of insolvency over inconclusivity.

---

## B.2 Vectorial Nature of Erosion

Information erosion Γ is defined as the **sum of all measurable noise channels**:

Γ_total = Γ_thermal  
        + Γ_magnetic  
        + Γ_disorder  
        + Γ_structural  
        + Γ_environmental  
        + …

Each term represents a real Landauer cost.

---

## B.3 Mandatory Noise Declaration

The auditor MUST:

- identify all relevant noise sources,
- quantify each contribution when measurable,
- justify any omitted term explicitly.

### B.3.1 Invalid Audit Condition

Omission of a known or measurable erosion channel constitutes:

**Audit Invalid — Incomplete Noise Accounting**

This is not an uncertainty.
It is a violation.

---

## B.4 Priority of Insolvency Rule

When evaluating covariance ellipses in the SOX Audit Graph:

- If the **center** of the ellipse satisfies 𝓘 > 1,
  the verdict MUST be **FAIL**, regardless of overlap.

The Inconclusive Zone exists to protect borderline solvency,
not probable insolvency.

---

## B.5 Prohibition of Insolvency Masking

No combination of:
- large error bars,
- low resolution,
- or statistical ambiguity

may be used to downgrade a **probable insolvent state** to “inconclusive”.

Insolvency dominates uncertainty.

---

## B.6 Jurisdictional Statement

SOX audits total informational cost, not partial narratives.

If erosion is underestimated,
the audit is void.
