# Archonlabs Public Document
# 

import angr 
import claripy 

p = angr.Project("./problem")
state = p.factory.entry_state()

a = state.solver.BVS("a", 32)
b = state.solver.BVS("b", 32)

state.solver.add(10 > a)
state.solver.add(a > 5)
state.solver.add(10 > b)
state.solver.add(b > 1)
state.solver.add(2*b - a == 10)

print("a = " + state.solver.eval(a))
print("b = " + state.solver.eval(b))