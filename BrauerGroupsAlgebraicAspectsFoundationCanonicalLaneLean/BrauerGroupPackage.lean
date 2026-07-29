import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean

structure BrauerWholePackage where
  brauerGroup : BrauerGroupData
  galoisCohomology : GaloisCohomologyPackage
  azumaya : AzumayaAlgebraData
  compatibleBrauerGalois : Prop
  compatibleAzumayaBrauer : Prop

structure BrauerWholeEvidence (W : BrauerWholePackage) where
  brauerClosed : BrauerGroupClosed W.brauerGroup
  galoisClosed : GaloisCohomologyClosed W.galoisCohomology
  azumayaClosed : AzumayaAlgebraClosed W.azumaya
  compatBrauerGaloisClosed : W.compatibleBrauerGalois
  compatAzumayaBrauerClosed : W.compatibleAzumayaBrauer

def BrauerWholeClosed (W : BrauerWholePackage) : Prop :=
  BrauerGroupClosed W.brauerGroup ∧ GaloisCohomologyClosed W.galoisCohomology ∧
  AzumayaAlgebraClosed W.azumaya ∧ W.compatibleBrauerGalois ∧ W.compatibleAzumayaBrauer

theorem brauer_whole_closed_from_evidence (W : BrauerWholePackage) (E : BrauerWholeEvidence W) :
    BrauerWholeClosed W := by
  exact And.intro E.brauerClosed (And.intro E.galoisClosed (And.intro E.azumayaClosed (And.intro E.compatBrauerGaloisClosed E.compatAzumayaBrauerClosed)))

end BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse