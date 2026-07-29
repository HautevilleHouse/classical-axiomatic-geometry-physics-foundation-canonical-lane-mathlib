import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean

structure NewtonianGravityPackage where
  gravitationalConstant : ℝ
  inverseSquareLaw : Prop
  superpositionPrinciple : Prop
  equivalencePrinciple : Prop
  fieldEquation : Prop

structure NewtonianGravityEvidence (N : NewtonianGravityPackage) where
  inverseSquareLawClosed : N.inverseSquareLaw
  superpositionPrincipleClosed : N.superpositionPrinciple
  equivalencePrincipleClosed : N.equivalencePrinciple
  fieldEquationClosed : N.fieldEquation

def NewtonianGravityClosed (N : NewtonianGravityPackage) : Prop :=
  N.inverseSquareLaw ∧ N.superpositionPrinciple ∧ N.equivalencePrinciple ∧ N.fieldEquation

theorem newtonian_gravity_closed_from_evidence (N : NewtonianGravityPackage) (E : NewtonianGravityEvidence N) :
    NewtonianGravityClosed N := by
  exact And.intro E.inverseSquareLawClosed (And.intro E.superpositionPrincipleClosed (And.intro E.equivalencePrincipleClosed E.fieldEquationClosed))

end ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean
end HautevilleHouse