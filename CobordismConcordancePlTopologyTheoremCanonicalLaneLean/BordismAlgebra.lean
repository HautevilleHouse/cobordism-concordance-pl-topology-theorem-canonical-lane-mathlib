import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyTheorem

structure BordismAlgebraData where
  n : ℕ
  coefficientRing : Type u
  bordismGroups : ℕ → Type v
  pontryaginThomMap : Prop
  productStructure : Prop

structure BordismAlgebraEvidence (B : BordismAlgebraData) where
  productStructureClosed : B.productStructure
  pontryaginThomMapClosed : B.pontryaginThomMap

def BordismAlgebraClosed (B : BordismAlgebraData) : Prop :=
  B.pontryaginThomMap ∧ B.productStructure

theorem bordism_algebra_closed_from_evidence (B : BordismAlgebraData) (E : BordismAlgebraEvidence B) :
    BordismAlgebraClosed B := by
  exact And.intro E.pontryaginThomMapClosed E.productStructureClosed

end CobordismConcordancePlTopologyTheorem
end HautevilleHouse