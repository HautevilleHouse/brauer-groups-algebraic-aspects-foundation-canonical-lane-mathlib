import CentralSimpleAlgebra

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean

structure BrauerGroup (k : Type u) [Field k] where
  obj : Type v
  instGroup : Group obj

def BrauerEquiv (k : Type u) [Field k] (A B : CentralSimpleAlgebra k) : Prop :=
  ∃ (n : ℕ) (C : CentralSimpleAlgebra k),
    Nonempty (CentralSimpleAlgebraMorphism (A ⊗[k] (End (k ^ n))) (B ⊗[k] (End (k ^ n))))

structure BrauerAdmittedObject where
  field : Type u
  instField : Field field
  brauerGroup : BrauerGroup field
  conclusion : Prop

end BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse
