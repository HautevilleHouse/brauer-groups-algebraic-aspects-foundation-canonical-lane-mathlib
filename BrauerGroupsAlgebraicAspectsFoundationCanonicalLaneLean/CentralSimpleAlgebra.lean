import Mathlib.RingTheory.Artinian
import Mathlib.GroupTheory.SpecificGroups.Cyclic

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean

structure CentralSimpleAlgebra (k : Type u) [Field k] where
  carrier : Type v
  instRing : Ring carrier
  instAlgebra : Algebra k carrier
  central : Subalgebra.center (Algebra.k k carrier) = ⊤
  simple : IsSimpleRing carrier

structure CentralSimpleAlgebraMorphism (A B : CentralSimpleAlgebra k) where
  toFun : A.carrier → B.carrier
  respectsMul : ∀ x y, toFun (x * y) = toFun x * toFun y
  respectsAdd : ∀ x y, toFun (x + y) = toFun x + toFun y
  respectsScalar : ∀ (c : k) x, toFun (c • x) = c • toFun x

end BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse
