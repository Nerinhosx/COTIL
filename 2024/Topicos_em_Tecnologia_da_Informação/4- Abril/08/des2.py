vel = float(input("Informe a velocidade alcançada: "))

if(vel > 80):
    print(f"Você ultrapassou o limite de velocidade. A sua multa será de: R$ {(vel-80)*7}")
else:
    print("😎👍")