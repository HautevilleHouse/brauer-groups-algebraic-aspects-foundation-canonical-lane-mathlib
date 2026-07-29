import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean

structure AzumayaAlgebraData where
  baseRing : Type u
  azumayaAlgebra : Type v
  finiteProjective : Prop
  centralizerEnds : Prop
  splitByEtaleExtension : Prop

structure AzumayaAlgebraEvidence (A : AzumayaAlgebraData) where
  finiteProjectiveClosed : A.finiteProjective
  centralizerClosed : A.centralizerEnds
  splitClosed : A.splitByEtaleExtension

def AzumayaAlgebraClosed (A : AzumayaAlgebraData) : Prop :=
  A.finiteProjective ∧ A.centralizerEnds ∧ A.splitByEtaleExtension

theorem azumaya_algebra_closed_from_evidence (A : AzumayaAlgebraData) (E : AzumayaAlgebraEvidence A) :
    AzumayaAlgebraClosed A := by
  exact And.intro E.finiteProjectiveClosed (And.intro E.centralizerClosed E.splitClosed)

end BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse