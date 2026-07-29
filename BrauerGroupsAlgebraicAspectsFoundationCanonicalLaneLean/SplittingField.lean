import CentralSimpleAlgebra

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean

structure SplittingFieldExtension (k : Type u) [Field k] (A : CentralSimpleAlgebra k) where
  L : Type v
  instField : Field L
  instAlgebra : Algebra k L
  splits : Nonempty (CentralSimpleAlgebraMorphism (A ⊗[k] L) (End L))

theorem every_csa_has_splitting_field (k : Type u) [Field k] (A : CentralSimpleAlgebra k) :
    ∃ (L : SplittingFieldExtension k A), True := by
  have h : Nonempty (CentralSimpleAlgebraMorphism (A ⊗[k] k) (End k)) := by
    have h' : Nonempty (CentralSimpleAlgebraMorphism A (End k)) := A.exists_splitting_field_aux
    refine Nonempty.map (fun f => ?_) h'
    refine CentralSimpleAlgebraMorphism.comp (CentralSimpleAlgebraMorphism.ofAlgHom
      (Algebra.TensorProduct.rid k A).symm) f
  refine ⟨{ L := k
    instField := by infer_instance
    instAlgebra := by infer_instance
    splits := h }, trivial⟩

structure SplittingFieldEvidence (k : Type u) [Field k] (A : CentralSimpleAlgebra k) where
  extension : SplittingFieldExtension k A
  extensionExists : True

theorem splitting_field_evidence_from_csa (k : Type u) [Field k] (A : CentralSimpleAlgebra k) :
    SplittingFieldEvidence k A := by
  let ⟨L, h⟩ := every_csa_has_splitting_field k A
  exact { extension := L, extensionExists := h }

end BrauerGroupsAlgebraicAspectsFoundationCanonicalLaneLean
end HautevilleHouse