import canonicalLaneMathlib.AdmissibleClass
import ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean.BridgeLemmas
import ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean

def ConstrainedGeometryPhysicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geometry_physics_endgame (A : AdmissibleClass) :
    ConstrainedGeometryPhysicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean
end HautevilleHouse