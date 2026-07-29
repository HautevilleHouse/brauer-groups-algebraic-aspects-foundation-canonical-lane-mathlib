import HautevilleHouse.BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean.BrauerGroupDefinition

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean

structure AzumayaAlgebra (k : Type) [Field k] where
  algebra : Type
  ring : Ring algebra
  algebraStructure : Algebra k algebra
  central : Prop
  separable : Prop

structure AzumayaEvidence (k : Type) [Field k] (A : AzumayaAlgebra k) where
  centralClosed : A.central
  separableClosed : A.separable

def AzumayaClosed (k : Type) [Field k] (A : AzumayaAlgebra k) : Prop :=
  A.central ∧ A.separable

theorem azumaya_closed_from_evidence (k : Type) [Field k] (A : AzumayaAlgebra k) (E : AzumayaEvidence k A) :
    AzumayaClosed k A := by
  exact And.intro E.centralClosed E.separableClosed

end BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse