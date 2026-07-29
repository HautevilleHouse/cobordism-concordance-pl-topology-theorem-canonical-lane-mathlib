import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyTheoremCanonicalLaneLean

structure SmoothManifold where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothStructure : Type v
  dimension : ℕ
  compact : Prop
  withoutBoundary : Prop
  oriented : Prop

structure SmoothManifoldEvidence (M : SmoothManifold) where
  isSmooth : M.smoothStructure
  isCompact : M.compact
  isClosed : M.withoutBoundary
  isOriented : M.oriented

def SmoothManifoldClosed (M : SmoothManifold) : Prop :=
  M.smoothStructure ∧ M.compact ∧ M.withoutBoundary ∧ M.oriented

theorem smooth_manifold_closed_from_evidence (M : SmoothManifold)
    (E : SmoothManifoldEvidence M) : SmoothManifoldClosed M :=
  And.intro E.isSmooth (And.intro E.isCompact (And.intro E.isClosed E.isOriented))

end CobordismConcordancePlTopologyTheoremCanonicalLaneLean
end HautevilleHouse