Algoritmo "C�lculoM�diaEscolar"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Elaine
// Descri��o   : Calcula a m�dia a partir de valores com pesos informados pelo usu�rio
// Autor(a)    : Vitor Henrique Silva Nascimento - 202247; Arthur de Oliveira Nero - 202227
// Data atual  : 10/03/2022
Var
   ra: Caractere
   p1, p2, p3, m: Real
Inicio
   Escreva("Informe o RA do aluno: ")
   Leia(ra)
   Escreva("Informe a 1� nota: ")
   Leia(p1)
   Escreva("Informe a 2� nota: ")
   Leia(p2)
   Escreva("Informe a 3� nota: ")
   Leia(p3)
   m <- (p1 * 4 + p2 * 5 + p3 * 1)/ 10
   Escreva("A nota do aluno cujo RA � ", ra, " �:", m)
Fimalgoritmo