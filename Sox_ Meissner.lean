/-
Sox_Meissner.lean
v1.3 — Boundary Defense as a Logical Necessity
-/

import Sox_Core
import Sox_Extensivity
import Sox_Leadership

universe u

variable {Channel : Type u}
variable {Noise : Type}

variable (is_volumetric : Noise → Prop)
variable (threatens_integrity : Noise → Channel → Prop)
variable (BoundaryDefense : Noise → Channel → Prop)

/--
Incompatibility axiom:
unmitigated volumetric noise is incompatible with solvency.
-/
axiom unmitigated_noise_breaks_solvency :
  ∀ (satisfies_sox : Channel → Prop)
    (is_volumetric : Noise → Prop)
    (threatens_integrity : Noise → Channel → Prop)
    (BoundaryDefense : Noise → Channel → Prop)
    (χ : Channel) (n : Noise),
      is_volumetric n →
      threatens_integrity n χ →
      ¬ BoundaryDefense n χ →
      ¬ satisfies_sox χ

/--
Necessity theorem (Meissner):
a bulk phase with a leader must deploy boundary defense
against volumetric integrity-threatening noise.
-/
theorem meissner_as_logical_necessity
  (satisfies_sox : Channel → Prop)
  (Fragile : Channel → Prop)
  (f : ℝ → ScalingProps)
  (h_bulk : IsBulkPhase f)
  (h_leader : HasLeader satisfies_sox Fragile) :
  ∀ n : Noise,
    is_volumetric n →
    threatens_integrity n (Classical.choose h_leader) →
    BoundaryDefense n (Classical.choose h_leader) :=
by
  intro n h_vol h_threat
  let χ := Classical.choose h_leader

  by_contra h_no_defense

  have h_not_solvent :
    ¬ satisfies_sox χ :=
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

  have h_solvent : satisfies_sox χ :=
    (Classical.choose_spec h_leader).1

  contradiction
