import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrauerGroupsAlgebraicAspectsFoundationLean.BrauerGroupDefinition

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationLean

structure BrauerGroupExactSequence (k : Type u) [Field k] (L : Type v) [Field L] [Algebra k L] where
  Br_k : BrauerGroup k
  Br_L : BrauerGroup L
  restriction : BrauerClass k → BrauerClass L
  restrictionHom : ∀ a b : BrauerClass k, restriction (Br_k.mul a b) = Br_L.mul (restriction a) (restriction b)
  kernel : Set (BrauerClass k)
  exactAtKernel : ∀ a : BrauerClass k, a ∈ kernel ↔ restriction a = Br_L.identity

structure BrauerGroupExactSequenceEvidence (k : Type u) [Field k] (L : Type v) [Field L] [Algebra k L]
    (E : BrauerGroupExactSequence k L) where
  restrictionHomClosed : E.restrictionHom
  exactAtKernelClosed : E.exactAtKernel

def BrauerGroupExactSequenceClosed (k : Type u) [Field k] (L : Type v) [Field L] [Algebra k L]
    (E : BrauerGroupExactSequence k L) : Prop :=
  E.restrictionHom ∧ E.exactAtKernel

theorem brauer_group_exact_sequence_closed_from_evidence (k : Type u) [Field k] (L : Type v) [Field L] [Algebra k L]
    (E : BrauerGroupExactSequence k L) (Ev : BrauerGroupExactSequenceEvidence k L E) :
    BrauerGroupExactSequenceClosed k L E := by
  exact And.intro Ev.restrictionHomClosed Ev.exactAtKernelClosed

end BrauerGroupsAlgebraicAspectsFoundationLean
end HautevilleHouse