name = str(input("Informe seu nome completo: "))
qtde = name.count(" ")
firstSpace = name.find(" ")
firstName = name[0:firstSpace]
lastName = ""
for i in  range(0, len(name)):
    if(name[i]==" "):
        qtde-=1
        if(qtde==0):
            lastName = name[i+1:]
print(f"Primeiro nome: {firstName}")
print(f"Último nome: {lastName}")