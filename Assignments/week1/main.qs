import Std.Diagnostics.*;

// 1. Basic Q# Program (Random Bit Generator): Write a Q# operation that generates a random bit using a qubit in superposition and measures it.

operation RandomBitGenerator(): Result{
    use q = Qubit();
    H(q);
    DumpMachine();
    let m = M(q);
    Reset(q);
    return m;
}


// 2. Entanglement with CNOT: Create a Q# operation that entangles two qubits using a CNOT gate and measures them.
 
operation entanglementWithCNOT(): (Result, Result) {
    use (q1, q2) = (Qubit(), Qubit());
    H(q1);
    DumpMachine();

    CNOT(q1, q2);
    DumpMachine();

    let (m1, m2) = (M(q1), M(q2));

    ResetAll([q1, q2]);

    return (m1, m2);
}