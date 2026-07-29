import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyTheoremCanonicalLaneLean

structure ConcordanceInvariantPackage {G : CobordismGroupPackage} where
  manifoldType : Type u
  invariant : manifoldType → G.cobordismGroup
  wellDefinedUpToCobordism : Prop
  additiveUnderDisjointUnion : Prop

structure ConcordanceInvariantEvidence {G : CobordismGroupPackage} (C : ConcordanceInvariantPackage G) where
  wellDefinedUpToCobordismClosed : C.wellDefinedUpToCobordism
  additiveUnderDisjointUnionClosed : C.additiveUnderDisjointUnion

def ConcordanceInvariantClosed {G : CobordismGroupPackage} (C : ConcordanceInvariantPackage G) : Prop :=
  C.wellDefinedUpToCobordism ∧ C.additiveUnderDisjointUnion

theorem concordance_invariant_closed_from_evidence
    {G : CobordismGroupPackage} (C : ConcordanceInvariantPackage G) (E : ConcordanceInvariantEvidence C) :
    ConcordanceInvariantClosed C := by
  exact And.intro E.wellDefinedUpToCobordismClosed E.additiveUnderDisjointUnionClosed

end CobordismConcordancePlTopologyTheoremCanonicalLaneLean
end HautevilleHouse