frase = str(input("Digite uma frase: ")).upper()
qtde = frase.count("A")
firstP = frase.find("A")
lastP = firstP
for i in range(0, len(frase)):
    if(frase[i] == "A"):
        lastP = i
print(f"Vezes que 'A' aparece na frase: {qtde}")
print(f"Posição em que 'A' aparece pela primeira vez na frase: {firstP}")
print(f"Posição em que 'A' aparece pela última vez na frase: {lastP}")