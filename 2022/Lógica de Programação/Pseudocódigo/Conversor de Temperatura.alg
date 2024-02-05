algoritmo "Conversor de Temperatura"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professora   : Elaine
// Descrição   : Converte para Fahrenheit uma temperatura em graus Centígrados informada pelo usuário
// Autor : Daniela Mendonça e Arthur de Oliveira Nero
// Data : 03/03/2022
var
   tc, tf: Real
inicio
   EscrevaL(" ------ CONVERSOR DE TEMPERATURA  ------ ")
   EscrevaL("       (Centígrados -> Fahrenheit)       ")
   EscrevaL("-----------------------------------------")
   Escreva("Informe uma temperatura: ")
   Leia(tc)
   LimpaTela
   tf <- (9 * tc + 160)/ 5
   EscrevaL(" ------ CONVERSOR DE TEMPERATURA ------ ")
   EscrevaL("       (Centígrados -> Fahrenheit)       ")
   EscrevaL("-----------------------------------------")
   EscrevaL("Temperatura informada:", tc, "ºC.")
   Escreva("Temperatura convertida para Fahrenheit:", tf, "ºF.")
fimalgoritmo
