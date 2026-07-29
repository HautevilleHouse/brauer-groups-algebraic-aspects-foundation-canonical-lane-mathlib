import HautevilleHouse.BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean.BrauerGroupLaws

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean

structure BrauerAdmittedObject where
  field : Type
  fieldIsField : Field field
  brauerGroup : BrauerGroup field
  brauerGroupLaws : BrauerGroupLaws field brauerGroup (AdmissibleClass.mk (BrauerAdmittedObject.mk field fieldIsField brauerGroup brauerGroupLaws) True True (Or.inl True.intro))
  conclusion : BrauerGroupClosed field brauerGroup

def BrauerWitnessClosed (O : BrauerAdmittedObject) : Prop :=
  O.conclusion

end BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse