algoritmo "Calculadora de Consumo M�dio"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professora   : Elaine
// Descri��o   : Calcula o consumo m�dio de um autom�vel em Km/L
// Autor : Arthur de Oliveira Nero e Daniela Mendon�a
// Data : 03/03/2022
var
   cm, dp, cc: Real
inicio
   EscrevaL(" ---------- CALCULADORA DE CONSUMO M�DIO ---------- ")
   EscrevaL("----------------------------------------------------")
   EscrevaL(" ")
   Escreva("Informe a dist�ncia total percorrida (Km): ")
   Leia(dp)
   EscrevaL(" ")
   EscrevaL("Informe o volume de combust�vel consumido para percorrer a dis-")
   Escreva("t�ncia acima informada (L): ")
   Leia(cc)
   LimpaTela
   cm <- dp/cc
   Escreva("O Consumo M�dio do Autom�vel foi de:", cm, " Km/L.")
fimalgoritmo
