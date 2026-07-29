import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean

structure GeometricPrimitives where
  pointType : Type u
  lineRelation : pointType -> pointType -> Prop
  congruenceRelation : pointType -> pointType -> pointType -> pointType -> Prop
  incidenceAxioms : Prop
  betweennessAxioms : Prop
  congruenceAxioms : Prop
  continuityAxioms : Prop

structure GeometricPrimitivesEvidence (G : GeometricPrimitives) where
  incidenceAxiomsClosed : G.incidenceAxioms
  betweennessAxiomsClosed : G.betweennessAxioms
  congruenceAxiomsClosed : G.congruenceAxioms
  continuityAxiomsClosed : G.continuityAxioms

def GeometricPrimitivesClosed (G : GeometricPrimitives) : Prop :=
  G.incidenceAxioms ∧ G.betweennessAxioms ∧ G.congruenceAxioms ∧ G.continuityAxioms

theorem geometric_primitives_closed_from_evidence (G : GeometricPrimitives) (E : GeometricPrimitivesEvidence G) :
    GeometricPrimitivesClosed G := by
  exact And.intro E.incidenceAxiomsClosed (And.intro E.betweennessAxiomsClosed (And.intro E.congruenceAxiomsClosed E.continuityAxiomsClosed))

end ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean
end HautevilleHouse