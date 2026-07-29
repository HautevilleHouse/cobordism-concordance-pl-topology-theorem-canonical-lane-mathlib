import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyTheoremCanonicalLaneLean

structure CobordismGroupPackage where
  dimension : ℕ
  oriented : Prop
  cobordismGroup : Type u
  groupOperation : cobordismGroup → cobordismGroup → cobordismGroup
  identityElement : cobordismGroup
  groupAxioms : Prop

structure CobordismGroupEvidence (C : CobordismGroupPackage) where
  groupAxiomsClosed : C.groupAxioms

def CobordismGroupClosed (C : CobordismGroupPackage) : Prop :=
  C.groupAxioms

theorem cobordism_group_closed_from_evidence (C : CobordismGroupPackage) (E : CobordismGroupEvidence C) :
    CobordismGroupClosed C := by
  exact E.groupAxiomsClosed

end CobordismConcordancePlTopologyTheoremCanonicalLaneLean
end HautevilleHouse