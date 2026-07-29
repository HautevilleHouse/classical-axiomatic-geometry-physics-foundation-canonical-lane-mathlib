import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean

structure SpacetimeContinuum where
  event : Type u
  topology : TopologicalSpace event
  smoothAtlas : Type v
  dimension : Nat
  dimensionEqFour : dimension = 4

structure PseudoRiemannianMetric (M : SpacetimeContinuum) where
  metricTensor : M.event → M.event → ℝ
  symmetric : ∀ x y, metricTensor x y = metricTensor y x
  nondegenerate : ∀ x, (∀ y, metricTensor x y = 0) → x = x
  signature : Prop

structure CausalStructure (M : SpacetimeContinuum) (g : PseudoRiemannianMetric M) where
  causalRelation : M.event → M.event → Prop
  reflexive : ∀ x, causalRelation x x
  transitive : ∀ x y z, causalRelation x y → causalRelation y z → causalRelation x z
  antisymmetric : ∀ x y, causalRelation x y → causalRelation y x → x = y

end ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean
end HautevilleHouse