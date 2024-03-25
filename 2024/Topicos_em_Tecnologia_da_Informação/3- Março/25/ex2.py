num = str(input("Informe um valor entre 0 e 9999: "))
while((int(num)<0) or (int(num)>9999)):
    print("\n===========================\nValor inválido informado\n===========================\n")
    num = str(input("Informe um valor entre 0 e 9999: "))
match len(num):
    case 1:
        print(f"Unidade: {num}")

    case 2:
        print(f"Dezena: {num[0]}")
        print(f"Unidade: {num[1]}")
    
    case 3:
        print(f"Centena: {num[0]}")
        print(f"Dezena: {num[1]}")
        print(f"Unidade: {num[2]}")

    case 4:
        print(f"Milhar: {num[0]}")
        print(f"Centena: {num[1]}")
        print(f"Dezena: {num[2]}")
        print(f"Unidade: {num[3]}")