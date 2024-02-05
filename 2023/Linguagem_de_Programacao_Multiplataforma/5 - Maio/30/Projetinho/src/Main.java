import java.util.ArrayList;
import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        ArrayList<Pessoa> listaPe = new ArrayList<Pessoa>();
        ArrayList<Produto> listaPr = new ArrayList<Produto>();
        int respMenu=0;
        int respPe=0;
        int respPr=0;

        //função extra cliente
        int qtdC60=0;
        int qtdC18=0;
        double idadeM=0;
        int contC=0;
        int idadeMa=0;
        int idadeMe=0;

        //função extra produto
        double prcMa=0;
        double prcMe=0;
        double prcMedia=0;
        int prAMedia=0;
        int contPr=0;

        do {
            Scanner teclado = new Scanner(System.in);
            System.out.print("\nMENU (informe o número da opção desejada): \n[0]Fechar\n[1]Cliente\n[2]Funcionário\n[3]Produto\n[4]Extras\nR: ");
            respMenu = teclado.nextInt();
            teclado.nextLine();
            System.out.println("\n\n");

            switch (respMenu)
            {
                case 0:{
                    break;
                }
                case 1:{
                    System.out.print("CLIENTE (informe o número da opção desejada): \n[1]Cadastrar \n[2]Buscar \n[3]Excluir\nR: ");
                    respPe = teclado.nextInt();
                    teclado.nextLine();
                    System.out.println("\n");

                    switch (respPe)
                    {
                        case 1:{
                            System.out.println("CADASTRAR\n---------------------------");
                            Cliente c = new Cliente();

                            System.out.print("Informe seu nome: ");
                            try{
                                c.setNome(teclado.nextLine());
                            }
                            catch (IllegalArgumentException e){
                                e.printStackTrace();
                            }
                            catch (NullPointerException e){
                                e.printStackTrace();
                            }

                            System.out.print("Informe seu sobrenome: ");
                            try{
                                c.setSobrenome(teclado.nextLine());
                            }
                            catch (IllegalArgumentException e){
                                e.printStackTrace();
                            }
                            catch (NullPointerException e){
                                e.printStackTrace();
                            }

                            System.out.print("Informe seu telefone: ");
                            try{
                                c.setTelefone(teclado.nextLine());
                            }
                            catch (IllegalArgumentException e){
                                e.printStackTrace();
                            }
                            catch (NullPointerException e){
                                e.printStackTrace();
                            }

                            System.out.print("Informe seu CPF: ");
                            try{
                                c.setCpf(teclado.nextInt());
                                teclado.nextLine();
                            }
                            catch (IllegalArgumentException e){
                                e.printStackTrace();
                            }

                            System.out.print("Informe sua idade: ");
                            try{
                                c.setIdade(teclado.nextInt());
                                teclado.nextLine();
                            }
                            catch (IllegalArgumentException e){
                                e.printStackTrace();
                            }
                            listaPe.add(c);
                            break;
                        }
                        case 2:{
                            System.out.print("BUSCAR\n--------------------------------\nInforme o nome do cliente(ou sua(s) primeira(s) letra(s)): ");
                            String nom = teclado.nextLine();

                            int x=0;
                            for (Pessoa p : listaPe)
                            {
                                if (p instanceof Cliente)
                                {
                                    Cliente c = (Cliente) p;
                                    if(c.getNome().toUpperCase().startsWith(nom.toUpperCase()))
                                    {
                                        c.exibir();
                                        x=1;
                                        break;
                                    }
                                }
                            }
                            if(x==0)
                            {
                                System.out.println("Não foi possível encontrar clientes cadastrados que possuam '"+ nom +"' no nome.");
                            }
                            break;
                        }
                        case 3:{
                            System.out.print("EXCLUIR\n----------------------------------\nInforme o nome completo do cliente que você deseja excluir: ");
                            String nom = teclado.nextLine();
                            int x=0;
                            
                            for (Pessoa p : listaPe)
                            {
                                if (p instanceof Cliente)
                                {
                                    Cliente c = (Cliente) p;
                                    if(c.getNome().toUpperCase().equals(nom.toUpperCase()))
                                    {
                                        listaPe.remove(c);
                                        System.out.println("Cliente excluído com sucesso.");
                                        x=1;
                                        break;
                                    }
                                }
                            }
                            if(x==0)
                            {
                                System.out.println("Não foi possível encontrar clientes cadastrados que possuam '"+ nom +"' no nome.");
                            }
                            break;
                        }
                        default:{
                            System.out.println("Opção inválida informada. Tente novamente.");
                            break;
                        }
                    }
                    break;
                }
                case 2:{
                    System.out.print("FUNCIONÁRIO (informe o número da opção desejada): \n[1]Cadastrar \n[2]Buscar \n[3]Excluir \nR: ");
                    respPe = teclado.nextInt();
                    teclado.nextLine();
                    
                    System.out.println("\n");

                    switch (respPe)
                    {
                        case 1:{
                            System.out.println("CADASTRAR");
                            Funcionario f = new Funcionario();

                            System.out.print("Informe seu nome: ");
                            try{
                                f.setNome(teclado.nextLine());
                            }
                            catch (IllegalArgumentException e){
                                e.printStackTrace();
                            }
                            catch (NullPointerException e){
                                e.printStackTrace();
                            }

                            System.out.print("Informe sua função: ");
                            try{
                                f.setFuncao(teclado.nextLine());
                            }
                            catch (IllegalArgumentException e){
                                e.printStackTrace();
                            }
                            catch (NullPointerException e){
                                e.printStackTrace();
                            }

                            System.out.print("Informe seu ID: ");
                            try{
                                f.setId(teclado.nextInt());
                                teclado.nextLine();
                            }
                            catch (IllegalArgumentException e){
                                e.printStackTrace();
                            }

                            System.out.print("Informe seu CPF: ");
                            try{
                                f.setCpf(teclado.nextInt());
                                teclado.nextLine();
                            }
                            catch (IllegalArgumentException e){
                                e.printStackTrace();
                            }

                            System.out.print("Informe sua idade: ");
                            try{
                                f.setIdade(teclado.nextInt());
                                teclado.nextLine();
                            }
                            catch (IllegalArgumentException e){
                                e.printStackTrace();
                            }
                            listaPe.add(f);
                            break;
                        }
                        case 2:{
                            System.out.print("BUSCAR\n--------------------------------------\nInforme o nome do funcionário (ou sua(s) primeira(s) letra(s)): ");
                            String nom = teclado.nextLine();
                            int x=0;

                            for (Pessoa p : listaPe)
                            {
                                if (p instanceof Funcionario)
                                {
                                    Funcionario f = (Funcionario) p;
                                    if(f.getNome().toUpperCase().startsWith(nom.toUpperCase()))
                                    {
                                        f.exibir();
                                        x=1;
                                        break;
                                    }
                                }
                            }
                            if(x==0)
                            {
                                System.out.println("Não foi possível encontrar funcionários cadastrados que possuam '"+ nom +"' no nome.");
                            }
                            break;
                        }
                        case 3:{
                            System.out.print("EXCLUIR\n-----------------------------------------------\nInforme o id do funcionário que você deseja excluir: ");
                            int id = teclado.nextInt();
                            int x=0;

                            for (Pessoa p : listaPe)
                            {
                                if (p instanceof Funcionario)
                                {
                                    Funcionario f = (Funcionario) p;
                                    if(f.getId()==id)
                                    {
                                        listaPe.remove(f);
                                        System.out.println("Funcionário excluído com sucesso.");
                                        x=1;
                                        break;
                                    }
                                }
                            }
                            if(x==0)
                            {
                                System.out.println("Não foi possível encontrar funcionário cadastrado com o ID:"+ id);
                            }
                            break;
                        }
                    }
                    break;
                }
                case 3:{
                    System.out.print("PRODUTO (informe o número da opção desejada): \n[1]Cadastrar \n[2]Buscar \n[3]Excluir \nR: ");
                    respPr = teclado.nextInt();
                    
                    System.out.println("\n");

                    switch (respPr)
                    {
                        case 1:{
                            Produto p = new Produto();

                            System.out.print("CADASTRAR\nInforme a descrição do produto: ");
                            teclado.nextLine();

                            try{
                                p.setDescricao(teclado.nextLine());
                            }
                            catch (IllegalArgumentException e){
                                e.printStackTrace();
                            }
                            catch (NullPointerException e){
                                e.printStackTrace();
                            }

                            System.out.print("Informe a marca do produto: ");
                            try{
                                p.setMarca(teclado.nextLine());
                            }
                            catch (IllegalArgumentException e){
                                e.printStackTrace();
                            }
                            catch (NullPointerException e){
                                e.printStackTrace();
                            }

                            System.out.print("Informe o código do produto: ");
                            try{
                                p.setCodigo(teclado.nextInt());
                            }
                            catch (IllegalArgumentException e){
                                e.printStackTrace();
                            }

                            System.out.print("Informe o preço do produto: ");
                            try{
                                p.setPreco(teclado.nextDouble());
                                teclado.nextLine();
                            }
                            catch (IllegalArgumentException e){
                                e.printStackTrace();
                            }

                            System.out.print("Informe a sessão na qual o produto se encontra: ");
                            try{
                                p.setSessao(teclado.nextLine());
                            }
                            catch (IllegalArgumentException e){
                                e.printStackTrace();
                            }
                            listaPr.add(p);
                            break;
                        }
                        case 2:{
                            System.out.print("BUSCAR\n---------------------------------------------\nInforme a forma de busca pelo produto:\n[1]Descrição\n[2]Código\n[3]Preço\nR: ");
                            int n = teclado.nextInt();
                            teclado.nextLine();

                            switch (n)
                            {
                                case 1:{
                                    System.out.print("\nInforme a DESCRIÇÃO completa do produto (ou parte dela): ");
                                    String desc = teclado.nextLine();
                                    System.out.println("\n");
                                    int x=0;

                                    for (Produto p : listaPr)
                                    {
                                        Produto p1 = (Produto) p;
                                        if(p1.getDescricao().toUpperCase().startsWith(desc.toUpperCase()))
                                        {
                                            p1.exibir();
                                            x=1;
                                            break;
                                        }
                                    }
                                    if (x==0)
                                    {
                                        System.out.println("Não foi possível encontrar um produto com a descrição informada.");
                                    }
                                    break;
                                }
                                case 2:{
                                    System.out.print("\nInforme o CÓDIGO do produto: ");
                                    int cod = teclado.nextInt();
                                    System.out.println("\n");
                                    int x=0;

                                    for (Produto p : listaPr)
                                    {
                                        Produto p1 = (Produto) p;
                                        if(p1.getCodigo()==cod)
                                        {
                                            p1.exibir();
                                            x=1;
                                            break;
                                        }
                                    }
                                    if (x==0)
                                    {
                                        System.out.println("Não foi possível encontrar um produto com o código informado.");
                                    }
                                    break;
                                }
                                case 3:{
                                    System.out.print("\nInforme o PREÇO do produto: ");
                                    double prc = teclado.nextDouble();
                                    System.out.println("\n");
                                    int x=0;

                                    for (Produto p : listaPr)
                                    {
                                        Produto p1 = (Produto) p;
                                        if(p1.getPreco()==prc)
                                        {
                                            p1.exibir();
                                            x=1;
                                            System.out.println("------------------------------------------------------");
                                        }
                                    }
                                    if (x==0)
                                    {
                                        System.out.println("Não foi possível encontrar produtos com o preço informado.");
                                    }
                                    break;
                                }
                            }
                            break;
                        }
                        case 3:{
                            System.out.print("\nInforme o código do produto que você deseja excluir: ");
                            int cod = teclado.nextInt();
                            teclado.nextLine();
                            int x=0;

                            for (Produto p : listaPr)
                            {
                                Produto p1 = (Produto) p;
                                if(p1.getCodigo()==cod)
                                {
                                    listaPr.remove(p1);
                                    System.out.println("Produto excluído com sucesso.");
                                    x=1;
                                    break;
                                }
                            }
                            if (x==0)
                            {
                                System.out.println("Não foi possível encontrar um produto com o código informada.");
                            }
                            break;
                        }
                    }
                    break;
                }
                case 4:{
                    System.out.print("\nEXTRAS (informe o número da opção desejada): \n[1]Extras cliente \n[2]Extras produto \nR: ");
                    int n = teclado.nextInt();
                    teclado.nextLine();

                    for (Pessoa p : listaPe)
                    {
                        if (p instanceof Cliente)
                        {
                            Cliente c = (Cliente) p;

                            contC++;

                            if (contC == 1) {
                                idadeMa = c.getIdade();
                                idadeMe = c.getIdade();
                            }

                            if (c.getIdade() > idadeMa) {
                                idadeMa = c.getIdade();
                            }

                            if (c.getIdade() < idadeMe) {
                                idadeMe = c.getIdade();
                            }

                            if (c.getIdade() > 60) {
                                qtdC60++;
                            }

                            if (c.getIdade() < 18) {
                                qtdC18++;
                            }

                            idadeM += c.getIdade();
                        }
                    }

                    switch (n)
                    {
                        case 1:{
                            System.out.print("\nExtras - Cliente\n========================================== \n[1]Cliente + velho \n[2]Cliente + jovem \n[3]Qtd. de clientes acima de 60 anos \n[4]Qtd. de clientes abaixo de 18 anos \n[5]Idade média \nR: ");
                            int z = teclado.nextInt();
                            teclado.nextLine();

                            switch (z)
                            {
                                case 1:{
                                    for (Pessoa p : listaPe)
                                    {
                                        if (p instanceof Cliente)
                                        {
                                            Cliente ca = (Cliente) p;
                                            if (ca.getIdade()==idadeMa)
                                            {
                                                ca.exibir();
                                            }
                                        }
                                    }
                                    break;
                                }
                                case 2:{
                                    for (Pessoa p : listaPe)
                                    {
                                        if (p instanceof Cliente)
                                        {
                                            Cliente ca = (Cliente) p;
                                            if (ca.getIdade()==idadeMe)
                                            {
                                                ca.exibir();
                                            }
                                        }
                                    }
                                    break;
                                }
                                case 3:{
                                    System.out.println("\nQuantidade de clientes com idade superiora à 60 anos:" + qtdC60);
                                    break;
                                }
                                case 4:{
                                    System.out.println("\nQuantidade de clientes com idade inferiora à 18 anos:" + qtdC18);
                                    break;
                                }
                                case 5:{
                                    idadeM=idadeM/contC;
                                    System.out.println("Média de idades: "+ idadeM);
                                    break;
                                }
                            }
                            qtdC60=0;
                            qtdC18=0;
                            idadeM=0;
                            contC=0;
                            idadeMa=0;
                            idadeMe=0;
                            break;
                        }
                        case 2:{
                            System.out.print("\nExtras - Produto\n========================================== \n[1]Produto + caro \n[2]Produto + barato \n[3]Média dos preços \n[4]Qtd. de produtos acima da média \nR: ");
                            int z = teclado.nextInt();
                            teclado.nextLine();
                            System.out.println("\n");

                            for (Produto p : listaPr)
                            {
                                contPr++;
                                if (contPr==1)
                                {
                                    prcMa=p.getPreco();
                                    prcMe=p.getPreco();
                                }

                                if (p.getPreco()>prcMa)
                                {
                                    prcMa=p.getPreco();
                                }

                                if (p.getPreco()<prcMe)
                                {
                                    prcMe=p.getPreco();
                                }
                                prcMedia+=p.getPreco();
                            }
                            prcMedia=prcMedia/contPr;

                            for (Produto p : listaPr)
                            {
                                if (p.getPreco()>prcMedia)
                                {
                                    prAMedia++;
                                }
                            }

                            switch (z)
                            {
                                case 1:{
                                    for (Produto p : listaPr)
                                    {
                                        if (p.getPreco()==prcMa)
                                        {
                                            p.exibir();
                                            System.out.println("\n=========================================");
                                        }
                                    }
                                    break;
                                }
                                case 2:{
                                    for (Produto p : listaPr)
                                    {
                                        if (p.getPreco()==prcMe)
                                        {
                                            p.exibir();
                                            System.out.println("\n===================================");
                                        }
                                    }
                                    break;
                                }
                                case 3:{
                                    System.out.println("\nA média dos preços é: "+ prcMedia);
                                    break;
                                }
                                case 4:{
                                    System.out.println("\nQuantidade de produtos acima da média: "+ prAMedia);
                                    break;
                                }
                            }
                            prcMa=0;
                            prcMe=0;
                            prcMedia=0;
                            prAMedia=0;
                            contPr=0;
                        }
                    }
                    break;
                }
            }
        }
        while(respMenu!=0);
    }
}