algoritmo "Inversor de Valores"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professora   : Elaine
// Descrição   : Troca os valores das variáveis A e B
// Autor(a)    : Daniela Mendonça e Arthur de Oliveira Nero
// Data atual  : 03/03/2022
var
   A, B, C: Real
inicio
   EscrevaL(" ---- INVERSOR DE VALORES INTERNOS ---- ")
   EscrevaL(" ")
   Escreva("Informe um valor: ")
   Leia(A)
   Escreva("Informe outro valor: ")
   Leia(B)
   C <- A
   A <- B
   B <- C
   EscrevaL("Invertemos os valores:")
   EscrevaL("A =", A)
   Escreva("B =", B)
fimalgoritmo
