import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean

structure InertialFrameStructure where
  spaceType : Type u
  timeType : Type v
  metric : spaceType -> spaceType -> ℝ
  geodesicEquation : Prop
  freeParticleMotion : Prop
  galileanRelativity : Prop

structure InertialFrameEvidence (I : InertialFrameStructure) where
  geodesicEquationClosed : I.geodesicEquation
  freeParticleMotionClosed : I.freeParticleMotion
  galileanRelativityClosed : I.galileanRelativity

def InertialFrameClosed (I : InertialFrameStructure) : Prop :=
  I.geodesicEquation ∧ I.freeParticleMotion ∧ I.galileanRelativity

theorem inertial_frame_closed_from_evidence (I : InertialFrameStructure) (E : InertialFrameEvidence I) :
    InertialFrameClosed I := by
  exact And.intro E.geodesicEquationClosed (And.intro E.freeParticleMotionClosed E.galileanRelativityClosed)

end ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean
end HautevilleHouse