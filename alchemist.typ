#import "@preview/alchemist:0.1.3": *

#skeletize({
molecule(name: "A", "A")
  single()
  molecule("B")
  branch({
    single(angle: 1)
    molecule(
      "W",
      links: (
        "A": double(stroke: red),
      ),
    )
    single()
    molecule(name: "X", "X")
  })
  branch({
    single(angle: -1)
    molecule("Y")
    single()
    molecule(
      name: "Z",
      "Z",
      links: (
        "X": single(stroke: black + 3pt),
      ),
    )
  })
  single()
  molecule(
    "C",
    links: (
      "X": cram-filled-left(fill: blue),
      "Z": single(),
    ),
  )
})
