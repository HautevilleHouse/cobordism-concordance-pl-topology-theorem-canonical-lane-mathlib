import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyTheorem

structure ConcordanceClassificationPackage where
  manifoldDimension : ℕ
  concordanceGroup : Type u
  abelianGroupStructure : Prop
  trivialConcordanceClass : Prop
  concordanceInvariant : Prop

structure ConcordanceClassificationEvidence (C : ConcordanceClassificationPackage) where
  abelianGroupStructureClosed : C.abelianGroupStructure
  trivialConcordanceClassClosed : C.trivialConcordanceClass
  concordanceInvariantClosed : C.concordanceInvariant

def ConcordanceClassificationClosed (C : ConcordanceClassificationPackage) : Prop :=
  C.abelianGroupStructure ∧ C.trivialConcordanceClass ∧ C.concordanceInvariant

theorem concordance_classification_closed_from_evidence (C : ConcordanceClassificationPackage) (E : ConcordanceClassificationEvidence C) :
    ConcordanceClassificationClosed C := by
  exact And.intro E.abelianGroupStructureClosed (And.intro E.trivialConcordanceClassClosed E.concordanceInvariantClosed)

end CobordismConcordancePlTopologyTheorem
end HautevilleHouse