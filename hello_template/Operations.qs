namespace Something {
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Math;

    operation HelloQ(): Result{
        using (qubit = Qubit()){
            //H(qubit);
            Ry(ArcSin(1.0/Sqrt(3.0))*2.0, qubit);
            AssertProb([PauliZ],[qubit], One, 1.0/3.0, "Error", 1E-05);
            let result = MResetZ(qubit);
            return result;
        }
    }
    
}