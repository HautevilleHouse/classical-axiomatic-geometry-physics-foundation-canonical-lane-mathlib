import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean

structure GeodesicCompletenessPackage {G : LorentzianCurvaturePackage} where
  geodesicEquation : Type u
  maximalGeodesics : Prop
  singularityTheorems : Prop
  causalGeodesicCompleteness : Prop

structure GeodesicCompletenessEvidence {G : LorentzianCurvaturePackage} (C : GeodesicCompletenessPackage G) where
  maximalGeodesicsClosed : C.maximalGeodesics
  singularityTheoremsClosed : C.singularityTheorems
  causalGeodesicCompletenessClosed : C.causalGeodesicCompleteness

def GeodesicCompletenessClosed {G : LorentzianCurvaturePackage} (C : GeodesicCompletenessPackage G) : Prop :=
  C.maximalGeodesics ∧ C.singularityTheorems ∧ C.causalGeodesicCompleteness

theorem geodesic_completeness_closed_from_evidence {G : LorentzianCurvaturePackage} (C : GeodesicCompletenessPackage G) (E : GeodesicCompletenessEvidence C) : GeodesicCompletenessClosed C := by
  exact And.intro E.maximalGeodesicsClosed
    (And.intro E.singularityTheoremsClosed E.causalGeodesicCompletenessClosed)

end ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean
end HautevilleHouse