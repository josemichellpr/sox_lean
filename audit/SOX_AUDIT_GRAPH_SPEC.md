# SOX_AUDIT_GRAPH_SPEC.md

**Framework Version:** 1.31 (Canonical)  
**Status:** Normative / Mandatory for Audit Compliance  
**Jurisdiction:** Experimental Phase Certification  
**Authority:** SOX Framework v1.31 (Zenodo Canonical Release)

---

## 0. Purpose and Legal Standing

This document defines the **mandatory graphical standard** for representing experimental data under the SOX Framework.

The **SOX Audit Graph** is not a visualization aid.  
It is the **jurisdictional device** that determines whether a claimed phase:
- exists,
- is inconclusive,
- or is insolvent.

Any experimental claim not represented under this specification is **non-auditable** under SOX.

---

## 1. Definition of the SOX Phase Space

All audit graphs MUST be plotted in the first quadrant of the Cartesian plane ℝ²:

- **X-axis (Γ):** Information Erosion  
  Represents total information loss rate imposed by the environment.

- **Y-axis (𝓔):** Information Identity  
  Represents the system’s restorative and coherence capacity.

### 1.1 Linear Scaling Requirement

- Both axes MUST be linearly scaled.
- Logarithmic scaling, spline smoothing, or visual compression is **strictly forbidden**.
- Any transformation applied to raw data MUST be declared explicitly.

Reason: the slope of the Integrity Index must remain geometrically faithful.

---

## 2. The Insolvency Boundary (Existence Horizon)

The absolute boundary of SOX jurisdiction is defined by:

𝓘 = Γ / 𝓔 = 1  
equivalently: Γ = 𝓔

This diagonal constitutes the **existence horizon**.

- States above the line: solvent  
- States below the line: insolvent (“zombie regime”)

No interpretation is permitted below this boundary.

---

## 3. Mandatory Normalization (Appendix A — Energy Saturation)

To ensure dimensional consistency and stability in the quantum limit (T → 0):

All reported Γ and 𝓔 values MUST be normalized using a **fixed reference energy** E_ref:

- Thermal scale (k_B T) MAY be used only if T is not vanishing.
- Otherwise, E_ref MUST be a system constant, such as:
  - Fermi energy (E_F)
  - Zero-temperature gap (Δ₀)

**Rule:**  
E_ref MUST remain constant along the entire stress path.

Failure to declare E_ref invalidates the audit.

---

## 4. Additivity of Erosion (Appendix B — Vectorial Noise)

Erosion Γ is defined as the **sum of all measurable noise channels**:

Γ = Γ_thermal + Γ_magnetic + Γ_disorder + Γ_structural + …

- All known and measurable noise sources MUST be declared.
- Omission of a relevant noise channel constitutes **audit invalidation**, not uncertainty.

Landauer cost applies to every erased bit, regardless of origin.

---

## 5. Partition of the Audit Plane (Normative Regions)

The plane is divided using the Integrity Index 𝓘 and its propagated uncertainty σ_𝓘:

| Region | Logical Condition | Audit Verdict |
|------|------------------|---------------|
| **Green (Solvent)** | 𝓘 + σ_𝓘 < 1 | PASS — Phase Certified |
| **Yellow (Inconclusive)** | 𝓘 − σ_𝓘 ≤ 1 ≤ 𝓘 + σ_𝓘 | INCONCLUSIVE |
| **Red (Insolvent)** | 𝓘 − σ_𝓘 > 1 | FAIL — Zombie Regime |

### 5.1 Priority of Insolvency Rule

If the **center of the confidence ellipse** lies in the Red Zone (𝓘 > 1),
the verdict is **FAIL**, regardless of ellipse overlap.

The Yellow Zone protects borderline solvency — not probable insolvency.

---

## 6. Covariance Ellipses (Mandatory)

- Error bars are forbidden.
- Each data point MUST be represented by a **95% confidence covariance ellipse (2σ)**.
- Correlation between Γ and 𝓔 MUST be included.

**Rule:**  
If any part of the ellipse intersects the insolvency boundary (𝓘 = 1),
the verdict is automatically **INCONCLUSIVE**.

---

## 7. Stress Paths (Trajectories)

Audits MUST report **continuous trajectories**, not isolated points.

A stress path is defined as:

γ(λ) = (Γ(λ), 𝓔(λ))

where λ is an external control parameter (T, H, P, disorder, etc.).

### 7.1 Hysteresis Requirement

- Both increasing and decreasing sweeps MUST be shown.
- Persistence in one direction but not the reverse activates the **Ghost Phase Test**.

---

## 8. Temporal Persistence Requirement

A phase is a regime, not an event.

### 8.1 Persistence Criterion

A trajectory segment qualifies as solvent only if it remains entirely in the Green Zone for a duration τ such that:

τ ≫ τ_decoherence  
or, if τ_decoherence is unknown:

τ ≥ τ_audit (instrument-limited integration time, declared)

### 8.2 Veto of Transient Excursions

Single-point or short-lived excursions into the Green Zone are classified as:

**Transient Anomalies**, not phases.

If macroscopic response is present during such excursions, the **Ghost Phase Test** is triggered.

---

## 9. Discontinuities: Physical vs Instrumental

- Smooth crossings into the Red Zone without topology are forbidden under v1.31.
- A discontinuous jump from Green to Red MAY be reported as:
  **Normative Phase Collapse**, provided resolution is sufficient.

Ambiguous jumps are treated as **instrumental failure**.

---

## 10. Final Audit Logic

### PASS
- Entire trajectory and all ellipses remain in Green
- Persistence criterion satisfied
- All noise channels declared
- Normalization declared

### INCONCLUSIVE
- Ellipse intersects insolvency boundary
- Resolution insufficient to determine solvency

### FAIL (Ghost Phase / Zombie)
- Macroscopic response observed while trajectory lies in Red
- OR persistence violated with response present

---

## Jurisdictional Closure

This specification removes interpretative discretion from the audit process.

A claim that survives this graph does not need belief.  
A claim that fails this graph does not deserve debate.

This document completes the operational closure of **SOX v1.31**.
