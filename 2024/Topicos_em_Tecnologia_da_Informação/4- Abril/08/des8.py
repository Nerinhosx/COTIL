r1 = float(input("Informe o valor da 1ª reta: "))
r2 = float(input("Informe o valor da 2ª reta: "))
r3 = float(input("Informe o valor da 3ª reta: "))

if(r1+r2>r3 and r1+r3>r2 and r2+r3>r1):
    print("Eles podem formar um triângulo.")
else:
    print("Eles não podem formar um triângulo.")