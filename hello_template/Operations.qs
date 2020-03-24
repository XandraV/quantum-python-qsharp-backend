namespace Something {
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Diagnostics;

    operation HelloQ(): Result{
        using (qubit = Qubit()){
            //H(qubit);
            Ry(ArcSin(1.0/Sqrt(3.0))*2.0, qubit);
            AssertProb([PauliZ],[qubit], One, 1.0/3.0, "Error", 1E-05);
            let result = MResetZ(qubit);
            return result;
        }
    }

    operation ApplyGate (start_state: Int, gate: String) : Result { 
        // This line allocates a qubit in state |0⟩
        using (q = Qubit()) {
            if (start_state==1) {
                // changes the qubit from state |0⟩ to state |1⟩
                X(q);
            }
            if (gate == "PauliX") {
                X(q);
            } elif (gate == "PauliY") {
                Y(q);
            } elif (gate == "PauliZ") {
                Z(q);
            } elif (gate == "Hadamard") {
                H(q);
                AssertProb([PauliZ], [q], One, 0.5,"Measuring in conjugate basis did not give 50/50 results.", 1e-5);
            } else {
                fail "Invalid gate name";
            }
        
            let res = M(q);
        
            // This line returns the qubit to state |0⟩
            Reset(q);
            return res;
        }
    }
}