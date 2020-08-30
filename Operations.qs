namespace Something {
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Arrays;

    operation ApplyGate (q: Qubit, gate: String, angle: Double) : Unit { 
        // This line allocates a qubit in state |0⟩
            if (gate == "X") {
                X(q);
            } elif (gate == "Y") {
                Y(q);
            } elif (gate == "Z") {
                Z(q);
            } elif (gate == "H") {
                H(q);
            }
             elif (gate == "S") {
                S(q);
            } elif ( gate == "Rx" ){
                Rx(angle, q);
            } elif ( gate == "Ry" ){
                Ry(angle, q);
            } elif ( gate == "Rz" ){
                Rz(angle, q);
            } elif ( gate == "T" ){
                T(q);
            } elif ( gate == "S" ){
                S(q);
            } elif (gate == "I") {
                //
            }
    }
    
    operation CalculateCircuit (qubitNum: Int, gatesMatrix: String[][]) : Result[] {
        mutable res_array = new Result[0]; 
        using (qs = Qubit[qubitNum]) {  
           for (i in 0 .. Length(gatesMatrix[0]) - 1) {               
                for (j in 0 .. Length(gatesMatrix) - 1) {
                    if (gatesMatrix[j][i] == "CNOTc") {
                        CNOT(qs[j], qs[j+1]);
                        Message("Made it to CNOTc");
                    } elif (gatesMatrix[j][i] == "CNOTt") {
                        Message("CNOTt not doing anything");
                    } else {                                     
                         ApplyGate(qs[j], gatesMatrix[j][i], 0.0);
                    }
                }
            }           
            for (q in qs) {
                set res_array += [M(q)];
            }
            ResetAll(qs);
            return res_array;
        }
    }
}