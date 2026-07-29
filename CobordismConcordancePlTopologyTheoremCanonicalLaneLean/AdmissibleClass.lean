import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : CobordismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CobordismWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CobordismConcordancePlTopologyTheoremCanonicalLaneLean
end HautevilleHouse