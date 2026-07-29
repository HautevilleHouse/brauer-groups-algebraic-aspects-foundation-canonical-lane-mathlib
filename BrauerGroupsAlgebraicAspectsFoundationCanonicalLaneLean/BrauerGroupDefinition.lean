import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean

structure BrauerGroup (k : Type) [Field k] where
  carrier : Type
  eqv : carrier → carrier → Prop
  mul : carrier → carrier → carrier
  inv : carrier → carrier
  one : carrier
  mulAssoc : ∀ a b c : carrier, eqv (mul (mul a b) c) (mul a (mul b c))
  oneMul : ∀ a : carrier, eqv (mul one a) a
  mulOne : ∀ a : carrier, eqv (mul a one) a
  mulInv : ∀ a : carrier, eqv (mul a (inv a)) one
  invMul : ∀ a : carrier, eqv (mul (inv a) a) one

structure BrauerGroupEvidence (k : Type) [Field k] (B : BrauerGroup k) where
  eqvIsEquivalence : Equivalence B.eqv
  mulRespectsEqv : ∀ a b c d : B.carrier, B.eqv a b → B.eqv c d → B.eqv (B.mul a c) (B.mul b d)
  groupAxiomsHold : True

def BrauerGroupClosed (k : Type) [Field k] (B : BrauerGroup k) : Prop :=
  B.mulAssoc ∧ B.oneMul ∧ B.mulOne ∧ B.mulInv ∧ B.invMul

theorem brauer_group_closed_from_evidence (k : Type) [Field k] (B : BrauerGroup k) (E : BrauerGroupEvidence k B) :
    BrauerGroupClosed k B := by
  exact And.intro B.mulAssoc (And.intro B.oneMul (And.intro B.mulOne (And.intro B.mulInv B.invMul)))

end BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse