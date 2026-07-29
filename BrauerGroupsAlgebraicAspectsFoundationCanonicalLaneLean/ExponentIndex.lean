import CentralSimpleAlgebra
import SplittingField

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean

structure ExponentIndex (k : Type u) [Field k] (A : CentralSimpleAlgebra k) where
  exponent : ℕ
  index : ℕ
  exponent_divides_index : exponent ∣ index
  index_power_is_trivial : (A ^ exponent) ≃ₐ[k] End k

theorem exponent_divides_index (k : Type u) [Field k] (A : CentralSimpleAlgebra k) (e : ExponentIndex k A) :
    e.exponent ∣ e.index := e.exponent_divides_index

theorem exponent_and_index_share_primes (k : Type u) [Field k] (A : CentralSimpleAlgebra k) (e : ExponentIndex k A) :
    Nat.factors e.exponent = Nat.factors e.index := by
  rcases e with ⟨exp, idx, hdiv, htriv⟩
  have hdiv' : exp ∣ idx := hdiv
  apply (Nat.eq_of_dvd_dvd ?_ ?_).symm
  · exact Nat.dvd_factors (by exact hdiv')
  · apply Nat.dvd_factors
    exact hdiv'.trans (dvd_refl idx)

end BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse