// ----PAGINA-----

#import "@preview/ctheorems:1.1.3": *
#set heading(numbering: "1.")
#set heading(numbering: "(I)")
#show heading: it => [
  #set align(center)
  #set text(font: "Notas de ánalisis")
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
    Ánalisis matemático
  ]
})
#set par(justify: true)
//------TEOREMAS-----
#show: thmrules.with(qed-symbol: $square$)
#let teorema = thmbox("teorema", "Teorema", inset: (x: 0em, top: 0em))
#let corolario = thmplain(
  "corolario",
  "Corolario",
  titlefmt: strong,
  inset: (x: 0em, top: 0em),
)
#let proposicion = thmbox("proposicion", "Proposición", inset: (x: 0em, top: 0em))

#let definicion = thmbox("definicion", "Definición", inset: (x: 0em, top: 0em))

#let ejemplo = thmplain("ejemplo", "Ejemplo", inset: (x: 0em, top: 0em))
#let problema = thmplain("problema", "Problema", inset: (x: 0em, top: 0em))
#let demostracion = thmproof("demostracion", "Demostración", inset: (x: 0em, top: 0em))
#let solucion = thmproof("solucion", "Solución", inset: (x: 0em, top: 0em))


= Numeros irracionales

#teorema[Si $n in NN$ y no es un cuadrado perfecto, entonces $sqrt(n)$ es irracional en $RR$.]
#demostracion[Supongamos que $n in NN$ es un racional, esto es que existen $a,b in NN$, tal que $sqrt(n) = a\/b$. Se puede obtener elevando al cuadrado y multiplicando por $b$ en ambos lados que $n b^2 = a^2$. ]

//NO ACABADO LA DEMOSTRACION!

= Cotas superiores y cotas inferiores

#definicion[
  Sea $S subset RR$. Decimos que un número $b in RR$ es una *cota superior* de $S$ si para todo $x in S$ se cumple que $x lt.eq b$. En otras palabras, $b$ acota por arriba a todos los elementos de $S$.
]

Hay dos clases de conjuntos, los que la cota superior se encuentra en el mismo conjunto y los que no.

#ejemplo[Sea $S = [0, 3] subset RR$. La cota superior mínima de $S$ es $3$, y además $3 in S$. Por lo tanto, $S$ tiene una cota superior que pertenece al mismo conjunto; de hecho, es su máximo.
]

#ejemplo[
  Sea $T = (0, 3) subset RR$.
  La cota superior mínima de $T$ es también $3$, pero en este caso $3 in.not T$, pues el intervalo es abierto. Así, $T$ tiene una cota superior, pero esta no pertenece al conjunto.
]
Supongamos que $alpha in S$ es una cota superior, entonces diremos que $alpha$ es el *elemento máximo* de $S$ y lo denotamos por:
$
  max(S) = alpha
$
#definicion[
  Sea $S subset RR$. Decimos que un número $a in RR$ es una *cota inferior* de $S$ si para todo $x in S$ se cumple que $x gt.eq a$. En otras palabras, $a$ acota por abajo a todos los elementos de $S$.
]

Hay dos clases de conjuntos: aquellos cuya cota inferior pertenece al conjunto y aquellos en los que no.

#ejemplo[
  Sea $A = [0, 3] subset RR$.
  La cota inferior mínima de $A$ es $0$, y además $0 in A$.
  Por lo tanto, $A$ tiene una cota inferior que pertenece al mismo conjunto; de hecho, es su *mínimo*.
]

#ejemplo[
  Sea $B = (0, 3) subset RR$.
  La cota inferior mínima de $B$ es también $0$, pero en este caso $0 in.not B$, pues el intervalo es abierto.
  Así, $B$ tiene una cota inferior, pero esta no pertenece al conjunto.
]

Supongamos que $alpha in S$ es una cota inferior de $S$; entonces diremos que $alpha$ es el *elemento mínimo* de $S$, y lo denotamos por:
$
  min(S) = alpha
$

#ejemplo[El conjunto $RR^+ := (0,+infinity)$ no esta acotado superiormente. Además no tiene un elemento $alpha in RR$ tal que, para todo $x in RR^+$ se cumpla que $x lt.eq alpha$. El problema viene practicamente del término infinito, ya que no existe elemento $alpha in RR$ tal que sea superior a todo elemento de $RR^+$. Pero si se encuentra acotado inferiormente, una cota es $0$.]
