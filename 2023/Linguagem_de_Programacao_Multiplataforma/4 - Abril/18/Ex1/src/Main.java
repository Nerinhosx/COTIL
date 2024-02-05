import java.util.Scanner;
import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        //Scanner + variável auxiliar;
        Scanner tec = new Scanner(System.in);
        int cd;

        //ArrayList
        ArrayList<Produto> lista = new ArrayList<Produto>();

        //Instanciação
        Livro l1 = new Livro(8294, "Senhor dos Anéis - As Duas Torres", 17.25, "J.R.R. Tolkien");
        Livro l2 = new Livro(2990, "Sherlock Holmes - O cão dos Baskerville", 22.50, "sir Arthur Conan Doyle");
        DVD d1 = new DVD(2949, "Carros 2", 10.75, 106);
        DVD d2 = new DVD(9028, "A era do gelo 3", 4000.53, 94);
        CD c1 = new CD(9849, "As melhores de Gustavo Lima", 25.99, 1);

        //Atribuição no ArrayList
        lista.add(l1);
        lista.add(l2);
        lista.add(d1);
        lista.add(d2);
        lista.add(c1);

        //Impressão do ArrayList
        for(Produto p: lista)
        {
            if(p instanceof Livro)
            {
                Livro l = (Livro) p;
                System.out.println(l.toString());
            }
            else if (p instanceof DVD)
            {
                DVD d = (DVD) p;
                System.out.println(d.toString());
            }
            else if(p instanceof CD)
            {
                CD c = (CD) p;
                System.out.println(c.toString());
            }
            System.out.println("----------------");
        }

        //Busca usando código
        System.out.println("\nInforme o código do produto a ser buscado: ");
        System.out.println("Código: ");
        cd=tec.nextInt();
        System.out.println("\n");
        for(Produto p: lista)
        {
            if(p.getCod()==cd)
            {
                if(p instanceof Livro)
                {
                    Livro l = (Livro) p;
                    System.out.println(l.toString());
                }
                else if (p instanceof DVD)
                {
                    DVD d = (DVD) p;
                    System.out.println(d.toString());
                }
                else if(p instanceof CD)
                {
                    CD c = (CD) p;
                    System.out.println(c.toString());
                }
                else
                {
                    System.out.println("Nenhum produto com tal código ("+ cd +") foi encontrado.");
                }
            }
        }
        System.out.println("\n");

        //Menu
        do {
            System.out.println("\nInforme o produto do qual você deseja que todos os objetos sejam impressos: \n[1] Livros; \n[2] CDs; \n[3] DVDs; \n[4] Fechar busca.");
            System.out.print("R: ");
            cd = tec.nextInt();
            System.out.println("\n");
            for (Produto p : lista)
            {
                switch (cd)
                {
                    case 1:
                    {
                        if (p instanceof Livro) {
                            Livro l = (Livro) p;
                            System.out.println(l.toString() +"\ne---------------------------");
                        }
                        break;
                    }
                    case 2:
                    {
                        if (p instanceof CD) {
                            CD c = (CD) p;
                            System.out.println(c.toString() +"\n---------------------------");
                        }
                        break;
                    }
                    case 3:
                    {
                        if (p instanceof DVD) {
                            DVD d = (DVD) p;
                            System.out.println(d.toString() +"\n---------------------------");
                        }
                        break;
                    }
                    case 4:
                        break;
                    default:
                    {
                        System.out.println("Valor inválido informado.");
                        break;
                    }
                }
            }
        }
        while(cd!=4);
    }
}