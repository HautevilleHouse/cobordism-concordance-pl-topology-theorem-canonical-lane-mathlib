import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyTheorem

structure CobordismInvariant where
  signature : Prop
  eulerClass : Prop
  stiefelWhitneyNumbers : Prop
  pontryaginNumbers : Prop

structure CobordismInvariantEvidence (I : CobordismInvariant) where
  signatureClosed : I.signature
  eulerClassClosed : I.eulerClass
  stiefelWhitneyNumbersClosed : I.stiefelWhitneyNumbers
  pontryaginNumbersClosed : I.pontryaginNumbers

def CobordismInvariantClosed (I : CobordismInvariant) : Prop :=
  I.signature ∧ I.eulerClass ∧ I.stiefelWhitneyNumbers ∧ I.pontryaginNumbers

theorem cobordism_invariant_closed_from_evidence (I : CobordismInvariant) (E : CobordismInvariantEvidence I) :
    CobordismInvariantClosed I := by
  exact And.intro E.signatureClosed (And.intro E.eulerClassClosed (And.intro E.stiefelWhitneyNumbersClosed E.pontryaginNumbersClosed))

end CobordismConcordancePlTopologyTheorem
end HautevilleHouse