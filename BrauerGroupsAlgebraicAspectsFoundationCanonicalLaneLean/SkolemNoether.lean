import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean

structure SkolemNoetherTheorem (F : Type u) (A : BrauerGroup F) where
  automorphismGroup : Type v
  innerAutomorphism : Prop
  anyAutomorphismIsInner : Prop

structure SkolemNoetherEvidence (F : Type u) (A : BrauerGroup F)
    (S : SkolemNoetherTheorem F A) where
  innerClosed : S.innerAutomorphism
  anyInnerClosed : S.anyAutomorphismIsInner

def SkolemNoetherClosed (F : Type u) (A : BrauerGroup F)
    (S : SkolemNoetherTheorem F A) : Prop :=
  S.innerAutomorphism ∧ S.anyAutomorphismIsInner

theorem skolem_noether_closed_from_evidence (F : Type u) (A : BrauerGroup F)
    (S : SkolemNoetherTheorem F A) (E : SkolemNoetherEvidence F A S) :
    SkolemNoetherClosed F A S := by
  exact And.intro E.innerClosed E.anyInnerClosed

end BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse