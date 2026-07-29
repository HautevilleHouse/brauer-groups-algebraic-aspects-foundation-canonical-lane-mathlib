import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BrauerGroupClosed A.object ∧ BrauerClassClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  have hg : A.endpointSatisfied := by
    apply A.endpointSatisfied_from_admissible
  have hr : A.remainderRecorded := by
    apply A.remainderRecorded_from_admissible
  exact And.intro hg hr

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  -- A.gateWitness is a constructor of gateClosed for an admissible class
  exact A.gateWitness

end BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse