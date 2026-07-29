import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean

structure PhysicalModel where
  geometryModel : GeometryPhysicsAxiomaticPackage
  experimentalVerification : Prop
  theoreticalPrediction : Prop
  scopeOfValidity : Prop

structure PhysicalInterpretationPackage where
  modelAssigned : Prop
  verificationStatus : Prop
  predictionPower : Prop
  modelAssignedWitness : modelAssigned
  verificationStatusWitness : verificationStatus
  predictionPowerWitness : predictionPower

structure PhysicalInterpretationEvidence (I : PhysicalInterpretationPackage) where
  modelAssignedClosed : I.modelAssigned
  verificationStatusClosed : I.verificationStatus
  predictionPowerClosed : I.predictionPower

def PhysicalInterpretationClosed (I : PhysicalInterpretationPackage) : Prop :=
  I.modelAssigned ∧ I.verificationStatus ∧ I.predictionPower

theorem physical_interpretation_closed_from_evidence
    (I : PhysicalInterpretationPackage) (E : PhysicalInterpretationEvidence I) :
    PhysicalInterpretationClosed I := by
  exact And.intro E.modelAssignedClosed
    (And.intro E.verificationStatusClosed E.predictionPowerClosed)

end ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean
end HautevilleHouse