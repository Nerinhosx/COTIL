Algoritmo "Conversor de Dólar"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professora   : Elaine
// Descrição   : Converte para R$ um valor em USD$ informado pelo usuário
// Autor(a)    : Daniela Mendonça e Arthur de Oliveira Nero
// Data atual  : 03/03/2022
Var
   cd, vd, r: Real
Inicio
   Escreva("Informe a cotação atual do dólar:")
   Leia(cd)
   EscrevaL(" ")
   Escreva("Informe um valor em dólares:")
   Leia(vd)
   LimpaTela
   r <- vd/cd
   Escreva("USD$", vd, " em R$ é:", r)
Fimalgoritmo
