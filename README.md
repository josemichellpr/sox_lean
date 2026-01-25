# Sox (Spectral Information Integrity Auditor)

This repository contains a formally verified Lean 4 implementation of **Sox**,
a minimal ontological framework that defines necessary conditions for the existence
of macroscopic coherent quantum phases (e.g. superconductivity).

Sox is **restrictive, not constructive**.
It audits logical viability before any microscopic modeling is attempted.

No dynamics, no Hamiltonians, no material-specific assumptions are included.

---

## Repository contents

### 1. `Sox_Core.lean`

Defines the **core integrity criterion** for phase existence.

A macroscopic coherent phase exists *if and only if* there exists at least one channel
that:
- satisfies an integrity condition
- is not fragile

This file formally proves:

1. **Phase stability is a logical property**, not an empirical signal
2. **Zombie phases** (local but non-extensive coherence) cannot exist as bulk phases
3. **Informational voids** (universal decoherence dominance) forbid phase stability

These results are proven as **theorems**, not postulates.

---

### 2. `Sox_CarrierIndependence.lean`

Formalizes the **Carrier Independence Theorem**.

It proves that phase solvency depends only on **integrity attributes**
(erosion and identity), and **not** on the microscopic nature of the charge carrier
(electron, hole, or any other quasiparticle).

This establishes that:

- Phase stability is a **structural property of the information channel**
- Microscopic carrier narratives are implementations, not foundations
- Sox is invariant under changes of hardware

This module closes the dependency on particle-specific mechanisms.

---

## What this repository does NOT do

This project intentionally does **not**:

- Construct superconductivity from microscopic interactions
- Specify pairing mechanisms (phonons, spins, geometry, etc.)
- Predict critical temperatures or gap values
- Model dynamics, transport, or time evolution
- Identify dominant channels in real materials

All physical interpretation lies **outside** Lean.
Lean certifies logical consistency only.

---

## Conceptual role

Sox acts as a **type-level filter**:

> Any physical theory of a coherent phase must be able to instantiate
> a non-fragile channel satisfying integrity, or the phase is logically invalid.

Sox eliminates impossible phases **before** phenomenology begins.

---

## Status

- Core axioms: frozen
- Invariance theorems: verified
- No adjustable parameters
- No experimental claims

This repository defines a **stable logical foundation**.
All future extensions must preserve these theorems.

---

## How to compile

Requirements:
- Lean 4
- Lake
- mathlib

From the project root:

```bash
lake build
```

---

## License / Use

Use freely for:
- formal reasoning
- theory auditing
- foundational research

**Misuse warning:**  
If you treat this as a phenomenological or predictive model, you are using it incorrectly.
