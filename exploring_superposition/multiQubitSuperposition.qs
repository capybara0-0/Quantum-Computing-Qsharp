import Std.Convert.ResultArrayAsBoolArray;
import Std.Convert.BoolArrayAsInt;
import Std.Arrays.ForEach;
import Std.Diagnostics.DumpMachine;
// Let's explore superpositions of a register that includes many qubits. For example, if a register consists of 3 qubits then we have 8 basis states:

// ∣000⟩, ∣001⟩, ∣010⟩, ∣011⟩, ∣100⟩, ∣101⟩, ∣110, ∣111⟩

// operation Main(): Int{
//     use qubits = Qubit[3];
//     ApplyToEach(H,qubits);
//     Message("The qubit register in a uniform superposition: ");
//     DumpMachine();
//     let result = ForEach(M, qubits);
//     Message("Measuring the qubits collapses the superposition to a basis state.");
//     DumpMachine();
//     ResetAll(qubits);
//     return BoolArrayAsInt(ResultArrayAsBoolArray(result));
// }


operation Main() : Int {
    use qubits = Qubit[3];
    ApplyToEach(H, qubits);
    Message("The qubit register in a uniform superposition: ");
    DumpMachine();
    mutable results = [];
    for q in qubits {
        Message(" ");
        set results += [M(q)];
        DumpMachine();
    }
    Message(" ");
    Message("Your random number is: ");
    ResetAll(qubits);
    return BoolArrayAsInt(ResultArrayAsBoolArray(results));
}

// explaination:
// As you can see here how each consecutive measurement changes the quantum state and therefore the probabilities of obtaining each outcome. For example if the result is number 0.

//  A: after applying H to each qubit of the register, we obtain a uniform superposition.
// The qubit register in a uniform superposition: 

//  Basis | Amplitude      | Probability | Phase
//  -----------------------------------------------
//  |000⟩ |  0.3536+0.0000𝑖 |    12.5000% |   0.0000
//  |001⟩ |  0.3536+0.0000𝑖 |    12.5000% |   0.0000
//  |010⟩ |  0.3536+0.0000𝑖 |    12.5000% |   0.0000
//  |011⟩ |  0.3536+0.0000𝑖 |    12.5000% |   0.0000
//  |100⟩ |  0.3536+0.0000𝑖 |    12.5000% |   0.0000
//  |101⟩ |  0.3536+0.0000𝑖 |    12.5000% |   0.0000
//  |110⟩ |  0.3536+0.0000𝑖 |    12.5000% |   0.0000
//  |111⟩ |  0.3536+0.0000𝑖 |    12.5000% |   0.0000

 
// B: In the first measurement, the result was `0`. Therefore, all of the amplitudes of the states whose leftmost qubit is `1` are no longer present. The rest of the amplitudes increase to fulfill the normalization condition. 

//  Basis | Amplitude      | Probability | Phase
//  -----------------------------------------------
//  |000⟩ |  0.5000+0.0000𝑖 |    25.0000% |   0.0000
//  |001⟩ |  0.5000+0.0000𝑖 |    25.0000% |   0.0000
//  |010⟩ |  0.5000+0.0000𝑖 |    25.0000% |   0.0000
//  |011⟩ |  0.5000+0.0000𝑖 |    25.0000% |   0.0000

 
// C: In the second second measurement, the result was `0`. Therefore, all of the amplitudes of the states whose second leftmost or center qubit is `1` are no longer present. The rest of the amplitudes increase to fulfill the normalization condition.

//  Basis | Amplitude      | Probability | Phase
//  -----------------------------------------------
//  |000⟩ |  0.7071+0.0000𝑖 |    50.0000% |   0.0000
//  |001⟩ |  0.7071+0.0000𝑖 |    50.0000% |   0.0000

 
// D: In the third measurement, the result was `0`. Therefore, all of the amplitudes of the states whose rightmost or last qubit is `1` are no longer present. The rest of the amplitudes increase to fulfill the normalization condition. The only compatible state is  ∣0⟩ = |000⟩. This state get's an amplitude probability of 1.

//  Basis | Amplitude      | Probability | Phase
//  -----------------------------------------------
//  |000⟩ |  1.0000+0.0000𝑖 |   100.0000% |   0.0000

 

// Your random number is: 

// 0