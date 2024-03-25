frase = str(input("Digite uma sequência: "))
start = frase.find("Python")
if(start!=-1):
    print(f"Posição que a palavra começa na string digitada: {start}")
else:
    print(f"A palavra não está na string")