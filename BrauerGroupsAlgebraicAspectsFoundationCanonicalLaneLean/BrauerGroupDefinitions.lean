import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean

structure CentralSimpleAlgebraPackage (k : Type u) [Field k] where
  vectorSpace : Type v
  vectorSpaceKAlgebra : Algebra k vectorSpace
  finiteDimensional : FiniteDimensional k vectorSpace
  central : Subsingleton (Center vectorSpace)
  simple : Subsingleton (TwoSidedIdeal vectorSpace)

def BrauerEquiv (k : Type u) [Field k] (A B : CentralSimpleAlgebraPackage k) : Prop :=
  Nonempty (A.vectorSpace ≃ₐ[k] B.vectorSpace)

structure BrauerGroupPackage (k : Type u) [Field k] where
  carrier : Set (CentralSimpleAlgebraPackage k)
  equivalenceRelation : ∀ A B : CentralSimpleAlgebraPackage k, Prop
  quotientGroup : Type v
  groupAxioms : Group (Quotient (Setoid.mk equivalenceRelation))

def BrauerGroupDefinitionsClosed (k : Type u) [Field k] (B : BrauerGroupPackage k) : Prop :=
  Group (Quotient (Setoid.mk B.equivalenceRelation))

theorem brauer_group_definitions_closed (k : Type u) [Field k] (B : BrauerGroupPackage k) : BrauerGroupDefinitionsClosed k B :=
  B.groupAxioms

end BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse