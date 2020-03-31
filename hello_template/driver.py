import qsharp
import math
import re
from Something import ApplyGate

def get_result(start, gate_names, phase_angle):
    #print(start)
    #print(re.findall('[A-Z][^A-Z]*', gate_names))
    result = start
    print(gate_names)
    for gate in gate_names:
        result = ApplyGate.simulate(start_state=result, gate=gate, angle=math.radians(int(phase_angle)))
    print(result)
    return result