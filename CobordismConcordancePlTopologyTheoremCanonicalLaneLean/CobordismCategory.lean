import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyTheoremCanonicalLaneLean

structure CobordismCategory where
  source : Type u
  target : Type v
  dimension : Nat
  plStructure : Prop
  smoothStructure : Prop
  topologicalStructure : Prop
  bordismRelation : Prop

structure CobordismCategoryEvidence (C : CobordismCategory) where
  sourceClosed : C.source
  targetClosed : C.target
  dimensionClosed : C.dimension = 3
  plStructureClosed : C.plStructure
  smoothStructureClosed : C.smoothStructure
  topologicalStructureClosed : C.topologicalStructure
  bordismRelationClosed : C.bordismRelation

def CobordismCategoryClosed (C : CobordismCategory) : Prop :=
  C.source ∧ C.target ∧ C.dimension = 3 ∧ C.plStructure ∧ C.smoothStructure ∧ C.topologicalStructure ∧ C.bordismRelation

theorem cobordism_category_closed_from_evidence (C : CobordismCategory) (E : CobordismCategoryEvidence C) : CobordismCategoryClosed C := by
  exact And.intro E.sourceClosed
    (And.intro E.targetClosed
      (And.intro E.dimensionClosed
        (And.intro E.plStructureClosed
          (And.intro E.smoothStructureClosed
            (And.intro E.topologicalStructureClosed E.bordismRelationClosed)))))

end CobordismConcordancePlTopologyTheoremCanonicalLaneLean
end HautevilleHouse