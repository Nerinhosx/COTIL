Algoritmo "Leitor de Valores"
Var
   c, d: Inteiro
   val: Vetor [1..10] de Real
   R, s, nd: Caractere
Inicio
   Repita
      Para c <- 1 ate 10 faca
         EscrevaL(" ---------------- LEITOR DE VALORES ---------------- ")
         EscrevaL(" ")
         Se (c = 10) entao
            Escreva("Informe um último valor: ")
            Leia(val[c])
         Senao
            Se (c > 1) entao
               Escreva("Informe outro valor: ")
               Leia(val[c])
            Senao
               Escreva("Informe um valor: ")
               Leia(val[c])
            FimSe
         FimSe
         LimpaTela
      FimPara
      Repita
         EscrevaL("Escolha o valor a ser informado")
         Para c <- 1 ate 10 faca
            EscrevaL("[", c, "] ", c, "º Valor")
         FimPara
         Escreva("R: ")
         Leia(d)
         LimpaTela
         EscrevaL("O valor selecionado foi o", d, "º valor: ", val[d])
         Escreva("Pressione ENTER para continuar")
         Leia(nd)
         LimpaTela
         EscrevaL("Quer utilizar a aba já acessada do Leitor novamente? S/N")
         Escreva("R: ")
         Leia(R)
         LimpaTela
      Ate(R = "N") ou (R = "n") ou (R = "Não") ou (R = "NÃO") ou (R = "não") ou (R = "NAO") ou (R = "Nao") ou (R = "nao")
      EscrevaL("Quer utilizar o Leitor limpo novamente? S/N")
      Escreva("R: ")
      Leia(s)
   Ate(s = "N") ou (s = "n") ou (s = "Não") ou (s = "NÃO") ou (s = "não") ou (s = "NAO") ou (s = "Nao") ou (s = "nao")
Fimalgoritmo