import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean

structure CrossedProductPackage (k : Type u) [Field k] (L : Type v) [Field L] [Algebra k L] where
  galois : FiniteDimensional k L ∧ Normal k L ∧ Separable k L
  group : Type w
  groupIsGalois : group ≃ Gal (L / k)
  cocycle : group × group → L × L
  cocycleConditions : ∀ g h i : group, (cocyle (g, h) * cocycle (g*h, i) = cocycle (g, h*i) * (cocyle (h, i) ^ (g))) 

def CrossedProductStructureClosed (k : Type u) [Field k] (L : Type v) [Field L] [Algebra k L] (C : CrossedProductPackage k L) : Prop :=
  C.cocycleConditions

theorem crossed_product_structure_closed (k : Type u) [Field k] (L : Type v) [Field L] [Algebra k L] (C : CrossedProductPackage k L) : CrossedProductStructureClosed k L C :=
  C.cocycleConditions

end BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse