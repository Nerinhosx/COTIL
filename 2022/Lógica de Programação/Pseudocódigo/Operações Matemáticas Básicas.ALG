Algoritmo "4�Fant�stico"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professora   : Elaine
// Descri��o   : Efetua as 4 opera��es matem�ticas b�sicas com 2 valores informados pelo usu�rio
// Autor(a)    : Vitor Henrique Silva Nascimento - 202247 ; Arthur de Oliveira Nero - 202227
// Data atual  : 10/03/2022
Var
   a, b, so, su, m, d: Real
Inicio
   Escreva("Informe o 1� valor: ")
   Leia(a)
   Escreva("Informe o 2� valor: ")
   Leia(b)
   so <- a + b
   su <- a - b
   m <- a*b
   d <- a/b
   EscrevaL("O resultado das 4 opera��es matem�ticas b�sicas, efetuadas com os")
   EscrevaL("valores acima informados �:")
   EscrevaL(" ")
   EscrevaL("Soma:", so)
   EscrevaL("Subtra��o:", su)
   EscrevaL("Multiplica��o:", m)
   Escreva("Divis�o:", d)
Fimalgoritmo