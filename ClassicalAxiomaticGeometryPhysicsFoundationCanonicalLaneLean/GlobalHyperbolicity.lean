import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean

structure GlobalHyperbolicityPackage {G : LorentzianCurvaturePackage} where
  causalSimpleConnected : Prop
  cauchySurfaceExists : Prop
  stablyCausal : Prop

structure GlobalHyperbolicityEvidence {G : LorentzianCurvaturePackage} (H : GlobalHyperbolicityPackage G) where
  causalSimpleConnectedClosed : H.causalSimpleConnected
  cauchySurfaceExistsClosed : H.cauchySurfaceExists
  stablyCausalClosed : H.stablyCausal

def GlobalHyperbolicityClosed {G : LorentzianCurvaturePackage} (H : GlobalHyperbolicityPackage G) : Prop :=
  H.causalSimpleConnected ∧ H.cauchySurfaceExists ∧ H.stablyCausal

theorem global_hyperbolicity_closed_from_evidence {G : LorentzianCurvaturePackage} (H : GlobalHyperbolicityPackage G) (E : GlobalHyperbolicityEvidence H) : GlobalHyperbolicityClosed H := by
  exact And.intro E.causalSimpleConnectedClosed
    (And.intro E.cauchySurfaceExistsClosed E.stablyCausalClosed)

end ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean
end HautevilleHouse