Algoritmo "Estoque M�dio"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professora   : Elaine
// Descri��o   : Calcula o estoque m�dio dispon�vel para determinado produto
// Autores:  Arthur de Oliveira Nero e Daniela Mendon�a
// Data:  03/03/2022
Var
   qma, qmi: Inteiro
   em: Real
Inicio
   EscrevaL("----------------- CALCULADORA DE ESTOQUE M�DIO -----------------")
   EscrevaL(" ")
   Escreva("Informe a quantidade m�nima da pe�a X: ")
   Leia(qmi)
   EscrevaL(" ")
   Escreva("Informe a quantidade m�xima da pe�a X: ")
   Leia(qma)
   em <- (qmi + qma)/2
   LimpaTela
   EscrevaL("----------------- CALCULADORA DE ESTOQUE M�DIO -----------------")
   EscrevaL(" ")
   EscrevaL("O Estoque M�dio da pe�a X �:", em)
   Escreva("-----------------------------------------------------------------")
Fimalgoritmo
