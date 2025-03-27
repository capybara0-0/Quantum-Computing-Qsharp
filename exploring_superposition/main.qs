// Let's start with a simple program that generates a random bit using a qubit in superposition. use the `DumpMachine` function to see the state of the qubit at different points in the program.

import Std.Diagnostics.DumpMachine;

operation Main(): Result{
    use q = Qubit();
    Message("Initialized qubit: ");
    DumpMachine();
    Message(" ");
    H(q);
    Message("Qubit after applying H: ");
    DumpMachine();
    Message(" ");
    let randomBit = M(q);
    Message("Qubit after the measurement: ");
    DumpMachine();
    Message(" ");
    Reset(q);
    Message("Qubit after resetting:");
    DumpMachine();
    Message(" ");
    return randomBit;
}
