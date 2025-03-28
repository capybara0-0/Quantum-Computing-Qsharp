import Std.Diagnostics.*;



operation Main(): (Result, Result){
    use (A, B) = (Qubit(), Qubit()); // Allocates two qubits (A and B) in the default state |0⟩ . 
    Message("Initializing Qubit A and Qubit B: ");
    DumpMachine();

    H(A); // Applies the Hadamard gate (H) to qubit A, putting it in a superposition.
    Message("Apply Hadamard operation to qubit A: ");
    DumpMachine();

    CNOT(A,B); // Applies CNOT with A (control) and B (target).
               // If A is |1⟩, B flips to |1⟩.
               // If A is |0⟩, B remains unchanged.
    Message("Entangle the qbits A and B using CNOT operation: ");
    DumpMachine();

    let (m1, m2) = (M(A), M(B)); // Measures both qubits, collapsing the state to either |00⟩ or |11⟩.
    Message("Measure the qubits (qubits collapses): ");
    DumpMachine();

    ResetAll([A,B]); // Resets the qubits to |0⟩ for reuse.
    return (m1,m2)
}



operation testingZOperation() : (Result, Result) {
    use (A, B) = (Qubit(), Qubit());
    DumpMachine();

    H(A);
    Message("Apply Hadamard operation to qubit A: ");
    DumpMachine();

    Z(A); // Flips phase if the state of the qubit is 1.
    Message("Apply Pauli Z operation to qubit A: ");
    DumpMachine();

    CNOT(A, B);
    Message("Apply CNOT operation: ");
    DumpMachine();

    let (m1, m2) = (M(A), M(B));
    Message("Measure qubits: ");
    DumpMachine();

    Reset(A);
    Reset(B);

    return (m1, m2);
}