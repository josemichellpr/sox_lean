/-
Sox_Meissner.lean
v1.31 — Boundary Defense as a Logical Necessity

This module derives the Meissner-type necessity
as a purely logical consequence of the SOX framework.

No axioms are declared here.
-/

import Sox_Core
import Sox_Extensivity
import Sox_Leadership
import Sox_Incompatibility

universe u

/-- Abstract type of coherent channels -/
variable {Channel : Type u}

/-- Abstract type of external noise sources -/
variable {Noise : Type}

/-- Predicate: noise acts volumetrically (i.e., scales with system size) -/
variable (is_volumetric : Noise → Prop)

/-- Predicate: noise threatens the solvency of a channel -/
variable (threatens_integrity : Noise → Channel → Prop)

/-- Predicate: a mitigation or boundary defense is deployed -/
variable (BoundaryDefense : Noise → Channel → Prop)

/--
Necessity theorem (Meissner):

If a system admits a bulk phase and possesses a solvent leader,
then any volumetric noise that threatens the leader's integrity
must be mitigated by a boundary defense.

The proof is by contradiction and uses only the incompatibility axiom.
-/
theorem meissner_as_logical_necessity
  (satisfies_sox : Channel → Prop)
  (Fragile : Channel → Prop)
  (f : ℝ → ScalingProps)
  (h_bulk : IsBulkPhase f)          -- bulk context (not consumed here)
  (h_leader : HasLeader satisfies_sox Fragile) :
  ∀ n : Noise,
    is_volumetric n →
    threatens_integrity n (Classical.choose h_leader) →
    BoundaryDefense n (Classical.choose h_leader) :=
by
  intro n h_vol h_threat
  let χ := Classical.choose h_leader

  -- Assume no boundary defense and derive a contradiction
  by_contra h_no_defense

  have h_not_solvent : ¬ satisfies_sox χ :=
    unmitigated_noise_breaks_solvency
      satisfies_sox
      is_volumetric
      threatens_integrity
      BoundaryDefense
      χ
      n
      h_vol
      h_threat
      h_no_defense

  -- Leadership guarantees that the chosen channel is solvent
  have h_solvent : satisfies_sox χ :=
    (Classical.choose_spec h_leader).1

  contradiction
