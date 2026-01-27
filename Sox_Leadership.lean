/-
Sox_Leadership.lean
v1.25 — Leadership as Ontological Subject

This module extracts the notion of a leader channel
from phase stability. It introduces no new axioms.
-/

import Sox_Core

universe u

/-- Abstract type of channels -/
variable {Channel : Type u}

/--
A system has a leader if there exists
a solvent, non-fragile channel.
-/
def HasLeader
  (satisfies_sox : Channel → Prop)
  (Fragile : Channel → Prop) : Prop :=
  ∃ χ : Channel, satisfies_sox χ ∧ ¬ Fragile χ

/--
Leadership is not an extra assumption:
it is exactly the existential witness
contained in PhaseStable.
-/
theorem phaseStable_implies_leadership
  (satisfies_sox : Channel → Prop)
  (Fragile : Channel → Prop)
  (h : PhaseStable satisfies_sox Fragile) :
  HasLeader satisfies_sox Fragile :=
by
  unfold PhaseStable at h
  unfold HasLeader
  exact h
