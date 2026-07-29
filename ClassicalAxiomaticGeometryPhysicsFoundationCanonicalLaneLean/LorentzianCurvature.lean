import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean

structure LorentzianCurvaturePackage where
  spacetime : SpacetimeContinuum
  metric : PseudoRiemannianMetric spacetime
  riemannTensor : Type u
  ricciTensor : Type v
  scalarCurvature : Type w
  smoothFourManifold : Prop
  metricSmooth : Prop
  curvatureLawful : Prop
  ricciContractedFromRiemann : Prop
  scalarTraceOfRicci : Prop

structure LorentzianCurvatureEvidence (G : LorentzianCurvaturePackage) where
  smoothFourManifoldClosed : G.smoothFourManifold
  metricSmoothClosed : G.metricSmooth
  curvatureLawfulClosed : G.curvatureLawful
  ricciContractedFromRiemannClosed : G.ricciContractedFromRiemann
  scalarTraceOfRicciClosed : G.scalarTraceOfRicci

def LorentzianCurvatureClosed (G : LorentzianCurvaturePackage) : Prop :=
  G.smoothFourManifold ∧ G.metricSmooth ∧ G.curvatureLawful ∧ G.ricciContractedFromRiemann ∧ G.scalarTraceOfRicci

theorem lorentzian_curvature_closed_from_evidence (G : LorentzianCurvaturePackage) (E : LorentzianCurvatureEvidence G) : LorentzianCurvatureClosed G := by
  exact And.intro E.smoothFourManifoldClosed
    (And.intro E.metricSmoothClosed
      (And.intro E.curvatureLawfulClosed
        (And.intro E.ricciContractedFromRiemannClosed E.scalarTraceOfRicciClosed)))

end ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean
end HautevilleHouse