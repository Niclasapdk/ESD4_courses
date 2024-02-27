---
title: LADS - Exercises for lecture 4
date: 6/2/2024
author: ESD4-410
geometry:
- top=30mm
- left=20mm
- right=20mm
---

# Exercises

A. Find center and radius of convergence of the following series

1. $\sum_{n=0}^{\infty} 4^n (z+1)^n$

Center:
$$
z_0 = -1
$$

Radius:
$$
R = \lim_{n \to \infty} \frac{4^n}{4^{n+1}} = \frac{1}{4}
$$

2. $\sum_{n=1}^{\infty} \frac{n^n}{n} (z - i \pi)^n$

Center:
$$
z_0 = i \pi
$$

Radius:
$$
R = \lim_{n \to \infty} \frac{n^{n-1}}{n^n} = 0
$$

3. $\sum_{n=0}^{\infty} \frac{n(n-1)}{3^n} (z-i)^{2n}$

Center:
$$
z_0 = i
$$

Radius:
$$
R^2 = \lim_{n \to \infty} \frac{\frac{n(n-1)}{3^n}}{\frac{(n+1)n}{3^{n+1}}}
= \lim_{n \to \infty} \frac{3^{n+1}}{(n+1)n} \cdot \frac{n(n-1)}{3^n}
= \lim_{n \to \infty} \frac{3 (n-1)}{n+1}
= 3
\\ \implies R = \sqrt{3}
$$

4. $\sum_{n=1}^{\infty} \frac{(-1)^n n}{4^n} (z + 3)^n$

Center:
$$
z_0 = -3
$$

Radius:
$$
R = \lim_{n \to \infty} |\frac{\frac{(-1)^n n}{4^n}}{\frac{(-1)^{n+1} (n+1)}{4^{n+1}}}|
= \lim_{n \to \infty} \frac{4n}{n+1}
= 4
$$

5. $\sum_{n=1}^{\infty} \frac{2^n}{n} (4z-8)^n$

$$
\sum_{n=1}^{\infty} \frac{2^n}{n} (4z-8)^n
= \sum_{n=1}^{\infty} \frac{2^n}{n} 4^n (z-2)^n
= \sum_{n=1}^{\infty} \frac{2^{3n}}{n} (z-2)^n
$$

Center:
$$
z_0 = 2
$$

Radius:
$$
R = \lim_{n \to \infty} \frac{\frac{2^{3n}}{n}}{\frac{2^{3(n+1)}}{n+1}}
= \lim_{n \to \infty} \frac{2^{3n}}{n} \cdot \frac{n+1}{2^{3(n+1)}}
= \lim_{n \to \infty} \frac{2^{-3}(n+1)}{n}
= \frac{1}{8}
$$

6. $\sum_{n=0}^{\infty} n! \,(2z+1)^n$

$$
\sum_{n=0}^{\infty} n! \,(2z+1)^n
= \sum_{n=0}^{\infty} 2^n \cdot n! \,(z+\frac{1}{2})^n
$$

Center:
$$
z_0 = -\frac{1}{2}
$$

Radius:
$$
R = \lim_{n \to \infty} \frac{2^n \cdot n!}{2^{n+1} \cdot (n+1)!}
= \lim_{n \to \infty} \frac{2^n \cdot n!}{2^{n+1} (n+1) \cdot n!}
= \lim_{n \to \infty} \frac{1}{2 (n+1)}
= 0
$$

7. $\sum_{n=1}^{\infty} \frac{(z-2i)^n}{n^n}$

Center:
$$
z_0 = 2i
$$

Radius:
$$
R = \lim_{n \to \infty} \frac{n^{-n}}{(n+1)^{-(n+1)}}
= \lim_{n \to \infty} \frac{(n+1)^{(n+1)}}{n^{n}}
= \infty
$$

8. $\sum_{n=0}^{\infty} (\frac{1-i}{2+3i})^n z^n$

Center:
$$
z_0 = 0
$$

Radius:
$$
R = \lim_{n \to \infty} |\frac{(\frac{1-i}{2+3i})^n}{(\frac{1-i}{2+3i})^{n+1}}|
= \lim_{n \to \infty} |\frac{1}{\frac{1-i}{2+3i}}|
= \lim_{n \to \infty} |\frac{2+3i}{1-i}|
= 2.55
$$

9. $\sum_{n=0}^{\infty} 16^n (z+i)^{4n}$

Center:
$$
z_0 = 0
$$

Radius:
$$
R^4 = \lim_{n \to \infty} \frac{16^n}{16^{n+1}}
= \frac{1}{16}
\\ \implies R = \frac{1}{2}
$$

10. $\sum_{n=0}^{\infty} \frac{3n}{2^n n^2} z^n$

Center:
$$
z_0 = 0
$$

Radius:
$$
R = \lim_{n \to \infty} \frac{\frac{3n}{2^n n^2}}{\frac{3(n+1)}{2^{n+1} (n+1)^2}}
= \lim_{n \to \infty} \frac{\frac{3}{2^n n}}{\frac{3}{2^{n+1} (n+1)}}
= \lim_{n \to \infty} \frac{2^{n+1} (n+1)}{2^n n}
= \lim_{n \to \infty} \frac{2 (n+1)}{n}
= 2
$$

B. Calculate McLaurin series of the following functions

1. $\sin(2z^2)$

Substitution method:

$$
q = 2z^2 \\
\sin(2z^2) = \sin(q)
= \sum_{n=0}^\infty \frac{(-1)^n q^{2n+1}}{(2n + 1)!}
= \sum_{n=0}^\infty \frac{(-1)^n (2z^2)^{2n+1}}{(2n + 1)!}
$$

2. $\frac{1}{2+z^4}$

Substitution method:

$$
\frac{1}{2+z^4} = \frac{1}{2} \cdot \frac{1}{1 + \frac{z^4}{2}}
= \frac{1}{2} \cdot \frac{1}{1-q} \implies q = -\frac{z^4}{2} \\
\frac{1}{2+z^4} = \frac{1}{2} \sum_{n=0}^\infty q^n = \frac{1}{2} \sum_{n=0}^\infty (-\frac{z^4}{2})^n
= \frac{1}{2} \sum_{n=0}^\infty \frac{(-1)^n}{2^n} z^{4n}
$$

3. $\frac{1}{2+5iz}$
4. $\cos^2(\frac{z}{2})$
5. $\sin^2(z)$
