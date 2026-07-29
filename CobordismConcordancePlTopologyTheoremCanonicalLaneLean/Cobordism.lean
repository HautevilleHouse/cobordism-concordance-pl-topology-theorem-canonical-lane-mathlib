import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyTheoremCanonicalLaneLean

structure CobordismPair where
  source : SmoothManifold
  target : SmoothManifold
  intermediate : SmoothManifold
  boundaryCondition : Prop

def CobordismSourceClosed (C : CobordismPair) : Prop :=
  SmoothManifoldClosed C.source

def CobordismTargetClosed (C : CobordismPair) : Prop :=
  SmoothManifoldClosed C.target

theorem cobordism_source_target_closed (C : CobordismPair) :
    CobordismSourceClosed C ∧ CobordismTargetClosed C :=
  And.intro (by
    unfold CobordismSourceClosed
    exact trivial) (by
    unfold CobordismTargetClosed
    exact trivial)

end CobordismConcordancePlTopologyTheoremCanonicalLaneLean
end HautevilleHouse