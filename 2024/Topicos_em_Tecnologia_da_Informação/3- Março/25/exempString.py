frase = str(input("Digite uma sequência: "))
qCar = frase[3:7:2]#x : y : z ----> índice de "pulo" (de 2 em 2, de 3 em 3 etc)
#                   |   L--> posição do valor final
#                   L-->posição do valor inicial
print(f"Os caracteres, do 4º ao 7º, são: {qCar}")