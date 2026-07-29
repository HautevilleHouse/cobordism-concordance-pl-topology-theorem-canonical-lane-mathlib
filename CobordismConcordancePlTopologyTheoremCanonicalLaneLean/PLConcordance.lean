import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyTheoremCanonicalLaneLean

structure PLConcordancePackage (C : CobordismPackage) where
  sourceManifold : Type u
  targetManifold : Type v
  productCobordism : C.cobordism
  concordanceMap : Type w
  plStructure : Prop
  concordanceExists : Prop

structure PLConcordanceEvidence {C : CobordismPackage} (P : PLConcordancePackage C) where
  plStructureClosed : P.plStructure
  concordanceExistsClosed : P.concordanceExists

def PLConcordanceClosed {C : CobordismPackage} (P : PLConcordancePackage C) : Prop :=
  P.plStructure ∧ P.concordanceExists

theorem pl_concordance_closed_from_evidence {C : CobordismPackage} (P : PLConcordancePackage C)
    (E : PLConcordanceEvidence P) : PLConcordanceClosed P := by
  exact And.intro E.plStructureClosed E.concordanceExistsClosed

end CobordismConcordancePlTopologyTheoremCanonicalLaneLean
end HautevilleHouse