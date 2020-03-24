namespace Something {
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Diagnostics;

    operation ApplyGate (start_state: Int, gate: String) : Result { 
        // This line allocates a qubit in state |0⟩
        using (q = Qubit()) {
            if (start_state==1) {
                // changes the qubit from state |0⟩ to state |1⟩
                X(q);
            }
            if (gate == "X") {
                X(q);
            } elif (gate == "Y") {
                Y(q);
            } elif (gate == "Z") {
                Z(q);
            } elif (gate == "H") {
                H(q);
            } elif (gate == "noGate") {
                //
            }
            
            let res = M(q);
        
            // This line returns the qubit to state |0⟩
            Reset(q);
            return res;
        }
    }
}