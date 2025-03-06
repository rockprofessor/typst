= Überschrift
+ Kapitel A
  - Beispiel
  - Beispiel
+ Kapitel A
\
_kusiver Text_\
*fetter Text*\
`raw text`\
https://www.keimgasse.at\
//ich bin ein Kommentar

#align(center)[#image("picture.png", width: 7cm)]

$
A = pi r^2\
"area" = pi dot "radius"^2\
cal(A) :={ x in RR | x "is natural" }\
#let x = 5
#x < 17\
F = m dot a\
R = "ich bin ein Text in einer Formel" dot s\
x_(1,2)=-p/2 plus.minus sqrt((p²)/4-q)\
integral_a^b f(x)=F(b)-F(a)
$
\

#par(justify: true)[
  = Toller Inhalt
  Das ist ein supertoller Paragraph. Er zeigt, dass man wunderbar Texte schreiben im Blocksatz schreiben kann. Das ist ein supertoller Paragraph der zeigt, dass man das wunderbar kann. Das ist ein supertoller Paragraph der zeigt bla bla bla.Blocksatz
]
\

#set par(
  first-line-indent: 1em,
  spacing: 0.65em,
  justify: true,
)
We proceed by contradiction.
Suppose that there exists a set
of positive integers $a$, $b$, and
$c$ that satisfies the equation
$a^n + b^n = c^n$ for some
integer value of $n > 2$.

Without loss of generality,
let $a$ be the smallest of the
three integers. Then, we ...

#pagebreak()
#table(
  columns: 2,
  [*Amount*], [*Ingredient*],
  [360g], [Baking flour],
  [250g], [Butter (room temp.)],
  [150g], [Brown sugar],
  [100g], [Cane sugar],
  [100g], [70% cocoa chocolate],
  [100g], [35-40% cocoa chocolate],
  [2], [Eggs],
  [Pinch], [Salt],
  [Drizzle], [Vanilla extract],
)
#set text(font: "IBM Plex Sans")

// Medium bold table header.
#show table.cell.where(y: 0): set text(weight: "medium")

// Bold titles.
#show table.cell.where(x: 1): set text(weight: "bold")

// See the strokes section for details on this!
#let frame(stroke) = (x, y) => (
  left: if x > 0 { 0pt } else { stroke },
  right: stroke,
  top: if y < 2 { stroke } else { 0pt },
  bottom: stroke,
)

#set table(
  fill: (rgb("EAF2F5"), none),
  stroke: frame(rgb("21222C")),
)

#table(
  columns: (0.4fr, 1fr, 1fr, 1fr),

  table.header[Month][Title][Author][Genre],
  [January], [The Great Gatsby], [F. Scott Fitzgerald], [Classic],
  [February], [To Kill a Mockingbird], [Harper Lee], [Drama],
  [March], [1984], [George Orwell], [Dystopian],
  [April], [The Catcher in the Rye], [J.D. Salinger], [Coming-of-Age],
)

