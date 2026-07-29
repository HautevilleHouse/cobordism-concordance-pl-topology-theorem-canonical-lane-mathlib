import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyTheoremCanonicalLaneLean

def ConstrainedCobordismConcordancePlTopologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cobordism_concordance_pl_topology_endgame (A : AdmissibleClass) :
    ConstrainedCobordismConcordancePlTopologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CobordismConcordancePlTopologyTheoremCanonicalLaneLean
end HautevilleHouse