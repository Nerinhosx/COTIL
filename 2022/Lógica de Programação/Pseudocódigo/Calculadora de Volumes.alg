algoritmo "Calculadora de Volumes"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professora   : Elaine
// Descrição   : Calcula o volume de uma lata de óleo a partir de valores (altura e diâmetro) obtidos através de interação com o usuário
// Autor(a)    : Arthur de Oliveira Nero e Daniela Mendonça
// Data atual  : 03/03/2022
var
   h, d, r, vol: Real
inicio
   EscrevaL(" --- Calculadora de Volumes --- ")
   EscrevaL("         (Lata de Óleo)         ")
   EscrevaL("--------------------------------")
   Escreva("Informe a Altura da lata (cm): ")
   Leia(h)
   Escreva("Informe o valor do Diâmetro da lata (cm): ")
   Leia(d)
   r <- d / 2
   vol <- 3.14159 * r * r * h
   LimpaTela
   EscrevaL(" --- Calculadora de Volumes --- ")
   EscrevaL("         (Lata de Óleo)         ")
   EscrevaL("--------------------------------")
   EscrevaL(" --------- RESULTADO ---------  ")
   EscrevaL("--------------------------------")
   EscrevaL("Altura:", h, " cm.")
   EscrevaL("Diâmetro:", d, " cm.")
   EscrevaL("Raio:", r, " cm.")
   EscrevaL(" ")
   EscrevaL("O valor do Volume da Lata de Óleo com os valores apresentados é:", vol, " cm³.")
fimalgoritmo
