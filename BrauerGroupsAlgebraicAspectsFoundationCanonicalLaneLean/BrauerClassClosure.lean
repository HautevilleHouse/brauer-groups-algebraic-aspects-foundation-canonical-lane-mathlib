import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean

structure BrauerClassObject where
  field : Type
  fieldIsField : Field field
  classRepresentative : Type
  classBilinear : LinearMap classRepresentative
  classAssociative : Prop
  classSplit : Prop

def BrauerClassClosed (B : BrauerClassObject) : Prop :=
  B.classAssociative ∧ B.classSplit

structure BrauerClassEvidence (B : BrauerClassObject) where
  associativeClosed : B.classAssociative
  splitClosed : B.classSplit

theorem brauer_class_closed_from_evidence (B : BrauerClassObject)
    (E : BrauerClassEvidence B) : BrauerClassClosed B := by
  exact And.intro E.associativeClosed E.splitClosed

end BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse