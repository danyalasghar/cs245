#set page(
  paper: "us-letter",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 2.5cm, right: 2.5cm),
  footer: context {
    line(length: 100%, stroke: 0.5pt + luma(180))
    text(9pt, fill: luma(100))[
      Page #counter(page).display()
    ]
  },
)

#set text(
  font: "New Computer Modern",
  size: 11pt,
  lang: "en",
)

#set par(justify: true, leading: 0.65em)

= Question 4

== (a)
\
$ S_1 = & {P, not Q, not R, S, not T}, {not Q}, {P, not R, not S}, {Q, R, not S}, \
  & {P, not Q, R, S, not T}, {not P, not Q, not S, not T}, {P, not Q, R, not T}, \
  & {Q, not R, S, T}, {not P, S}, {P, not Q, R, S}, {P, not Q, T} $
#v(12pt)

*Elim P*

$ T_1 = & {P, not Q, not R, S, not T}^1, {P, not R, not S}^2, {P, not Q, R, S, not T}^3, {not P, not Q, not S, not T}^4, \
  & {P, not Q, R, not T}^5, {not P, S}^6, {P, not Q, R, S}^7, {P, not Q, T}^8 $

$ U_1 = & {not Q, not R, S, not T}^(1,6), {not Q, not R, not S, not T}^(2,4), {not Q, R, S, not T}^(3,6), \
  & {not Q, R, not S, not T}^(4,5), {not Q, R, S, not T}^(5,6), {not Q, R, S}^(6,7), {not Q, S, T}^(6,8) $

$ S_2 = (S_1 - T_1) union U_1 = & {not Q}, {Q, R, not S}, {Q, not R, S, T}, {not Q, not R, S, not T}, \
  & {not Q, not R, not S, not T}, {not Q, R, S, not T}, {not Q, R, not S, not T}, \
  & {not Q, R, S}, {not Q, S, T} $
#v(12pt)


*Elim Q*

$ T_2 = & {not Q}^1, {Q, R, not S}^2, {Q, not R, S, T}^3, {not Q, not R, S, not T}^4, \
  & {not Q, not R, not S, not T}^5, {not Q, R, S, not T}^6, {not Q, R, not S, not T}^7, {not Q, R, S}^8, {not Q, S, T}^9 $

$ U_2 = {R, not S}^(1,2), {not R, S, T}^(1,3), {R, not S, not T}^(2,7), {not R, S, not T}^(3,4), {not R, S, T}^(3,9) $

$ S_3 = (S_2 - T_2) union U_2 = {R, not S}, {not R, S, T}, {R, not S, not T}, {not R, S, not T} $
#v(12pt)

*Elim R*

$ T_3 = {R, not S}^1, {not R, S, T}^2, {R, not S, not T}^3, {not R, S, not T}^4 $

$ U_3 = emptyset $

$ S_4 = (S_3 - T_3) union U_3 = emptyset $

\
== (b)
== (c)

