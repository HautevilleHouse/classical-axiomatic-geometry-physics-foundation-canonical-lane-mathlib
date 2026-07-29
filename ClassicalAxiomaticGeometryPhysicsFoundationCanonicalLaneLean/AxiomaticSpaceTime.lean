import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean

structure AxiomaticSpaceTime where
  pointSet : Type u
  intervalStructure : Type v
  causality : Prop
  metricSignature : Prop
  geodesicCompleteness : Prop

def AxiomaticSpaceTimeClosed (A : AxiomaticSpaceTime) : Prop :=
  A.causality ∧ A.metricSignature ∧ A.geodesicCompleteness

end ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean
end HautevilleHouse