import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean

structure EuclideanStructurePackage where
  plane : Type u
  point : plane → Prop
  line : plane → Prop
  distance : plane → plane → ℝ
  parallelism : plane → plane → Prop
  perpendicularity : plane → plane → Prop
  angle : plane → plane → plane → ℝ

structure EuclideanStructureEvidence (E : EuclideanStructurePackage) where
  distancePositiveDefinite : ∀ p q : E.plane, E.distance p q ≥ 0 ∧ (E.distance p q = 0 ↔ p = q)
  parallelSymmetry : ∀ l1 l2 : E.plane, E.parallelism l1 l2 → E.parallelism l2 l1
  perpendicularSymmetry : ∀ l1 l2 : E.plane, E.perpendicularity l1 l2 → E.perpendicularity l2 l1

def EuclideanStructureClosed (E : EuclideanStructurePackage) : Prop :=
  (∀ p q : E.plane, E.distance p q ≥ 0 ∧ (E.distance p q = 0 ↔ p = q)) ∧
  (∀ l1 l2 : E.plane, E.parallelism l1 l2 → E.parallelism l2 l1) ∧
  (∀ l1 l2 : E.plane, E.perpendicularity l1 l2 → E.perpendicularity l2 l1)

theorem euclidean_structure_closed_from_evidence (E : EuclideanStructurePackage) (Ev : EuclideanStructureEvidence E) : EuclideanStructureClosed E :=
  And.intro Ev.distancePositiveDefinite (And.intro Ev.parallelSymmetry Ev.perpendicularSymmetry)

end ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean
end HautevilleHouse