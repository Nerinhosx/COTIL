city = str(input("Informe o nome de uma cidade: ")).title()
pos = city.find("Santo")
if(pos==0):
    print("O nome da cidade começa com 'Santo'")
else:
    print("O nome da cidade não começa com 'Santo'")