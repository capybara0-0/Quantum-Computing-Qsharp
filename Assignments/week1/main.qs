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
