#import "@preview/cetz:0.3.1"
#import "@preview/cetz-plot:0.1.0": *

#cetz.canvas({
    import cetz.draw: *
    let style = (stroke: black, fill: rgb(0, 0, 200, 75))

    let f1(x) = calc.sin(x)
    let nonum(eq) = math.equation(block: true, numbering: none, eq)
    let fn = (
      (blue, nonum($ "f(x)=sin(x)" $),     x => calc.sin(x)),
      (orange, nonum($ "f(x)=cos(x)" $), x => calc.cos(x)),
    )
    // Set-up a thin axis style
    set-style(axes: (stroke: 1pt, tick: (stroke: 1pt), ),
              legend: (stroke: none, orientation: ttb, item: (spacing: .3), scale: 80%))

    plot.plot(size: (12, 8),
      x-label: "x",
      y-label: "f(x)",
      x-tick-step: 1,
      axis-style: "school-book",
      y-tick-step: 0.5, y-min: -1, y-max: 1,
      legend: "inner-north",
      {
        let domain = (0, 6)

        for ((paint, title, f)) in fn {
          plot.add(f, style: (stroke: (paint: paint)), domain: domain, label: title)
        }
      })
  })
