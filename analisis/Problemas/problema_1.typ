// ----PAGINA-----

#import "@preview/ctheorems:1.1.3": *
#set heading(numbering: "1.")
#set heading(numbering: "(I)")
#show heading: it => [
  #set align(center)
  #set text(font: "Notas de teoría de grupos")
  #emph(it.body)
  #counter(heading).display(
    it.numbering,
  )
]
#show sym.emptyset: set text(font: "Fira Sans")
#set page("a4", width: 16cm, height: 25cm, header: context {
  if counter(page).get().first() > 1 [
    _Mario Alberto Claudio Hernandez_
    #h(1fr)
    M2Alberto
  ]
})
#set par(justify: true)
//------TEOREMAS-----
#show: thmrules.with(qed-symbol: $square$)
#let teorema = thmbox("teorema", "Teorema")
#let corolario = thmplain(
  "corolario",
  "Corolario",
  titlefmt: strong,
)
#let proposicion = thmbox("proposicion", "Proposición", inset: (x: 1.2em, top: 1em))

#let definicion = thmbox("definicion", "Definición", inset: (x: 0em, top: 1em))

#let ejemplo = thmplain("ejemplo", "Ejemplo")
#let problema = thmplain("problema", "Problema", inset: (x: 0em, top: 1em))
#let demostracion = thmproof("demostracion", "Demostración")
#let solucion = thmproof("solucion", "Solución", inset: (x: 0em, top: 1em))


