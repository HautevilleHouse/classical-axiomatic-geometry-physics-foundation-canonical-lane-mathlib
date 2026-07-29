import ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean

structure PhysicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PhysicsAdmittedObject where
  space : PhysicsSpace
  axiomaticGeometryPhysicsFoundation : Prop
  conformsToClassicalLaws : Prop
  conclusion : conformsToClassicalLaws

structure PhysicsEndgameState where
  object : PhysicsAdmittedObject

def PhysicsWitnessClosed (O : PhysicsAdmittedObject) : Prop :=
  O.conformsToClassicalLaws

end ClassicalAxiomaticGeometryPhysicsFoundationCanonicalLaneLean
end HautevilleHouse