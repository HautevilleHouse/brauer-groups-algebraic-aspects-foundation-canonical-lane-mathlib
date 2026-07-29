import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean

structure BrauerClosureObligations where
  brauerGroupDefined : Prop
  galoisCohomologyComputed : Prop
  azumayaClassified : Prop
  compatibilityProved : Prop

structure BrauerClosureEvidence (O : BrauerClosureObligations) where
  brauerGroupDefinedClosed : O.brauerGroupDefined
  galoisCohomologyComputedClosed : O.galoisCohomologyComputed
  azumayaClassifiedClosed : O.azumayaClassified
  compatibilityProvedClosed : O.compatibilityProved

def BrauerClosureRouteClosed (O : BrauerClosureObligations) : Prop :=
  O.brauerGroupDefined ∧ O.galoisCohomologyComputed ∧ O.azumayaClassified ∧ O.compatibilityProved

theorem brauer_closure_route_closed_from_evidence (O : BrauerClosureObligations) (E : BrauerClosureEvidence O) :
    BrauerClosureRouteClosed O := by
  exact And.intro E.brauerGroupDefinedClosed (And.intro E.galoisCohomologyComputedClosed (And.intro E.azumayaClassifiedClosed E.compatibilityProvedClosed))

end BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse