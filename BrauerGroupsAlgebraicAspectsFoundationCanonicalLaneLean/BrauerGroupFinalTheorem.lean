import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean

def ConstrainedBrauerClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_brauer_endgame (A : AdmissibleClass) :
    ConstrainedBrauerClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse