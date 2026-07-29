import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean

structure BrauerGroup (F : Type u) where
  carrier : Type v
  ring : Ring carrier
  algebra : Algebra F carrier
  central : Prop
  simple : Prop
  centralTerm : central
  simpleTerm : simple

structure BrauerGroupEvidence (F : Type u) (B : BrauerGroup F) where
  centralClosed : B.central
  simpleClosed : B.simple

def BrauerGroupClosed (F : Type u) (B : BrauerGroup F) : Prop :=
  B.central ∧ B.simple

theorem brauer_group_closed_from_evidence (F : Type u) (B : BrauerGroup F)
    (E : BrauerGroupEvidence F B) : BrauerGroupClosed F B := by
  exact And.intro E.centralClosed E.simpleClosed

end BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse