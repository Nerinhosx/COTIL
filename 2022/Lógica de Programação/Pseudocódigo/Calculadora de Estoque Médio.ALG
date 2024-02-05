Algoritmo "Estoque Médio"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professora   : Elaine
// Descrição   : Calcula o estoque médio disponível para determinado produto
// Autores:  Arthur de Oliveira Nero e Daniela Mendonça
// Data:  03/03/2022
Var
   qma, qmi: Inteiro
   em: Real
Inicio
   EscrevaL("----------------- CALCULADORA DE ESTOQUE MÉDIO -----------------")
   EscrevaL(" ")
   Escreva("Informe a quantidade mínima da peça X: ")
   Leia(qmi)
   EscrevaL(" ")
   Escreva("Informe a quantidade máxima da peça X: ")
   Leia(qma)
   em <- (qmi + qma)/2
   LimpaTela
   EscrevaL("----------------- CALCULADORA DE ESTOQUE MÉDIO -----------------")
   EscrevaL(" ")
   EscrevaL("O Estoque Médio da peça X é:", em)
   Escreva("-----------------------------------------------------------------")
Fimalgoritmo
