frase = str(input("Digite uma sequência: "))
maisc = frase.upper()#toda a string -> maiúscula
firstM = frase.capitalize()#primeiro valor da string -> maiúscula
minsc = frase.lower()#toda a string -> minúscula
firstWM = frase.title()#primeira letra de cada palavra -> maiúscula
troca = frase.replace("aaa", "hahaha")#string da esquerda -> substituída pela da direita
print(f"A string, em maiúsculas: {maisc}")
print(f"A string, com a primeira letra maiúscula: {firstM}")
print(f"A string, em minúsculas: {minsc}")
print(f"A string, com a primeira letra de todas as palavras maiúscula: {firstWM}")
print(f"A string, com palavras trocadas: {troca}")