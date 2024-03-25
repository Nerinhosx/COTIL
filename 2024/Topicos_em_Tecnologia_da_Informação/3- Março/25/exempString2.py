frase = str(input("Digite uma sequência: "))
qCar = frase[:7]#[:x] OU [x:] 
#                  |      L--> posição inicial do corte (de x até o final do array ou string)
#                  L--> posição de limite do corte (de 0 até x)
print(f"Os caracteres, do 4º ao 7º, são: {qCar}")