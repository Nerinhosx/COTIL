dist = round(float(input("Informe a distância da viagem: ")),0)
prc = 0
if(dist<=200):
    prc = 0.5
else:
    prc = 0.45

print(f"O preço da passagem será de: R${dist*prc}")