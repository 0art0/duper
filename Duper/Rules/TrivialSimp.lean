import LeanHammer.Simp

namespace Schroedinger
open RuleM
open SimpResult

-- TODO: Do this on Clause instead of MClause?
def trivialSimp : MSimpRule := fun c => do
  for lit in c.lits do
    if lit.sign ∧ lit.lhs == lit.rhs then
      return Removed
  return Unapplicable

end Schroedinger