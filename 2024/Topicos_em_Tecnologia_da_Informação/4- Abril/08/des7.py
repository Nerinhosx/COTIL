sal = float(input("Informe o salário do funcionário: R$ "))

if(sal<=1250):
    sal+=sal*0.15
    print(f"O salário com aumento é: R$ {sal}")
else:
    sal+=sal*0.1
    print(f"O salário com aumento é: R$ {sal}")