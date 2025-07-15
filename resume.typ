#let cv(author: "", contacts: (), body) = {
  set document(author: author, title: author)
  set text(font: "Linux Libertine", lang: "en")
  
  show heading: it => [
    #pad(bottom: -10pt, [#smallcaps(it.body)])
    #line(length: 100%, stroke: 1pt)
  ]

  // Author
  align(center)[
    #block(text(weight: 700, 1.75em, author))
  ]

  // Contact information.
  pad(
    top: 0.5em,
    bottom: 0.5em,
    x: 2em,
    align(center)[
      #grid(
        columns: 4,
        gutter: 1em,
        ..contacts
      )
    ],
  )

  // Main body.
  set par(justify: true)

  body
}

#let icon(name, baseline: 1.5pt) = {
  box(
    baseline: baseline,
    height: 10pt,
    image(name)
  )
}

#let exp(place, title, location, time, details) = {
  pad(
    bottom: 10%,
    grid(
      columns: (auto, 1fr),
      align(left)[
        *#place* \
        #emph[#title]
      ],
      align(right)[
        #location \
        #time
      ]
    )
  )
  details
}

