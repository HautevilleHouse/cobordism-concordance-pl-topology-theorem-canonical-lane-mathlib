import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyTheoremCanonicalLaneLean

structure SurgeryTheoryPackage {M : PlTopologyPackage} where
  surgeryData : Prop
  normalBundles : Prop
  surgeryObstruction : Prop
  cobordismInvariance : Prop

structure SurgeryTheoryEvidence {M : PlTopologyPackage} (S : SurgeryTheoryPackage M) where
  surgeryDataClosed : S.surgeryData
  normalBundlesClosed : S.normalBundles
  surgeryObstructionClosed : S.surgeryObstruction
  cobordismInvarianceClosed : S.cobordismInvariance

def SurgeryTheoryClosed {M : PlTopologyPackage} (S : SurgeryTheoryPackage M) : Prop :=
  S.surgeryData ∧ S.normalBundles ∧ S.surgeryObstruction ∧ S.cobordismInvariance

theorem surgery_theory_closed_from_evidence
    {M : PlTopologyPackage} (S : SurgeryTheoryPackage M) (E : SurgeryTheoryEvidence S) :
    SurgeryTheoryClosed S := by
  exact And.intro E.surgeryDataClosed (And.intro E.normalBundlesClosed (And.intro E.surgeryObstructionClosed E.cobordismInvarianceClosed))

end CobordismConcordancePlTopologyTheoremCanonicalLaneLean
end HautevilleHouse