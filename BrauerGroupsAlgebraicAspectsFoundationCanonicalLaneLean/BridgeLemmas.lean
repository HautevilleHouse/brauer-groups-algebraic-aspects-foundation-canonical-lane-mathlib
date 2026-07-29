import HautevilleHouse.BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BrauerWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse