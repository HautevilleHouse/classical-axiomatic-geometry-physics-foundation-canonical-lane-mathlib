import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean

structure RiemannianGeometry where
  metricTensor : Type u
  curvatureTensor : Type v
  geodesicEquation : Prop

def RiemannianGeometryClosed (R : RiemannianGeometry) : Prop :=
  R.geodesicEquation

end ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean
end HautevilleHouse