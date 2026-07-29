import HautevilleHouse.CobordismConcordancePlTopologyTheoremCanonicalLaneLean.PLConcordance

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyTheoremCanonicalLaneLean

structure SurgeryPackage {C : CobordismPackage} (P : PLConcordancePackage C) where
  surgeryData : Type u
  surgeryPerformed : Prop
  resultManifold : Type v
  resultSmoothStructure : Prop
  surgeryEffect : Prop

structure SurgeryEvidence {C : CobordismPackage} {P : PLConcordancePackage C}
    (S : SurgeryPackage P) where
  surgeryPerformedClosed : S.surgeryPerformed
  resultSmoothStructureClosed : S.resultSmoothStructure
  surgeryEffectClosed : S.surgeryEffect

def SurgeryClosed {C : CobordismPackage} {P : PLConcordancePackage C}
    (S : SurgeryPackage P) : Prop :=
  S.surgeryPerformed ∧ S.resultSmoothStructure ∧ S.surgeryEffect

theorem surgery_closed_from_evidence {C : CobordismPackage} {P : PLConcordancePackage C}
    (S : SurgeryPackage P) (E : SurgeryEvidence S) : SurgeryClosed S := by
  exact And.intro E.surgeryPerformedClosed
    (And.intro E.resultSmoothStructureClosed E.surgeryEffectClosed)

end CobordismConcordancePlTopologyTheoremCanonicalLaneLean
end HautevilleHouse