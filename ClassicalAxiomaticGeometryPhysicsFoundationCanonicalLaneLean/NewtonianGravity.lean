import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean

structure NewtonianGravitationalField where
  gravitationalPotential : Type u -> Type v
  laplaceEquation : Prop
  forceProportionalToInverseSquare : Prop
  equivalenceOfInertialAndGravitationalMass : Prop

structure NewtonianGravitationalEvidence (N : NewtonianGravitationalField) where
  laplaceEquationClosed : N.laplaceEquation
  forceProportionalToInverseSquareClosed : N.forceProportionalToInverseSquare
  equivalenceOfInertialAndGravitationalMassClosed : N.equivalenceOfInertialAndGravitationalMass

def NewtonianGravitationalClosed (N : NewtonianGravitationalField) : Prop :=
  N.laplaceEquation ∧ N.forceProportionalToInverseSquare ∧ N.equivalenceOfInertialAndGravitationalMass

theorem newtonian_gravitational_closed_from_evidence (N : NewtonianGravitationalField) (E : NewtonianGravitationalEvidence N) :
    NewtonianGravitationalClosed N := by
  exact And.intro E.laplaceEquationClosed (And.intro E.forceProportionalToInverseSquareClosed E.equivalenceOfInertialAndGravitationalMassClosed)

end ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean
end HautevilleHouse