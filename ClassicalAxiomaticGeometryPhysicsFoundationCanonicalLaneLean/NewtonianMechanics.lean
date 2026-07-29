import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean

structure NewtonianMechanicsPackage where
  space : Type u
  time : Type v
  mass : Type w
  position : time → space
  velocity : time → space
  acceleration : time → space
  force : space → space → space
  massScalar : mass → ℝ
  secondLaw : Prop
  thirdLaw : Prop

structure NewtonianMechanicsEvidence (N : NewtonianMechanicsPackage) where
  secondLawClosed : N.secondLaw
  thirdLawClosed : N.thirdLaw
  forceLawConsistency : ∀ (m : N.mass) (t : N.time), N.force (N.position t) (N.velocity t) = N.massScalar m • N.acceleration t

def NewtonianMechanicsClosed (N : NewtonianMechanicsPackage) : Prop :=
  N.secondLaw ∧ N.thirdLaw ∧ ∀ (m : N.mass) (t : N.time), N.force (N.position t) (N.velocity t) = N.massScalar m • N.acceleration t

theorem newtonian_mechanics_closed_from_evidence (N : NewtonianMechanicsPackage) (E : NewtonianMechanicsEvidence N) : NewtonianMechanicsClosed N :=
  And.intro E.secondLawClosed (And.intro E.thirdLawClosed E.forceLawConsistency)

end ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean
end HautevilleHouse