import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyTheoremCanonicalLaneLean

structure CobordismInvariance where
  sourceManifold : Type u
  targetManifold : Type v
  dimension : Nat
  cobordismClass : Prop
  signatureInvariant : Prop
  genusInvariant : Prop
  plInvariance : Prop
  smoothInvariance : Prop
  topologicalInvariance : Prop

structure CobordismInvarianceEvidence (C : CobordismInvariance) where
  sourceManifoldClosed : C.sourceManifold
  targetManifoldClosed : C.targetManifold
  dimensionClosed : C.dimension = 3
  cobordismClassClosed : C.cobordismClass
  signatureInvariantClosed : C.signatureInvariant
  genusInvariantClosed : C.genusInvariant
  plInvarianceClosed : C.plInvariance
  smoothInvarianceClosed : C.smoothInvariance
  topologicalInvarianceClosed : C.topologicalInvariance

def CobordismInvarianceClosed (C : CobordismInvariance) : Prop :=
  C.sourceManifold ∧ C.targetManifold ∧ C.dimension = 3 ∧ C.cobordismClass ∧ C.signatureInvariant ∧ C.genusInvariant ∧ C.plInvariance ∧ C.smoothInvariance ∧ C.topologicalInvariance

theorem cobordism_invariance_closed_from_evidence (C : CobordismInvariance) (E : CobordismInvarianceEvidence C) : CobordismInvarianceClosed C := by
  exact And.intro E.sourceManifoldClosed
    (And.intro E.targetManifoldClosed
      (And.intro E.dimensionClosed
        (And.intro E.cobordismClassClosed
          (And.intro E.signatureInvariantClosed
            (And.intro E.genusInvariantClosed
              (And.intro E.plInvarianceClosed
                (And.intro E.smoothInvarianceClosed E.topologicalInvarianceClosed)))))))

end CobordismConcordancePlTopologyTheoremCanonicalLaneLean
end HautevilleHouse