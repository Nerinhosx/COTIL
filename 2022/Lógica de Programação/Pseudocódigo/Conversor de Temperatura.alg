algoritmo "Conversor de Temperatura"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professora   : Elaine
// Descri��o   : Converte para Fahrenheit uma temperatura em graus Cent�grados informada pelo usu�rio
// Autor : Daniela Mendon�a e Arthur de Oliveira Nero
// Data : 03/03/2022
var
   tc, tf: Real
inicio
   EscrevaL(" ------ CONVERSOR DE TEMPERATURA  ------ ")
   EscrevaL("       (Cent�grados -> Fahrenheit)       ")
   EscrevaL("-----------------------------------------")
   Escreva("Informe uma temperatura: ")
   Leia(tc)
   LimpaTela
   tf <- (9 * tc + 160)/ 5
   EscrevaL(" ------ CONVERSOR DE TEMPERATURA ------ ")
   EscrevaL("       (Cent�grados -> Fahrenheit)       ")
   EscrevaL("-----------------------------------------")
   EscrevaL("Temperatura informada:", tc, "�C.")
   Escreva("Temperatura convertida para Fahrenheit:", tf, "�F.")
fimalgoritmo
