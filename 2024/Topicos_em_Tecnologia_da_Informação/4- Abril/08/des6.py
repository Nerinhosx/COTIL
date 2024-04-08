num = []
num.append(float(input("Informe um valor: ")))
num.append(float(input("Informe o segundo valor: ")))
num.append(float(input("Informe o último valor: ")))

maior = num[0]
menor = num[0]
for i in range(0, len(num)):
    if(num[i]>maior):
        maior = num[i]
    
    if(num[i]<menor):
        menor = num[i]
print(f"Dentre os números informados, o maior é {maior} e o menor é {menor}")