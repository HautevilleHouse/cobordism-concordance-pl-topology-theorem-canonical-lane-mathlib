import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyTheoremCanonicalLaneLean

def CobordismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem cobordism_endgame (A : AdmissibleClass) : CobordismClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CobordismConcordancePlTopologyTheoremCanonicalLaneLean
end HautevilleHouse