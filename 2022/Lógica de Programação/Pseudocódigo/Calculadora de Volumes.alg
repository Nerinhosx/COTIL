algoritmo "Calculadora de Volumes"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professora   : Elaine
// Descri��o   : Calcula o volume de uma lata de �leo a partir de valores (altura e di�metro) obtidos atrav�s de intera��o com o usu�rio
// Autor(a)    : Arthur de Oliveira Nero e Daniela Mendon�a
// Data atual  : 03/03/2022
var
   h, d, r, vol: Real
inicio
   EscrevaL(" --- Calculadora de Volumes --- ")
   EscrevaL("         (Lata de �leo)         ")
   EscrevaL("--------------------------------")
   Escreva("Informe a Altura da lata (cm): ")
   Leia(h)
   Escreva("Informe o valor do Di�metro da lata (cm): ")
   Leia(d)
   r <- d / 2
   vol <- 3.14159 * r * r * h
   LimpaTela
   EscrevaL(" --- Calculadora de Volumes --- ")
   EscrevaL("         (Lata de �leo)         ")
   EscrevaL("--------------------------------")
   EscrevaL(" --------- RESULTADO ---------  ")
   EscrevaL("--------------------------------")
   EscrevaL("Altura:", h, " cm.")
   EscrevaL("Di�metro:", d, " cm.")
   EscrevaL("Raio:", r, " cm.")
   EscrevaL(" ")
   EscrevaL("O valor do Volume da Lata de �leo com os valores apresentados �:", vol, " cm�.")
fimalgoritmo
