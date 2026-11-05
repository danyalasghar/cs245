#set page(
  paper: "us-letter",
  margin: (top: 2cm, bottom: 1.5cm, left: 2cm, right: 2cm),
)

#set text(
  font: "New Computer Modern",
  size: 11pt,
  lang: "en",
)

#set par(justify: true, leading: 0.65em)

#show math.equation.where(block: true): set align(left)

#align(center)[
  #text(16pt, weight: "bold")[CS 245 Assignment 3 Solutions] \
  #v(2pt)
  #text(13pt)[Danyal Asghar] \
]

#v(0.5em)
#line(length: 100%, stroke: 0.5pt + luma(150))
#v(1em)

= Question 1

== (a)
#v(12pt)
#let Sigma = $Sigma$

Let $Sigma = {(A or B) or (C and D), (A <-> E) and (B -> F), K <-> (not E and not F), C -> B}$.

$
   1. & Sigma, K tack K                       &                     (in) \
   2. & Sigma, K tack K <-> (not E and not F) &                     (in) \
   3. & Sigma, K tack not E and not F         &            (1, 2, <-> -) \
   4. & Sigma, K tack not E                   &               (3, and -) \
   5. & Sigma, K tack not F                   &               (3, and -) \
   6. & Sigma, K tack (A <-> E) and (B -> F)  &                     (in) \
   7. & Sigma, K tack A <-> E                 &               (6, and -) \
   8. & Sigma, K tack A -> E                  &               (7, <-> -) \
   9. & Sigma, K tack not E -> not A          &            (8, "Contr.") \
  10. & Sigma, K tack not A                   &             (4, 9, -> -) \
  11. & Sigma, K tack B -> F                  &               (6, and -) \
  12. & Sigma, K tack not F -> not B          &           (11, "Contr.") \
  13. & Sigma, K tack not B                   &            (5, 12, -> -) \
  14. & Sigma, K tack not A and not B         &          (10, 13, and +) \
  15. & Sigma, K tack not (A or B)            & (14, "De Morgan, Repl.") \
  16. & Sigma, K tack (A or B) or (C and D)   &                     (in) \
  17. & Sigma, K tack C and D                 &  (15, 16, "Disj. Syll.") \
  18. & Sigma, K tack C                       &              (17, and -) \
  19. & Sigma, K tack C -> B                  &                     (in) \
  20. & Sigma, K tack B                       &           (18, 19, -> -) \
  21. & Sigma tack not K                      &          (20, 13, not +)
$



\
\
\
\
\
\
\
#v(12pt)
== (b)
#v(12pt)

No, it does not follow. The set ${A_1, A_2, ..., A_n, not C}$ is inconsistent.

*Justification*

1. By definition of tautological consequence, ${A_1, A_2, ..., A_n} models C$ means that every truth valuation $t$ that satisfies all premises $A_1, ..., A_n$ must also satisfy $C$.

2. For the set to be consistent, there must be at least one truth valuation that satisfies every formula in the set simultaneously.

3. If a valuation $t$ satisfies ${A_1, ..., A_n}$, then by the assumption ${A_1, A_2, ..., A_n} models C$, $C$ must evaluate to true

4. However, if $t$ satisfies $C$, then $t$ cannot satisfy $not C$ because $t(not C) = F$. But satisfying $not C$ is required for the set ${A_1, A_2, ..., A_n, not C}$ to be consistent. A valuation cannot satisfy both $C$ and $not C$ simultaneously.

5. Therefore, no truth valuation can satisfy all formulas in ${A_1, A_2, ..., A_n, not C}$ at the same time. Hence, the set is inconsistent.



#pagebreak()

= Question 2

== (a)
== (b)


#pagebreak()

= Question 3


#v(12pt)
== (a)
#v(12pt)

- Premise 1: $not N arrow L$
  - Clause: $N or L$

- Premise 2: $N arrow (not S and not J)$
  - Clauses: $not N or not S$, $not N or not J$

- Premise 3: $not S arrow T$
  - Clause: $S or T$

- Premise 4: $L arrow (not T and not M)$
  - Clauses: $not L or not T$, $not L or not M$

- Premise 5: $S arrow not J$
  - Clause: $not S or not J$

- Premise 6: $not M arrow J$
  - Clause: $M or J$

- Negation of Conclusion: $not (T and M)$
  - Clause: $not T or not M$

#v(12pt)
== (b)
#v(12pt)

#table(
  columns: (auto, 1fr, 2fr, 2fr),
  stroke: none,
  align: (left, left, left, left),
  [1.], [$N or L$], [Premise], [],
  [2.], [$not N or not S$], [Premise], [],
  [3.], [$not N or not J$], [Premise], [],
  [4.], [$S or T$], [Premise], [],
  [5.], [$not L or not T$], [Premise], [],
  [6.], [$not L or not M$], [Premise], [],
  [7.], [$not S or not J$], [Premise], [],
  [8.], [$M or J$], [Premise], [],
  [9.], [$not T or not M$], [Negation of conclusion], [$Sigma = {9}$],
  [10.], [$not T or J$], [Resolvent of 9, 8], [$Sigma = {9, 10}$],
  [11.], [$S or J$], [Resolvent of 10, 4], [$Sigma = {9, 10, 11}$],
  [12.], [$not J$], [Resolvent of 11, 7], [$Sigma = {9, 10, 11, 12}$],
  [13.], [$not T$], [Resolvent of 10, 12], [$Sigma = {9, 10, 11, 12, 13}$],
  [14.], [$S$], [Resolvent of 13, 4], [$Sigma = {9, dots, 14}$],
  [15.], [$not N$], [Resolvent of 14, 2], [$Sigma = {9, dots, 15}$],
  [16.], [$L$], [Resolvent of 15, 1], [$Sigma = {9, dots, 16}$],
  [17.], [$not M$], [Resolvent of 16, 6], [$Sigma = {9, dots, 17}$],
  [18.], [$J$], [Resolvent of 17, 8], [$Sigma = {9, dots, 18}$],
  [19.], [$bot$], [Resolvent of 18, 12], [$Sigma = {9, dots, 19}$],
)

#v(12pt)
== (c)
#v(12pt)

The resolution procedure with the set-of-support strategy successfully derived the empty clause (contradiction $square$) from the premises and the negation of the conclusion. Because resolution refutation is sound and refutation complete, deriving $square$ shows that the premise clauses along with the negated conclusion form an unsatisfiable set. This proves that no truth assignment can make all premises true while making the conclusion false; therefore, the conclusion is a tautological consequence of the premises, and the argument is valid.

#pagebreak()

= Question 4

#v(12pt)
== (a)
#v(12pt)
$
  S_1 =
  {P, not Q, not R, S, not T}, {not Q}, {P, not R, not S}, {Q, R, not S}, {P, not Q, R, S, not T}, {not P, not Q, not S, not T}, \
  {P, not Q, R, not T}, {Q, not R, S, T}, {not P, S}, {P, not Q, R, S}, {P, not Q, T}
$
#v(12pt)

*Elim P*

$
  T_1 =
  {P, not Q, not R, S, not T}^1, {P, not R, not S}^2, {P, not Q, R, S, not T}^3,
  {not P, not Q, not S, not T}^4, {P, not Q, R, not T}^5, \ {not P, S}^6, {P, not Q, R, S}^7, {P, not Q, T}^8
$

$
  U_1 =
  {not Q, not R, S, not T}^(1,6), {not Q, not R, not S, not T}^(2,4), {not Q, R, S, not T}^(3,6), {not Q, R, not S, not T}^(4,5), {not Q, R, S, not T}^(5,6), \
  {not Q, R, S}^(6,7), \{not Q, S, T}^(6,8)
$

$
  S_2 = (S_1 - T_1) union U_1 = {not Q}, {Q, R, not S}, {Q, not R, S, T}, {not Q, not R, S, not T}, {not Q, not R, not S, not T}, \
  {not Q, R, S, not T}, {not Q, R, not S, not T}, {not Q, R, S}, {not Q, S, T}
$
#v(12pt)


*Elim Q*

$
  T_2 =
  {not Q}^1, {Q, R, not S}^2, {Q, not R, S, T}^3, {not Q, not R, S, not T}^4, {not Q, not R, not S, not T}^5, {not Q, R, S, not T}^6,\ {not Q, R, not S, not T}^7, \{not Q, R, S}^8, {not Q, S, T}^9
$

$
  U_2 =
  {R, not S}^(1,2), {not R, S, T}^(1,3), {R, not S, not T}^(2,7), {not R, S, not T}^(3,4),{not R, S, T}^(3,9)
$

$
  S_3 = (S_2 - T_2) union U_2 =
  {R, not S}, {not R, S, T}, {R, not S, not T}, {not R, S, not T}
$
#v(12pt)

*Elim R*

$
  T_3 =
  {R, not S}^1, {not R, S, T}^2, {R, not S, not T}^3, {not R, S, not T}^4
$

$ U_3 = emptyset $

$ S_4 = (S_3 - T_3) union U_3 = emptyset $

#v(12pt)
== (b)
#v(12pt)

In resolution refutation, an argument is valid if and only if the union of its premises and the negation of its conclusion is unsatisfiable (resolves to the empty clause $square$).
Here, the DPP finished with $S_4 = emptyset$ without deriving $square$, proving that the clause set is satisfiable. This means there is a truth assignment in which all original premises evaluate to true while the conclusion evaluates to false, providing a counterexample that renders the argument invalid.

#pagebreak()

= Question 5

== (a)
#v(12pt)
a1. $forall x (T(x) arrow P(x))$

a2. $exists x (T(x) and A(x))$

a3. $forall x (G(x) arrow T(x))$

a4. $exists x (T(x) and exists y (W(y) and E(x, y)))$

a5. $exists x (T(x) and forall y (E(x, y) arrow W(y)))$

#v(12pt)
== (b)
#v(12pt)
b1. $exists x (P(x) and Q(x))$

b2. $forall x (Q(x) arrow 1 < x)$

b3. $forall x ((Q(x) and P(x)) arrow x < 3)$

b4. $forall x (P(x) arrow not (x < 3))$

b5. $forall x P(x)$
