import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean

structure RigidMotionPackage where
  configurationSpace : Type u
  translation : configurationSpace → configurationSpace
  rotation : configurationSpace → configurationSpace
  composition : (configurationSpace → configurationSpace) → (configurationSpace → configurationSpace) → (configurationSpace → configurationSpace)
  identity : configurationSpace → configurationSpace
  preservesDistance : (configurationSpace → configurationSpace) → Prop
  preservesOrientation : (configurationSpace → configurationSpace) → Prop

structure RigidMotionEvidence (R : RigidMotionPackage) where
  translationPreservesDistance : ∀ x y : R.configurationSpace, R.preservesDistance (R.translation)
  rotationPreservesDistance : ∀ x y : R.configurationSpace, R.preservesDistance (R.rotation)
  compositionPreservesDistance : ∀ f g : R.configurationSpace → R.configurationSpace, R.preservesDistance f → R.preservesDistance g → R.preservesDistance (R.composition f g)

def RigidMotionClosed (R : RigidMotionPackage) : Prop :=
  (∀ x y : R.configurationSpace, R.preservesDistance (R.translation)) ∧
  (∀ x y : R.configurationSpace, R.preservesDistance (R.rotation)) ∧
  (∀ f g : R.configurationSpace → R.configurationSpace, R.preservesDistance f → R.preservesDistance g → R.preservesDistance (R.composition f g))

theorem rigid_motion_closed_from_evidence (R : RigidMotionPackage) (E : RigidMotionEvidence R) : RigidMotionClosed R :=
  And.intro E.translationPreservesDistance (And.intro E.rotationPreservesDistance E.compositionPreservesDistance)

end ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean
end HautevilleHouse