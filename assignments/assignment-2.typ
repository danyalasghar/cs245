#let modelsEquiv = math.class("relation", $tack.l.double #h(-0.8em) tack.r.double$)
#set page(
  paper: "us-letter",
  margin: (x: 2cm, y: 2.5cm),
)
#set text(font: "New Computer Modern Math", size: 12pt)
#set par(justify: true)


#align(center + horizon)[
  #text(24pt, weight: "bold")[CS 245 - Assignment 2] \
  #v(8pt)
  #text(20pt, fill: luma(90))[Danyal Asghar] \
  #v(12pt)
  #line(length: 40%, stroke: 0.5pt + luma(180))
  #v(12pt)
  #text(14pt, weight: "medium")[#datetime.today().display("[Month repr:long] [Day], [Year]")] \
  #v(4pt)
]

#pagebreak()

#set page(
  numbering: "1",

)
#counter(page).update(1)

// ==========================================
// Question 1
// ==========================================
== Question 1
#v(2em)

=== (Q1-a)
#v(1em)

The argument is *answer*.

#v(1em)

*Proof:*

#pagebreak()

=== (Q1-b)
#v(1em)

The argument is *answer*.

#v(1em)

*Formalization:*
- Premise 1: 
- Premise 2: 
- Premise 3: 
- Conclusion: 

#v(1em)

*Claim:* 

#v(1em)

*Proof:*

#pagebreak()

=== (Q1-c)
#v(1em)

Something

#v(1em)

*Base Case*

#v(1em)

*Inductive Step*

#pagebreak()

=== (Q1-d)
#v(1em)

*Claim:* 

#v(1em)

*Proof:*

#pagebreak()

// ==========================================
// Question 2
// ==========================================
== Question 2
#v(2em)

=== (Q2-a)
#v(1em)

*Truth Table:*

#v(1em)

*Minterms:*

#v(1em)

*Final DNF:*

#pagebreak()

=== (Q2-b)
#v(1em)

*Derivation / Proof:*

#v(1em)

*Final CNF:*

#pagebreak()

// ==========================================
// Question 3
// ==========================================
== Question 3
#v(2em)

=== (Q3-a)
#v(1em)

*Claim:* 

#v(1em)

*Proof:*

#pagebreak()

=== (Q3-b)
#v(1em)

*Claim:* 

#v(1em)

*Proof:*

#pagebreak()

// ==========================================
// Question 4
// ==========================================
== Question 4
#v(2em)

=== (Q4-a)
#v(1em)

*Circuit A Design & Description:*

#v(1em)

*Circuit Diagram:*

#pagebreak()

=== (Q4-b)
#v(1em)

*Part (i)*

The truth table is as follows:
#table(
  columns: (5%, 5%, 5%, 5%, 5%, 5%, 5%, 5%),
  stroke: none,

  table.vline(x: 4, stroke: 1pt),

  table.header(
    [$x_1$], [$x_0$], [$y_1$], [$y_0$],
    [$p_3$], [$p_2$], [$p_1$], [$p_0$],
  ),
  table.hline(stroke: 1pt),

  [0],  [0],  [0],  [0],  [0],  [0],  [0],  [0],
  [1],  [0],  [0],  [0],  [0],  [0],  [0],  [0],
  [0],  [1],  [0],  [0],  [0],  [0],  [0],  [0],
  [1],  [1],  [0],  [0],  [0],  [0],  [0],  [0],
  [0],  [0],  [1],  [0],  [0],  [0],  [0],  [0],
  [1],  [0],  [1],  [0],  [0],  [1],  [0],  [0],
  [0],  [1],  [1],  [0],  [0],  [0],  [1],  [0],
  [1],  [1],  [1],  [0],  [0],  [1],  [1],  [0],
  [0],  [0],  [0],  [1],  [0],  [0],  [0],  [0],
  [1],  [0],  [0],  [1],  [0],  [0],  [1],  [0],
  [0],  [1],  [0],  [1],  [0],  [0],  [0],  [1],
  [1],  [1],  [0],  [1],  [0],  [0],  [1],  [1],
  [0],  [0],  [1],  [1],  [0],  [0],  [0],  [0],
  [1],  [0],  [1],  [1],  [0],  [1],  [1],  [0],
  [0],  [1],  [1],  [1],  [0],  [0],  [1],  [1],
  [1],  [1],  [1],  [1],  [1],  [0],  [0],  [1],
)


#v(1em)

*Part (ii)*

$p_0 med modelsEquiv$  

$p_1$

$p_2$

$p_3$

#v(1em)

*Part (iii)*

$p_0$

$p_1$

$p_2$

$p_3$


#pagebreak()

=== (Q4-c)
#v(1em)

*Combined Circuit Design & Diagram:*

#pagebreak()

// ==========================================
// Question 5
// ==========================================
== Question 5
#v(2em)

=== (Q5-a)
#v(1em)

*Fragment 1 Execution Conditions:*
- Block $P_1$: 
- Block $P_2$: 
- Block $P_3$: 
- Block $P_4$: 

#pagebreak()

=== (Q5-b)
#v(1em)

*Fragment 2 Execution Conditions:*
- Block $P_1$: 
- Block $P_2$: 
- Block $P_4$: 

#pagebreak()

=== (Q5-c)
#v(1em)

*Equivalence Proofs:*

#v(1em)

- *Proof for Block $P_1$:*

#v(1em)

- *Proof for Block $P_2$:*

#v(1em)

- *Proof for Dead Code ($P_3$):*

#v(1em)

- *Proof for Block $P_4$:*
