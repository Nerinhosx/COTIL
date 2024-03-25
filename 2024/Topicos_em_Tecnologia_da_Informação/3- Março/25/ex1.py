name = str(input("Informe seu nome: "))
maisc = name.upper()
minsc = name.lower()
size = 0
for i in range(0, len(name)):
    if(name[i] != " "):
        size+=1
posV = name.find(" ")
firstN = name[:posV]
sizeFN = len(firstN)
print(f"Seu nome, em maiúsculas: {maisc}")
print(f"Seu nome, em minúsculas: {minsc}")
print(f"Tamanho do seu nome completo: {size}")
print(f"Tamanho do seu primeiro nome: {sizeFN}")