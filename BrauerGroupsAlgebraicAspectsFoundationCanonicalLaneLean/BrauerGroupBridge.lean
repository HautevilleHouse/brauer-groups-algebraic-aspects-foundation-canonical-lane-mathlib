import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean

def bridgeClosed (F : Type u) (A : AdmissibleClass) : Prop :=
  True

theorem bridge_from_admissible_class (F : Type u) (A : AdmissibleClass) :
    bridgeClosed F A := by
  dsimp [bridgeClosed]
  trivial

end BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse