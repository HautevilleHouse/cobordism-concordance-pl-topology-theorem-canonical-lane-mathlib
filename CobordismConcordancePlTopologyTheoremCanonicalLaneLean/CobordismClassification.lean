import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyTheoremCanonicalLaneLean

structure CobordismPackage where
  sourceManifold : Type u
  targetManifold : Type v
  cobordism : Type w
  cobordismTopology : TopologicalSpace cobordism
  boundaryComponents : Prop
  cobordismExists : Prop
  topDimension : ℕ

structure CobordismEvidence (C : CobordismPackage) where
  boundaryComponentsClosed : C.boundaryComponents
  cobordismExistsClosed : C.cobordismExists

def CobordismClosed (C : CobordismPackage) : Prop :=
  C.boundaryComponents ∧ C.cobordismExists

theorem cobordism_closed_from_evidence (C : CobordismPackage) (E : CobordismEvidence C) :
    CobordismClosed C := by
  exact And.intro E.boundaryComponentsClosed E.cobordismExistsClosed

end CobordismConcordancePlTopologyTheoremCanonicalLaneLean
end HautevilleHouse