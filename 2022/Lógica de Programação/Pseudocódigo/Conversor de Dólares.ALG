Algoritmo "Conversor de D�lar"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professora   : Elaine
// Descri��o   : Converte para R$ um valor em USD$ informado pelo usu�rio
// Autor(a)    : Daniela Mendon�a e Arthur de Oliveira Nero
// Data atual  : 03/03/2022
Var
   cd, vd, r: Real
Inicio
   Escreva("Informe a cota��o atual do d�lar:")
   Leia(cd)
   EscrevaL(" ")
   Escreva("Informe um valor em d�lares:")
   Leia(vd)
   LimpaTela
   r <- vd/cd
   Escreva("USD$", vd, " em R$ �:", r)
Fimalgoritmo
