Algoritmo "Calculadora de Quadrados"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professora   : Elaine
// Descri��o   : Calcula a soma dos quadrados de quatro n�meros informados pelo usu�rio
// Autores    : Arthur de Oliveira Nero e Daniela Mendon�a
// Data atual  : 03/03/2022
Var
   n1, n2, n3, n4, n1q, n2q, n3q, n4q, sq: Real
Inicio
   Escreva("Informe um valor: ")
   Leia(n1)
   LimpaTela
   Escreva("Informe outro valor: ")
   Leia(n2)
   LimpaTela
   Escreva("Informe outro valor: ")
   Leia(n3)
   LimpaTela
   Escreva("Informe o �ltimo valor: ")
   Leia(n4)
   LimpaTela
   n1q <- n1 * n1
   n2q <- n2 * n2
   n3q <- n3 * n3
   n4q <- n4 * n4
   sq <- n1q + n2q + n3q + n4q
   EscrevaL("O valor", n1, "� �:", n1q)
   EscrevaL("O valor", n2, "� �:", n2q)
   EscrevaL("O valor", n3, "� �:", n3q)
   EscrevaL("O valor", n4, "� �:", n4q)
   EscrevaL("E o resultado da soma dos quadrados de todos os valores �:", sq)
Fimalgoritmo