valEmp = int(input("Informe o valor do empréstimo: "))
salLiq = float(input("Informe o salário líquido: "))
mesPag = int(input("Informe a quantidade de meses para pagamento: "))
nome = input("Informe o nome completo: ")
nome = nome.title()

while True:#Validação do CPF
    cpf = input("Informe o CPF: ")
    cpf = cpf.replace(".", "")
    cpf = cpf.replace("-", "")
    cpf = cpf.strip()
    if(len(cpf)==11):
        break
    else:
        print("\n==========================\nCPF incorreto informado\n==========================\n")

while True:#Validação do Telefone
    tel = input("Informe o número de telefone: ")
    tel = tel.replace("(", "")
    tel = tel.replace(")", "")
    tel = tel.replace("-", "")
    tel = tel.strip()
    if(len(tel)==11):
        break
    else:
        print("\n==========================\nTelefone incorreto informado\n==========================\n")

end = input("Informe o endereço: ")

while True:#Validação do CEP
    cep = input("Informe o CEP: ")
    cep = cep.replace(".", "")
    cep = cep.replace("-", "")
    cep = cep.strip()
    if(len(cep)==8):
        break
    else:
        print("\n==========================\nCEP incorreto informado\n==========================\n")

while True:#Validação do E-mail
    email = input("Informe o e-mail: ")
    email = email.lower()
    if(("@gmail." in email) or ("@g." in email)):
        break
    else:
        print("\n====================================\nO e-mail informado não é gmail\n====================================\n")

prest = valEmp/mesPag
if(prest<=(salLiq*0.3)):
    print("\nEmpréstimo aprovado!")
else:
    print(f"\nEmpréstimo negado: o valor das prestações ultrapassa 30% do salário líquido do solicitante")