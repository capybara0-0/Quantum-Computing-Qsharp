The state of a qubit can be written as:

$$
|\psi\rangle = \alpha |0\rangle + \beta |1\rangle
$$

where $\alpha$ and $\beta$ are complex amplitudes.

### Probabilities

- Probability of state $|0\rangle$: $|\alpha|^2$
- Probability of state $|1\rangle$: $|\beta|^2$

#### bonus exercises

#### Question 1

Given a qubit with probability amplitudes $\alpha = \frac{1}{2}$ and $\beta = \frac{\sqrt{3}}{2}$, calculate the probabilities of finding the qubit in states 0 and 1.

### **Solution to Question 1**

We are given a qubit state in the form:

$$
|\psi\rangle = \alpha |0\rangle + \beta |1\rangle
$$

where:

- $\alpha = \frac{1}{2}$ (probability amplitude for state $|0\rangle$)
- $\beta = \frac{\sqrt{3}}{2}$ (probability amplitude for state $|1\rangle$)

The probabilities of measuring the qubit in states $|0\rangle$ and $|1\rangle$ are:

$$
P(0) = |\alpha|^2 \quad \text{and} \quad P(1) = |\beta|^2
$$

#### **Step 1: Compute $P(0) = |\alpha|^2$**

$$
P(0) = \left| \frac{1}{2} \right|^2 = \left( \frac{1}{2} \right)^2 = \frac{1}{4}
$$

#### **Step 2: Compute $P(1) = |\beta|^2$**

$$
P(1) = \left| \frac{\sqrt{3}}{2} \right|^2 = \left( \frac{\sqrt{3}}{2} \right)^2 = \frac{(\sqrt{3})^2}{2^2} = \frac{3}{4}
$$

#### **Step 3: Verify that probabilities sum to 1**

A valid quantum state must satisfy the normalization condition:

$$
P(0) + P(1) = 1
$$

$$
\frac{1}{4} + \frac{3}{4} = 1 \quad \text{(which checks out)}
$$

### **Final Answer**

- Probability of measuring $|0\rangle$: $\boxed{\frac{1}{4}}$
- Probability of measuring $|1\rangle$: $\boxed{\frac{3}{4}}$

#### Question 2

For a qubit with amplitudes $\alpha = 2 + i$ and $\beta = 1 - i$, determine the probabilities of measuring the qubit in states 0 and 1. Also, check if the amplitudes are normalized.

#### Question 3

A qubit is described by the amplitudes $\alpha = \sqrt{0.8}$ and $\beta = \sqrt{0.2}$. What are the probabilities of observing the qubit in states 0 and 1?

#### Question 4

If a qubit has amplitudes $\alpha = 3$ and $\beta = 4$, what are the probabilities of finding the qubit in states 0 and 1? Note that these amplitudes are not normalized.

#### Question 5

Given a qubit with complex amplitudes $\alpha = \frac{1}{\sqrt{2}} + \frac{i}{\sqrt{2}}$ and $\beta = \frac{1}{\sqrt{2}} - \frac{i}{\sqrt{2}}$, calculate the probabilities of observing the qubit in states 0 and 1.
