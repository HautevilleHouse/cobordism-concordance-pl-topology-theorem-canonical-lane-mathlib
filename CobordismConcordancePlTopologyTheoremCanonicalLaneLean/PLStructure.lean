import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyTheoremCanonicalLaneLean

structure PLStructure (M : SmoothManifold) where
  triangulation : Type u
  linkCondition : Prop
  homotopyEquivalence : Prop

structure PLEvidence {M : SmoothManifold} (P : PLStructure M) where
  triangulationClosed : P.triangulation
  linkConditionClosed : P.linkCondition
  homotopyEquivalenceClosed : P.homotopyEquivalence

def PLStructureClosed {M : SmoothManifold} (P : PLStructure M) : Prop :=
  P.triangulation ∧ P.linkCondition ∧ P.homotopyEquivalence

theorem pl_structure_closed_from_evidence {M : SmoothManifold}
    (P : PLStructure M) (E : PLEvidence P) : PLStructureClosed P :=
  And.intro E.triangulationClosed
    (And.intro E.linkConditionClosed E.homotopyEquivalenceClosed)

end CobordismConcordancePlTopologyTheoremCanonicalLaneLean
end HautevilleHouse