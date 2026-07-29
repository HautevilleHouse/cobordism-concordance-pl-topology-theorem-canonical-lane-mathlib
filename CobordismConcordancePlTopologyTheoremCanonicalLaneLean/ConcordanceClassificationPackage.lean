import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyTheoremCanonicalLaneLean

structure ConcordanceClass where
  repManifold : Type u
  repTopology : TopologicalSpace repManifold
  repDimension : Nat
  hCobordismClass : Set (Type u)
  signatureInvariant : Int
  plStructureClass : Set (PLManifold)

def ConcordanceClassClosed (C : ConcordanceClass) : Prop :=
  (C.repDimension = 5) ∧ (C.signatureInvariant = 0)

structure ConcordanceClassificationPackage where
  targetDimension : Nat
  targetDimensionClosed : targetDimension = 5
  classificationComplete : Prop
  surgeryObstructionVanishes : Prop

def ConcordanceClassificationClosed (C : ConcordanceClassificationPackage) : Prop :=
  C.classificationComplete ∧ C.surgeryObstructionVanishes

theorem concordance_classification_closed_implies_surgery_obstruction_zero (C : ConcordanceClassificationPackage) (h : ConcordanceClassificationClosed C) :
  C.surgeryObstructionVanishes := by
  exact h.2

end CobordismConcordancePlTopologyTheoremCanonicalLaneLean
end HautevilleHouse