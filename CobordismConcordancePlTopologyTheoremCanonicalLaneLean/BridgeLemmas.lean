import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PLManifoldBaseClass A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.plAtlas ∧ A.object.compact ∧ (A.object.dimension = 5 ∨ A.object.dimension = 4)
  
end CobordismConcordancePlTopologyTheoremCanonicalLaneLean
end HautevilleHouse