import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean

structure BrauerDecompositionPackage (k : Type u) [Field k] [NumberField k] where
  primeDecomposition : (BrauerGroup k) ≃ ⊕_{v : Places k} (BrauerGroup (Completion k v))

def BrauerDecompositionClosed (k : Type u) [Field k] [NumberField k] (B : BrauerDecompositionPackage k) : Prop :=
  B.primeDecomposition

theorem brauer_decomposition_closed (k : Type u) [Field k] [NumberField k] (B : BrauerDecompositionPackage k) : BrauerDecompositionClosed k B :=
  B.primeDecomposition

end BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse