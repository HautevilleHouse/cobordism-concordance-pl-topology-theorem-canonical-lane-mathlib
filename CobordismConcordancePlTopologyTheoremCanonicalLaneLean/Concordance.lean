import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyTheoremCanonicalLaneLean

structure Concordance (M N : SmoothManifold) where
  cylinder : SmoothManifold
  sourceInclusion : M.carrier → cylinder.carrier
  targetInclusion : N.carrier → cylinder.carrier
  productStructure : Prop

structure ConcordanceEvidence {M N : SmoothManifold}
    (C : Concordance M N) where
  productStructureClosed : C.productStructure

def ConcordanceClosed {M N : SmoothManifold}
    (C : Concordance M N) : Prop :=
  C.productStructure

theorem concordance_closed_from_evidence {M N : SmoothManifold}
    (C : Concordance M N) (E : ConcordanceEvidence C) : ConcCondanceClosed C :=
  exact E.productStructureClosed

end CobordismConcordancePlTopologyTheoremCanonicalLaneLean
end HautevilleHouse