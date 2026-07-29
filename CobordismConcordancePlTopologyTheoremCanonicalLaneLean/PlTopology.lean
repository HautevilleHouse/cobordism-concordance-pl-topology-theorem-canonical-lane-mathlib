import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyTheoremCanonicalLaneLean

structure PlTopologyPackage where
  manifoldType : Type u
  plStructure : Prop
  compatibleSmoothStructure : Prop
  triangulationExists : Prop

structure PlTopologyEvidence (P : PlTopologyPackage) where
  plStructureClosed : P.plStructure
  compatibleSmoothStructureClosed : P.compatibleSmoothStructure
  triangulationExistsClosed : P.triangulationExists

def PlTopologyClosed (P : PlTopologyPackage) : Prop :=
  P.plStructure ∧ P.compatibleSmoothStructure ∧ P.triangulationExists

theorem pl_topology_closed_from_evidence (P : PlTopologyPackage) (E : PlTopologyEvidence P) :
    PlTopologyClosed P := by
  exact And.intro E.plStructureClosed (And.intro E.compatibleSmoothStructureClosed E.triangulationExistsClosed)

end CobordismConcordancePlTopologyTheoremCanonicalLaneLean
end HautevilleHouse