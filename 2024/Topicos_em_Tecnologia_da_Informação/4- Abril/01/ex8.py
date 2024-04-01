age = int(input("Informe sua idade: "))
print("Classificação:")
if (age>=5 and age<=7):
    print("Infantil A")
elif (age>=8 and age<=11):
    print("Infantil B")
elif (age>=12 and age<=13):
    print("Juvenil A")
elif (age>=14 and age<=17):
    print("Juvenil B")
elif (age>=18):
    print("Adulto")