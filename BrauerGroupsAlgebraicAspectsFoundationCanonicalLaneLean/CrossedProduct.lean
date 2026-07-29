import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean

structure CrossedProduct (F : Type u) (K : Type v) [Field F] [Field K] [Algebra F K] where
  group : Type w
  groupAction : group → Algebra K K
  cocycle : group → group → Kˣ
  actionCompatibility : Prop
  cocycleCondition : Prop

def CrossedProductAlgebra (F : Type u) (K : Type v) [Field F] [Field K] [Algebra F K]
    (C : CrossedProduct F K) : Type (max v w) :=
  sorry

end BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse