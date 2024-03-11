val = int(input("Informe o valor da prestação: "))
tx = int(input("Agora informe o valor da taxa: "))
tm = int(input("Por fim, informe o tempo de atraso: "))
print("O valor da prestação em atraso é:", val + (val*(tx/100)*tm))