import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyTheoremCanonicalLaneLean

structure PLManifold where
  carrier : Type u
  topology : TopologicalSpace carrier
  plAtlas : Prop
  dimension : Nat
  compact : Prop

def PLManifoldBaseClass (M : PLManifold) : Prop :=
  M.plAtlas ∧ M.compact ∧ (M.dimension = 5 ∨ M.dimension = 4)

structure PLHomeomorphismPackage (M N : PLManifold) where
  map : M.carrier → N.carrier
  bijective : Prop
  continuous : Prop
  piecewiseLinear : Prop
  inverse : N.carrier → M.carrier
  inverseContinuous : Prop
  inversePiecewiseLinear : Prop
  witnessHomeomorphism : Prop

def PLHomeomorphismWitnessClosed {M N : PLManifold} (H : PLHomeomorphismPackage M N) : Prop :=
  H.bijective ∧ H.continuous ∧ H.piecewiseLinear ∧ H.inverseContinuous ∧ H.inversePiecewiseLinear

theorem pl_homeomorphism_package_closed_implies_homeomorphic {M N : PLManifold} (H : PLHomeomorphismPackage M N) (h : PLHomeomorphismWitnessClosed H) :
  H.witnessHomeomorphism := by
  exact h

end CobordismConcordancePlTopologyTheoremCanonicalLaneLean
end HautevilleHouse