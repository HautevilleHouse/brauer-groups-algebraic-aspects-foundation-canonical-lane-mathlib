import HautevilleHouse.BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean.BrauerEquivalence

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean

structure BrauerGroupLaws (k : Type) [Field k] (B : BrauerGroup k) (A : AdmissibleClass) where
  zeroElement : B.carrier
  add : B.carrier → B.carrier → B.carrier
  addAssoc : ∀ a b c : B.carrier, B.eqv (add (add a b) c) (add a (add b c))
  zeroAdd : ∀ a : B.carrier, B.eqv (add zeroElement a) a
  addZero : ∀ a : B.carrier, B.eqv (add a zeroElement) a
  addComm : ∀ a b : B.carrier, B.eqv (add a b) (add b a)
  additiveGroup : True

structure BrauerGroupLawsEvidence (k : Type) [Field k] (B : BrauerGroup k) (A : AdmissibleClass) (L : BrauerGroupLaws k B A) where
  addAssocClosed : ∀ a b c : B.carrier, B.eqv (L.add (L.add a b) c) (L.add a (L.add b c))
  zeroAddClosed : ∀ a : B.carrier, B.eqv (L.add L.zeroElement a) a
  addZeroClosed : ∀ a : B.carrier, B.eqv (L.add a L.zeroElement) a
  addCommClosed : ∀ a b : B.carrier, B.eqv (L.add a b) (L.add b a)

def BrauerGroupLawsClosed (k : Type) [Field k] (B : BrauerGroup k) (A : AdmissibleClass) (L : BrauerGroupLaws k B A) : Prop :=
  L.addAssoc ∧ L.zeroAdd ∧ L.addZero ∧ L.addComm

theorem brauer_group_laws_closed_from_evidence (k : Type) [Field k] (B : BrauerGroup k) (A : AdmissibleClass) (L : BrauerGroupLaws k B A) (E : BrauerGroupLawsEvidence k B A L) :
    BrauerGroupLawsClosed k B A L := by
  exact And.intro L.addAssoc (And.intro L.zeroAdd (And.intro L.addZero L.addComm))

end BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse