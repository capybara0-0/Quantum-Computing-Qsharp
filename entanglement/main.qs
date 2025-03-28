import Std.Diagnostics.*;

operation Main(): (Result, Result){
    use (A, B) = (Qubit(), Qubit());
    Message("Initializing Qubit A and Qubit B: ");
    DumpMachine();

    H(A);
    Message("Applying Hadamard operation to qubit A: ");
    DumpMachine();

    CNOT(A,B);
    Message("Entangling the qbits A and B using CNOT operation: ");
    DumpMachine();

    let (m1, m2) = (M(A), M(B));
    Message("Measuring the qubits (qubits collapeses): ");
    DumpMachine();

    ResetAll([A,B]);
    return (m1,m2)
}