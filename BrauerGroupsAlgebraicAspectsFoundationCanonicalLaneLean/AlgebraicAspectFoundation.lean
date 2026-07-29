import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean

structure BrauerGroupObject where
  carrier : Type
  ring : Ring carrier
  azumayaAlgebra : Type
  azumayaRing : Ring azumayaAlgebra
  azumayaCentral : Prop
  azumayaSimple : Prop
  azumayaDecompositionWitness : Prop

structure BrauerGroupWitness (O : BrauerGroupObject) where
  azumayaCentralClosed : O.azumayaCentral
  azumayaSimpleClosed : O.azumayaSimple
  decompositionWitnessClosed : O.azumayaDecompositionWitness

def BrauerGroupClosed (O : BrauerGroupObject) : Prop :=
  O.azumayaCentral ∧ O.azumayaSimple ∧ O.azumayaDecompositionWitness

theorem brauer_group_closed_from_evidence (O : BrauerGroupObject)
    (E : BrauerGroupWitness O) : BrauerGroupClosed O := by
  exact And.intro E.azumayaCentralClosed
    (And.intro E.azumayaSimpleClosed E.decompositionWitnessClosed)

end BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse