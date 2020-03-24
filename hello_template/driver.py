import qsharp

from Something import ApplyGate

def get_result(start, gate_names):
    print(start)
    print(list(gate_names))
    result = start
    for gate in list(gate_names):
        result = ApplyGate.simulate(start_state=result, gate=gate)
    print(result)
    return result