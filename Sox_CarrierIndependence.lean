-- Sox_CarrierIndependence.lean
-- Carrier Independence Theorem
--
-- This module formalizes a key ontological principle of the Sox framework:
-- phase stability depends on informational integrity, not on the physical
-- identity of the charge carrier.
--
-- The result guarantees that Sox is agnostic to microscopic implementations
-- (electrons, holes, or other quasiparticles).

import Sox_Core

universe u

-- Generic carrier type (electron, hole, quasiparticle, etc.)
variable {Carrier : Type u}

-- Abstract carrier properties relevant to Sox.
-- No physical assumptions are made beyond these attributes.
structure CarrierProps where
  erosion  : ℝ   -- effective information erasure rate (Γ)
  identity : ℝ   -- phase capacity / identity scale (𝓔)

-- Sox solvency predicate (carrier-agnostic).
-- A channel is solvent if its identity exceeds its erosion.
def is_solvent (p : CarrierProps) : Prop :=
  p.erosion < p.identity

/-!
# Carrier Independence Theorem

If two channels (possibly implemented with different carriers)
share identical integrity attributes, their solvency is logically equivalent.

This establishes that phase stability in Sox is a structural property
of the information channel, not a material property of the carrier.
-/
theorem stability_invariant_of_carrier
  (pA pB : CarrierProps)
  (h : pA.erosion = pB.erosion ∧ pA.identity = pB.identity) :
  is_solvent pA ↔ is_solvent pB :=
by
  rcases h with ⟨h₁, h₂⟩
  unfold is_solvent
  rw [h₁, h₂]
