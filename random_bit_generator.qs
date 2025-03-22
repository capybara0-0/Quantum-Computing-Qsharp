operation Main(): Result{
    // allocate a qubit
    use q = Qubit();

    // Setting the qubit into superposition of 0 and 1 using the Hadamard
    H(q);

    // Measuring the qubit in Pauli Z basis and store the result
    let result = M(q);

    // Reset qubit to the |0〉 state
    Reset(q);

    // Return the result of the measurement
    return result;
}