Algoritmo "Calculadora de Comissão"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professora   : Elaine
// Descrição   : Calcula o valor da comissão de determinado vendedor a partir de um cálculo de porcentagem efetuado com base no valor do lucro do vendedor
// Autor(a)    : Daniela Mendonça e Arthur de Oliveira Nero
// Data atual  : 03/03/2022
Var
   cv: Caractere
   cp, qv: Inteiro
   pu, lv, pc: Real
Inicio
   Escreva("Informe o código do vendedor: ")
   Leia(cv)
   EscrevaL(" ")
   Escreva("Informe o código da peça que o vendedor ", cv, " vende: ")
   Leia(cp)
   EscrevaL(" ")
   Escreva("Informe o preço unitário da peça de código", cp, ": ")
   Leia(pu)
   EscrevaL(" ")
   Escreva("Informe a quantidade de peças de código", cp, " vendidas: ")
   Leia(qv)
   LimpaTela
   lv <- pu * qv
   pc <- (lv / 100) * 5
   Escreva("O valor da comissão do vendedor ", cv, " é:", pc)
Fimalgoritmo
