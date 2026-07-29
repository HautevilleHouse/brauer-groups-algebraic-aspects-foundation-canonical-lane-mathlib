import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : BrauerAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BrauerWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse