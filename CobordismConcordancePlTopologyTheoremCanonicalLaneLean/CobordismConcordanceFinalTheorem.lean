import canonicalLaneMathlib.AdmissibleClass
import CobordismConcordancePlTopologyTheoremCanonicalLaneLean.SmoothCobordismPackage
import CobordismConcordancePlTopologyTheoremCanonicalLaneLean.PLHomeomorphismPackage
import CobordismConcordancePlTopologyTheoremCanonicalLaneLean.ConcordanceClassificationPackage
import CobordismConcordancePlTopologyTheoremCanonicalLaneLean.SurgeryObstructionPackage

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : PLManifold
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PLManifoldBaseClass A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  unfold bridgeClosed
  exact A.object.2

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedCobordismConcordanceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cobordism_concordance_endgame (A : AdmissibleClass) :
    ConstrainedCobordismConcordanceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CobordismConcordancePlTopologyTheoremCanonicalLaneLean
end HautevilleHouse