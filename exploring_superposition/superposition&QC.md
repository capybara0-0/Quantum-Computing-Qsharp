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

#### **Solution to Question 1**

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

#### **Final Answer**

- Probability of measuring $|0\rangle$: $\boxed{\frac{1}{4}}$
- Probability of measuring $|1\rangle$: $\boxed{\frac{3}{4}}$

---

#### Question 2

For a qubit with amplitudes $\alpha = 2 + i$ and $\beta = 1 - i$, determine the probabilities of measuring the qubit in states 0 and 1. Also, check if the amplitudes are normalized.

#### **Solution to Question 2**

We are given a qubit state in the form:

$$
|\psi\rangle = \alpha |0\rangle + \beta |1\rangle
$$

where:

- $\alpha = 2 + i$ (probability amplitude for state $|0\rangle$)
- $\beta = 1 - i$ (probability amplitude for state $|1\rangle$)

The probabilities of measuring the qubit in states $|0\rangle$ and $|1\rangle$ are given by the **Born rule**:

$$
P(0) = |\alpha|^2 \quad \text{and} \quad P(1) = |\beta|^2
$$

#### **Step 1: Compute $P(0) = |\alpha|^2$**

The squared magnitude of a complex number $z = a + bi$ is $|z|^2 = a^2 + b^2$.  
For $\alpha = 2 + i$:

$$
|\alpha|^2 = (2)^2 + (1)^2 = 4 + 1 = 5
$$

Thus:

$$
P(0) = 5
$$

#### **Step 2: Compute $P(1) = |\beta|^2$**

For $\beta = 1 - i$:

$$
|\beta|^2 = (1)^2 + (-1)^2 = 1 + 1 = 2
$$

Thus:

$$
P(1) = 2
$$

#### **Step 3: Check Normalization Condition**

A valid quantum state must satisfy:

$$
|\alpha|^2 + |\beta|^2 = 1
$$

But here:

$$
|\alpha|^2 + |\beta|^2 = 5 + 2 = 7 \neq 1
$$

**Conclusion:** The given amplitudes are **not normalized**.

#### **Step 4: Normalize the State**

To make the state valid, we can normalize it by dividing $\alpha$ and $\beta$ by $\sqrt{7}$:

$$
\alpha_{\text{normalized}} = \frac{2 + i}{\sqrt{7}}, \quad \beta_{\text{normalized}} = \frac{1 - i}{\sqrt{7}}
$$

Now, the probabilities become:

$$
P(0) = \left| \frac{2 + i}{\sqrt{7}} \right|^2 = \frac{5}{7}, \quad P(1) = \left| \frac{1 - i}{\sqrt{7}} \right|^2 = \frac{2}{7}
$$

#### **Final Answer**

- Probability of measuring $|0\rangle$: $\boxed{5}$ _(unnormalized, invalid state)_
- Probability of measuring $|1\rangle$: $\boxed{2}$ _(unnormalized, invalid state)_
- **Normalized probabilities**:
  - $P(0) = \boxed{\dfrac{5}{7}}$
  - $P(1) = \boxed{\dfrac{2}{7}}$

The original state was not properly normalized, because the initial probabilities do not sum to 1. The corrected probabilities (after normalization) are valid.

---

#### Question 3

A qubit is described by the amplitudes $\alpha = \sqrt{0.8}$ and $\beta = \sqrt{0.2}$. What are the probabilities of observing the qubit in states 0 and 1?

---

#### Question 4

If a qubit has amplitudes $\alpha = 3$ and $\beta = 4$, what are the probabilities of finding the qubit in states 0 and 1? Note that these amplitudes are not normalized.

---

#### Question 5

Given a qubit with complex amplitudes $\alpha = \frac{1}{\sqrt{2}} + \frac{i}{\sqrt{2}}$ and $\beta = \frac{1}{\sqrt{2}} - \frac{i}{\sqrt{2}}$, calculate the probabilities of observing the qubit in states 0 and 1.

---
