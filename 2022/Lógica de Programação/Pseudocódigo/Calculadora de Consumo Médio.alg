algoritmo "Calculadora de Consumo Médio"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professora   : Elaine
// Descrição   : Calcula o consumo médio de um automóvel em Km/L
// Autor : Arthur de Oliveira Nero e Daniela Mendonça
// Data : 03/03/2022
var
   cm, dp, cc: Real
inicio
   EscrevaL(" ---------- CALCULADORA DE CONSUMO MÉDIO ---------- ")
   EscrevaL("----------------------------------------------------")
   EscrevaL(" ")
   Escreva("Informe a distância total percorrida (Km): ")
   Leia(dp)
   EscrevaL(" ")
   EscrevaL("Informe o volume de combustível consumido para percorrer a dis-")
   Escreva("tância acima informada (L): ")
   Leia(cc)
   LimpaTela
   cm <- dp/cc
   Escreva("O Consumo Médio do Automóvel foi de:", cm, " Km/L.")
fimalgoritmo
