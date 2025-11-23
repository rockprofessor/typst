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
