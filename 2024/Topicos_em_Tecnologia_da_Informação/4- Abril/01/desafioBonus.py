alt = float(input("Informe a altura do reservatório: "))
larg = float(input("Informe a largura do reservatório: "))
comp = float(input("Informe o comprimento do reservatório: "))
conMedio = float(input("Informe o consumo médio de água (litros/dia): "))

capTotal = round(float((alt*larg*comp)/1000), 2)
auto = round(float(capTotal/conMedio), 2)
print(f"A capacidade total do reservatório é de: {capTotal} Litros")
print(f"A autonomia do reservatório é de: {auto} dias")
if(auto<2):
    print("CONSUMO ELEVADO")
elif(auto>=2 and auto <=7):
    print("CONSUMO MODERADO")
elif(auto>7):
    print("CONSUMO REDUZIDO")