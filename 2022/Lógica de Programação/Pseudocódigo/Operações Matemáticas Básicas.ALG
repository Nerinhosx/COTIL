Algoritmo "4ºFantástico"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professora   : Elaine
// Descrição   : Efetua as 4 operações matemáticas básicas com 2 valores informados pelo usuário
// Autor(a)    : Vitor Henrique Silva Nascimento - 202247 ; Arthur de Oliveira Nero - 202227
// Data atual  : 10/03/2022
Var
   a, b, so, su, m, d: Real
Inicio
   Escreva("Informe o 1º valor: ")
   Leia(a)
   Escreva("Informe o 2º valor: ")
   Leia(b)
   so <- a + b
   su <- a - b
   m <- a*b
   d <- a/b
   EscrevaL("O resultado das 4 operações matemáticas básicas, efetuadas com os")
   EscrevaL("valores acima informados é:")
   EscrevaL(" ")
   EscrevaL("Soma:", so)
   EscrevaL("Subtração:", su)
   EscrevaL("Multiplicação:", m)
   Escreva("Divisão:", d)
Fimalgoritmo