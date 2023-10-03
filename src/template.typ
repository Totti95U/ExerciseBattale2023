// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(title: "", abstract: [], authors: (), body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(numbering: "1", number-align: center)
  set text(font: "Noto Serif CJK JP", lang: "ja")
  
  show link: underline
  show link: set text(rgb("#0000ee"))
  // set heading(numbering: )

  // Title row.
  align(center)[
    #block(text(weight: 700, 1.75em, title))
  ]

  // Main body.
  set par(justify: true)

  body
}

#let c_exer = counter("exercise")

#let contblock(name, conts) = {
  if conts.len() == 1 [
    #block(width: 100%)[
      #text(11.5pt)[*#name*]
      #move(dy: -7pt)[
        #block(width: 100%)[#conts.at(0)]
      ]
    ]
  ] else [
    #block(width: 100%)[
      #text(11.5pt)[*#name (#conts.at(0))*]
      #move(dy: -7pt)[
        #block(width: 100%)[#conts.at(1)]
      ]
    ]
  ]
}

#let definition(..conts) = contblock("定義", conts.pos())
#let exercise(dif, ..conts) = {
  c_exer.step()
  contblock("問題 " + c_exer.display() + " (難易度: " + str(dif) + ")", conts.pos())
}
