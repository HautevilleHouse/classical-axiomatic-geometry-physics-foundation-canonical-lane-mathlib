import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean

structure GeodesicDynamics where
  geodesicFlow : Type u
  conjugatePoints : Prop
  completeness : Prop

def GeodesicDynamicsClosed (G : GeodesicDynamics) : Prop :=
  G.conjugatePoints ∧ G.completeness

end ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean
end HautevilleHouse