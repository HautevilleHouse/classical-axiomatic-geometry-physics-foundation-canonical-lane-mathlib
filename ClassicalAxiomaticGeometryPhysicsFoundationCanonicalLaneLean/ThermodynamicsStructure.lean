import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean

structure ThermodynamicsPackage where
  temperature : Type u
  entropy : Type v
  firstLawOfThermodynamics : Prop
  secondLawOfThermodynamics : Prop
  thirdLawOfThermodynamics : Prop
  zerothLawOfThermodynamics : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  firstLawClosed : T.firstLawOfThermodynamics
  secondLawClosed : T.secondLawOfThermodynamics
  thirdLawClosed : T.thirdLawOfThermodynamics
  zerothLawClosed : T.zerothLawOfThermodynamics

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.firstLawOfThermodynamics ∧ T.secondLawOfThermodynamics ∧ T.thirdLawOfThermodynamics ∧ T.zerothLawOfThermodynamics

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.firstLawClosed (And.intro E.secondLawClosed (And.intro E.thirdLawClosed E.zerothLawClosed))

end ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean
end HautevilleHouse