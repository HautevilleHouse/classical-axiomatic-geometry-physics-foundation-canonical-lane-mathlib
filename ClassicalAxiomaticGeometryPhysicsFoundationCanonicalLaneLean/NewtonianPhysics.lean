import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean

structure NewtonianPhysics where
  inertialFrames : Prop
  gravitationLaw : Prop
  conservationLaws : Prop

def NewtonianPhysicsClosed (N : NewtonianPhysics) : Prop :=
  N.inertialFrames ∧ N.gravitationLaw ∧ N.conservationLaws

end ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean
end HautevilleHouse