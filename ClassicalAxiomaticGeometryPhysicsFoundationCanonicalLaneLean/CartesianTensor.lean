import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean

structure CartesianTensorPackage where
  vectorSpace : Type u
  innerProduct : vectorSpace → vectorSpace → ℝ
  norm : vectorSpace → ℝ
  orthonormalBasis : Type v
  dimensionality : ℕ
  dimensionalityTerm : dimensionality = 3

structure CartesianTensorEvidence (C : CartesianTensorPackage) where
  innerProductDefined : ∀ v w : C.vectorSpace, C.innerProduct v w = C.innerProduct w v
  normFromInnerProduct : ∀ v : C.vectorSpace, C.norm v = Real.sqrt (C.innerProduct v v)
  orthonormalBasisExists : Nonempty C.orthonormalBasis

def CartesianTensorClosed (C : CartesianTensorPackage) : Prop :=
  (∀ v w : C.vectorSpace, C.innerProduct v w = C.innerProduct w v) ∧
  (∀ v : C.vectorSpace, C.norm v = Real.sqrt (C.innerProduct v v)) ∧
  Nonempty C.orthonormalBasis

theorem cartesian_tensor_closed_from_evidence (C : CartesianTensorPackage) (E : CartesianTensorEvidence C) : CartesianTensorClosed C :=
  And.intro E.innerProductDefined (And.intro E.normFromInnerProduct E.orthonormalBasisExists)

end ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean
end HautevilleHouse