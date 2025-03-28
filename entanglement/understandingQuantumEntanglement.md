## Understanding quantum entanglement

Imagine that you have two qubits, A and B. The qubits are independent from each other, which means that the information about the state of qubit A, whatever it is, belongs only to qubit A. Similarly the information about the state of qubit B belongs to qubit B. You can describe the state of each qubit. In this case, the qubits are not entangled, because they aren't sharing any information.

Now imagine that you entangle the qubits (you'll learn how to do this later). If qubits A and B are entangled, then the information about the state of qubit A
is not independent of the state of qubit B. When entangled, information is shared between both qubits, and there's no way to infer the state of qubit A or state of qubit B. You can only describe the state of the global system, not the state of the individual qubits.

![alt text](image.png)

Entanglement is a quantum correlation between two or more particles. If two particles are entangled, they can't be described independently, but only as a whole system.

### **1. Independent Qubits (Not Entangled)**

- Each qubit (**A** and **B**) has its **own separate state** (like |0⟩, |1⟩, or a superposition).
- The state of **A** doesn’t affect **B**, and vice versa.
- You can fully describe **A** and **B** individually.
- Example:
  - Qubit **A** = |0⟩
  - Qubit **B** = |1⟩
  - Total system = **A** ⊗ **B** (just a combination of the two).

### **2. Entangled Qubits (Dependent on Each Other)**

- The qubits **share information**—their states are now **linked**.
- You **cannot** describe **A** or **B** alone—only the **whole system** (e.g., "A and B together are in state X").
- Measuring one qubit **instantly affects** the other, no matter how far apart they are.
- Example (Bell state, a type of entanglement):
  - System state = **|00⟩ + |11⟩** (A and B are either both |0⟩ or both |1⟩, but you don’t know which until you measure one).
  - If you measure **A** and get |0⟩, **B** instantly becomes |0⟩ too (and same for |1⟩).

### **Key Point**

- Entanglement means **no qubit "owns" its state anymore**—only the **pair (or group) does**.
- This is why quantum teleportation works: you **transfer the shared state**, not the physical qubit.

---

## Describing quantum entanglement (simple)

Quantum entanglement is a **special connection** between two or more qubits where:

1. **They Share a Single Quantum State**

   - The qubits ($A$ and $B$) no longer have independent states.
   - Instead, they are described **together** by a single state :
     $$|\phi\rangle = \frac{1}{\sqrt{2}} \left( |0_A 0_B\rangle + |1_A 1_B\rangle \right)$$
     - This is called a **Bell state** (a type of entangled state).

2. **What This State Means**

   - The system is in a **superposition** of two possibilities:
     - Both qubits are **0** ($|0_A 0_B\rangle$), **or**
     - Both qubits are **1** ($|1_A 1_B\rangle$).
   - When you measure one qubit, the other **instantly collapses** to match it:
     - If you measure **A** and get **0**, **B** will **always** be **0**.(vice versa)
     - If you measure **A** and get **1**, **B** will **always** be **1**.(vice versa)

3. **Key Properties of Entanglement**
   - **No Individual States**: You can't say "qubit $A$ is in state X" alone—only the **pair** has a defined state.
   - **Instant Correlation**: Changing one qubit (e.g., measuring it) affects the other **immediately**, even if they're light-years apart (Einstein called this "spooky action at a distance").
   - **No Classical Equivalent**: This doesn't happen in everyday physics—it's purely quantum!

### **Why It's Useful**

- **Quantum Teleportation**: Send quantum info without physical movement.
- **Superfast Computing**: Entangled qubits can process complex problems faster.
- **Secure Communication**: Quantum cryptography uses entanglement to detect eavesdroppers.

### **The Four Bell States**

The quantum state $|\phi\rangle$ is a special entangled state, called Bell state. There are four bell states.

1. **$|\phi^+\rangle = \frac{1}{\sqrt{2}}(|00\rangle + |11\rangle)$**

   - _Correlated_: Both qubits are **same** (00 or 11).
   - **`+` sign**: The superposition has _no relative phase_ between terms.

2. **$|\phi^-\rangle = \frac{1}{\sqrt{2}}(|00\rangle - |11\rangle)$**

   - _Correlated_ but with a **phase flip** (00 or 11, but the `–` introduces a phase difference).
   - **`–` sign**: The $|11\rangle$ term is _inverted_ (phase shift of 180°).

3. **$|\psi^+\rangle = \frac{1}{\sqrt{2}}(|01\rangle + |10\rangle)$**

   - _Anti-correlated_: Qubits are **opposite** (01 or 10).
   - **`+` sign**: No phase difference between terms.

4. **$|\psi^-\rangle = \frac{1}{\sqrt{2}}(|01\rangle - |10\rangle)$**
   - _Anti-correlated_ with a **phase flip** (01 or 10, with $|10\rangle$ inverted).
   - **`–` sign**: The $|10\rangle$ term has a 180° phase shift.

### **What Does the `+` or `–` Signify?**

- **`+`**

  - The two states in superposition ($|00\rangle$ and $|11\rangle$, or $|01\rangle$ and $|10\rangle$) are _in phase_.
  - Example: In $|\phi^+\rangle$, measuring gives either `00` or `11` with equal probability.

- **`–`**
  - The second term has a **relative phase of –1** (180° phase shift).
  - Example:
    - $|\phi^-\rangle = \frac{1}{\sqrt{2}}(|00\rangle - |11\rangle)$
    - If you measure, you still get `00` or `11`, but the _quantum phase_ affects interference in experiments (critical for algorithms like Grover’s or Shor’s).

## Using entanglement as a resource

When two particles are entangled, subsystems are correlated and cannot be described independently. But here's the interesting part: the measurement outcomes are also correlated. That is, whatever operation happens to the state of one qubit in an entangled pair, also affects to the state of the other qubit.

For example, consider the $|\phi^+\rangle$ state,

$$
|\phi^+\rangle = \frac{1}{\sqrt{2}}|00\rangle + \frac{1}{\sqrt{2}}|11\rangle
$$

If you measure both qubits, you get either $|00\rangle$ or $|11\rangle$ with equal probability. There's zero probability of obtaining the states $|01\rangle$ and $|10\rangle$.

But what happens if you measure only one qubit?

If you measure only the qubit $A$ and you get the $|0\rangle$ state, this means that the global system collapses to the state $|00\rangle$. This is the only possible outcome, since the probability of measuring $|01\rangle$ is zero.

Therefore, without measuring the qubit $B$ you can be positive that the second qubit is also in $|0\rangle$ state. The measurement outcomes are correlated because the qubits are entangled.

Entanglement can exist between two particles even if they are separated by large distances. This correlation is stronger than any classical correlation, and it is a key resource for quantum information processing tasks such as quantum teleportation, quantum cryptography, and quantum computing.

```
check the `main.qs` file to see the example of a Q# program that creates Bell states by applying quantum operations.
```
