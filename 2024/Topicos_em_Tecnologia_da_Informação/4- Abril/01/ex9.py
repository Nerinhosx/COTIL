n1 = float(input("Informe um número: "))
n2 = float(input("Informe outro número: "))

vet = []

if(float(input("Informe o resultado da soma: ")) == n1+n2):
    vet.append(True)
else:
    vet.append(False)

if(float(input("Informe o resultado da subtração: ")) == n1-n2):
    vet.append(True)
else:
    vet.append(False)

if(float(input("Informe o resultado da multiplicação: ")) == n1*n2):
    vet.append(True)
else:
    vet.append(False)

if(float(input("Informe o resultado da divisão: ")) == n1/n2):
    vet.append(True)
else:
    vet.append(False)

for b in range(0, len(vet)):
    if(b==0):
        if(vet[b]==True):
            print("O valor da soma está correto!")
        else:
            print("O valor da soma está incorreto")

    if(b==1):
        if(vet[b]==True):
            print("O valor da subtração está correto!")
        else:
            print("O valor da subtração está incorreto")

    if(b==2):
        if(vet[b]==True):
            print("O valor da multiplicação está correto!")
        else:
            print("O valor da multiplicação está incorreto")

    if(b==3):
        if(vet[b]==True):
            print("O valor da divisão está correto!")
        else:
            print("O valor da divisão está incorreto")