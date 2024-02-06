---
title: AE - Exercises for lecture 1
---

# Exercise 1.1

In the laboratory, 2 sets of related values of current and voltage at two temperatures
have been measured for the diode 1N4001:

- At $25\degree C$: $(V_{D1}, I_{D1})=(540\,\mathrm{mV}, 1\,\mathrm{mA})$, $(V_{D2}, I_{D2})=(450\,\mathrm{mV}, 0.1\,\mathrm{mA})$
- At $75\degree C$: $(V_{D1}, I_{D1})=(420\,\mathrm{mV}, 1\,\mathrm{mA})$, $(V_{D2}, I_{D2})=(315\,\mathrm{mV}, 0.1\,\mathrm{mA})$

a. Calculate the constants of the diode equation: $n$ and $I_s$ for each temperature.

$$
I_s = \frac{I_D}{e^{\frac{V_D}{n V_T}}} \\
n = \frac{V_D}{V_T \ln(\frac{I_D}{I_S})}
$$

Solve by inputting the two points to get 2 equations with 2 unknowns.

**25 degrees:**

$$
I_s = 1 \,\mathrm{nA} \\
n = 1.50
$$

**75 degrees:**

$$
I_s = 1 \,\mathrm{nA} \\
n = 1.52
$$

b. Calculate the temperature coefficient $\mathrm{[mV/K]}$ of the diode at current $1 \mathrm{mA}$.

$$
\mathrm{Temperature Coefficient} = \frac{\Delta V}{\Delta T} = \frac{420 - 540}{75 - 25} = -2.4 \,\mathrm{mV/K}
$$
