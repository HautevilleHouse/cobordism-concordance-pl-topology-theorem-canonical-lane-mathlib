import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyTheoremCanonicalLaneLean

structure ConcordanceRelation where
  sourceManifold : Type u
  targetManifold : Type v
  dimension : Nat
  cobordism : Prop
  homotopyEquivalence : Prop
  isotopy : Prop
  plConcordance : Prop
  smoothConcordance : Prop
  topologicalConcordance : Prop

structure ConcordanceRelationEvidence (C : ConcordanceRelation) where
  sourceManifoldClosed : C.sourceManifold
  targetManifoldClosed : C.targetManifold
  dimensionClosed : C.dimension = 3
  cobordismClosed : C.cobordism
  homotopyEquivalenceClosed : C.homotopyEquivalence
  isotopyClosed : C.isotopy
  plConcordanceClosed : C.plConcordance
  smoothConcordanceClosed : C.smoothConcordance
  topologicalConcordanceClosed : C.topologicalConcordance

def ConcordanceRelationClosed (C : ConcordanceRelation) : Prop :=
  C.sourceManifold ∧ C.targetManifold ∧ C.dimension = 3 ∧ C.cobordism ∧ C.homotopyEquivalence ∧ C.isotopy ∧ C.plConcordance ∧ C.smoothConcordance ∧ C.topologicalConcordance

theorem concordance_relation_closed_from_evidence (C : ConcordanceRelation) (E : ConcordanceRelationEvidence C) : ConcordanceRelationClosed C := by
  exact And.intro E.sourceManifoldClosed
    (And.intro E.targetManifoldClosed
      (And.intro E.dimensionClosed
        (And.intro E.cobordismClosed
          (And.intro E.homotopyEquivalenceClosed
            (And.intro E.isotopyClosed
              (And.intro E.plConcordanceClosed
                (And.intro E.smoothConcordanceClosed E.topologicalConcordanceClosed)))))))

end CobordismConcordancePlTopologyTheoremCanonicalLaneLean
end HautevilleHouse