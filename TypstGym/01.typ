#set heading(numbering: "1.1.")

Das folgende Dokument soll eine Einführung in `Typst` sein.

= Markup Language

== Markup

Das ist die erste Zeile.

Zweite Zeile als neuer Paragraph wegen der Leerzeile darüber.

Sonderzeichen sind kein Problem: ßçœ̃ɛ̃ø∀αβёыა… Solange die Schriftart die Zeichen
unterstützt.

== Comments and Code Blocks

// Das ist ein Kommentar, sondern wird im Text ignoriert.

/*
Für mehrzeilige Kommentare
können auch diese
so markiert werden.
*/

```python
Das ist ein Code-Block:

    for i in range(10):
        print(i)
```
== Lists

- Milch
- Obst
    - Bananen
    - Äpfel

+ Eintrag
    + Untereintrag
    + Nach mehr


== Math

$ arrow(F)=m dot arrow(a) $
$ F_G=G (m_1 m_2)/(r^2) $

== Functions

#lorem(50)

== More Functions
#underline( "Dieser Text ist unterstrichen." )

#text(orange, "Dieser Text ist orange.")

#text(size: 20pt, "Dieser Text ist 20pt groß.")

#strong("Dieser Text ist fett.")

#emph("Dieser Text ist kursiv.")

Markup ist einfach nur eine Abkürzung für dahinterliegende Funktionen.


== How to call Functions

#link("https://typst.app")[Typst Homepage Link]

== Function Arguments

Es gibt zwei Typen von Funktionsargumenten:
+ *Postitional.* Einfach mit Komma getrennt hintereinander.
    - \#lorem(50)
    - \#underline("Text")
+ *Named.* Unter Angabe des Namens und einem Doppelpunkt.
    - \#quote(attribution: "Einstein") 

== Content

Alles was man einfach so tippt, wird als *content* interpretiert.

#[
    Aber man kann auch explizit *content* unter \#[... ] angeben.
]

== Markup and Code Modes

#rect(width: 2.5cm, text(red)[hello *world*]) // [..] switch zu Markup innerhalb der Funktion.

== Passing Content into Functions

Was sollen die Eckigen Klammern nach Funktionen?

Wenn man nach einer Funktion in eckige Klammern \[...\] Content angibt, wird
dieser Content an die Funktion als *positional* Argument übergeben.

#quote(block: true)[
    Das ist ein #text(red)[_Zitat_].
    Dadurch kann man alles mögliche als Argument übergeben.
]

== Passing Content Part 2

#text(red)[red text]

#text([red text], red)

#text("red text", red)

= Basic Style

== Set Rule

Nur wirksam für alles folgende.  

\#set page(width: 15cm, margin: (left: 9cm, right: 1.5cm))

\#set par(justify: true) // Alle folgenden Paragraphen -> Blocksatz.
#set par(justify: true)

#lorem(30)


Set Regeln können overriden werden.

\#par(justify: false) // Nur dieser Paragraph -> Flattersatz.
#par(justify: false)[
    #lorem(30)
]

#lorem(30)

== A bit about length units

Es gibt unterschiedliche absolute Längeneinheiten in Typst.

#align(center)[
    #table(
        align: center,
        columns: 3,
        [Einheit],   [Abkürzung], [Beschreibung],
        [Punkt],     [pt       ], [1/72 Zoll],
        [Zoll],      [in       ], [2.54 cm],
        [Zentimeter],[cm       ], [Zentimeter],
        [Millimeter],[mm       ], [Millimeter]
    )
]

== Setting something else

#set quote(block: true, attribution: [Albert Einstein])

#quote[
    Phantasie ist wichtiger als Wissen, denn Wissen ist begrenzt.
]

== Opinionated defaults

#set par(justify: true)
#set list(indent: 1em)
#set enum(indent: 1em)
#set page(numbering: "1")

- List Item 1
- List Item 2

+ Enum Item 1
+ Enum Item 2

== Numbering

#set heading(numbering: "I.1:")

= First level Heading
= Another First level Heading
== Second
=== Third

#set heading(numbering: "1.1.")

== The Show Rule

#show "Be careful": strong[Play]

This is a very powerful thing, sometimes even too powerful.
Be careful with it.

#show "it is holding me hostage": text(green)[I am fine]

Wait, what? I told you "Be careful", not "Play!".

Help, it is holding me hostage.


== Now a bit more serious






