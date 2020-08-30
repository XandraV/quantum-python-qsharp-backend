import qsharp
import math
import re
from Something import CalculateCircuit

def get_circuit_result(qubitNum, gatesMatrix):
    result = CalculateCircuit.simulate(qubitNum=qubitNum,gatesMatrix=gatesMatrix)
    return result