
-- Sox_Extensivity.lean
-- Jurisdiction Axiom: Extensivity of Bulk Phases
-- Distinguishes local coherence from macroscopic (bulk) phase stability.

import Mathlib.Data.Real.Basic
import Sox_Core

/-
Scaling-dependent properties relevant to Sox.
These are not microscopic variables; they are effective,
coarse-grained quantities defined at scale v > 0.
-/
structure ScalingProps where
  erosion  : ℝ    -- effective spectral erosion at scale v
  identity : ℝ    -- phase-restoring capacity at scale v

/-
Extensivity axiom (superadditivity).

Identity must scale at least additively with system size.
This is the minimal requirement for macroscopic (bulk) stability.
-/
def IsExtensive (f : ℝ → ScalingProps) : Prop :=
  ∀ v₁ v₂ : ℝ,
    v₁ > 0 →
    v₂ > 0 →
    (f (v₁ + v₂)).identity ≥
      (f v₁).identity + (f v₂).identity

/-
Definition: Bulk Phase (jurisdictional).

A system description qualifies as a bulk phase if:
1. It is Sox-solvent at every positive scale.
2. Its identity is extensive (superadditive).

No dynamics, no mechanisms, no material assumptions.
-/
structure IsBulkPhase (f : ℝ → ScalingProps) : Prop where
  solvency :
    ∀ v : ℝ, v > 0 → (f v).erosion < (f v).identity
  extensive :
    IsExtensive f
