
import Std.Diagnostics.DumpMachine;
import Std.Math.Sqrt;
import Std.Math.ArcCos;

// What is a skewed random bit generator?
// It's a random bit generator that does not have euqal probabilities of getting 0 and 1.
// for example you want the outcome 0 with probability `P` and outcome 1 with probabitlity `1 - P`.

// example: 
//  Basis | Amplitude      | Probability | Phase
//  -----------------------------------------------
//    |0⟩ |  0.5773+0.0000𝑖 |    33.3333% |   0.0000
//    |1⟩ |  0.8165+0.0000𝑖 |    66.6667% |   0.0000


// The below example chooses alpha | α |  to be about 1/3 
operation Main(): Result{
    use q = Qubit();
    let P = 0.333333;
    Ry(2.0 * ArcCos(Sqrt(P)),q);
    Message("The qubit is in the desired state.");    
    Message("");
    DumpMachine();
    Message("");
    Message("Your skewed random bit is: ");
    let skewedrandomBit = M(q);
    Reset(q);
    return skewedrandomBit;    
}