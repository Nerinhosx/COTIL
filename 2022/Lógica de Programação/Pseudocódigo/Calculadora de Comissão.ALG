Algoritmo "Calculadora de Comiss�o"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professora   : Elaine
// Descri��o   : Calcula o valor da comiss�o de determinado vendedor a partir de um c�lculo de porcentagem efetuado com base no valor do lucro do vendedor
// Autor(a)    : Daniela Mendon�a e Arthur de Oliveira Nero
// Data atual  : 03/03/2022
Var
   cv: Caractere
   cp, qv: Inteiro
   pu, lv, pc: Real
Inicio
   Escreva("Informe o c�digo do vendedor: ")
   Leia(cv)
   EscrevaL(" ")
   Escreva("Informe o c�digo da pe�a que o vendedor ", cv, " vende: ")
   Leia(cp)
   EscrevaL(" ")
   Escreva("Informe o pre�o unit�rio da pe�a de c�digo", cp, ": ")
   Leia(pu)
   EscrevaL(" ")
   Escreva("Informe a quantidade de pe�as de c�digo", cp, " vendidas: ")
   Leia(qv)
   LimpaTela
   lv <- pu * qv
   pc <- (lv / 100) * 5
   Escreva("O valor da comiss�o do vendedor ", cv, " �:", pc)
Fimalgoritmo
