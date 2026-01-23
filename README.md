# Sox_Core.lean

**Sox_Core.lean** is a formally verified Lean 4 module that defines a minimal ontological criterion
for the existence of macroscopic coherent phases (e.g. superconductivity) based on
*information integrity*, not microscopic mechanisms.

This repository contains **no dynamics, no Hamiltonians, and no material-specific models**.
It is a logical auditor, not a constructive theory.

---

## What this file proves

Using Lean 4, `Sox_Core.lean` formally proves the following statements:

1. **Phase stability is a logical property, not an empirical signal**

   A macroscopic coherent phase exists *if and only if* there exists at least one channel
   that:
   - satisfies an integrity condition (`satisfies_sox`)
   - is not fragile (`¬ Fragile`)

2. **Zombie phases are impossible as bulk phases**

   If *all* channels that satisfy integrity are fragile, then a global phase is impossible.
   This formally excludes phases with only local or non-extensive coherence
   (e.g. pseudogap-like regimes).

3. **Informational voids cannot host coherent phases**

   If no channel satisfies the integrity condition, then phase stability is logically forbidden.
   This captures regimes where decoherence dominates universally
   (e.g. Planckian strange metals).

These results are proven as **theorems**, not assumptions.

---

## What this file does NOT prove

`Sox_Core.lean` intentionally does **not**:

- Derive superconductivity from microscopic interactions
- Specify pairing mechanisms (phonons, spins, geometry, etc.)
- Predict critical temperatures or gap values
- Model dynamics, transport, or time evolution
- Decide which physical channel is dominant in a real material

All physical interpretation lies **outside** this file.
Lean only certifies logical consistency.

---

## Conceptual role

This module acts as a **type-level filter**:

> Any physical theory of a coherent phase must be able to instantiate
> a non-fragile channel satisfying integrity, or the phase is logically invalid.

Sox is therefore **restrictive**, not constructive.
It eliminates impossible phases before any detailed modeling begins.

---

## How to compile

Requirements:
- Lean 4
- Lake
- mathlib

From the project root:

Status
Core axioms: frozen
Theorems: verified
No experimental claims
No adjustable parameters
This file is intended as a stable logical core.
Extensions (temperature operators, hierarchy, geometry, etc.) must preserve these theorems.

License / Use
Use freely for:
formal reasoning
theory auditing
foundational work

Misuse warning: If you treat this as a phenomenological model, you are using it incorrectly.


```bash
lake build
