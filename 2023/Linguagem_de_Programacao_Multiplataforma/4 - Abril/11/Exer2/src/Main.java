import java.util.ArrayList;
public class Main {
    public static void main(String[] args) {
        Imovel i1 = new Imovel("Rua José Bonifácio", 125350);
        Novo n1 = new Novo("Rua Antônio Teres", 125350, 25000);
        Novo n2 = new Novo("Rua Marcos Calvo de Oliveira", 125350, 34500);
        Antigo a1 = new Antigo("Rua Benedito Antônio", 125350, 25000);

        ArrayList<Imovel> lista = new ArrayList<Imovel>();

        lista.add(i1);
        lista.add(n1);
        lista.add(n2);
        lista.add(a1);

        for(Imovel i: lista)
        {
            if(i instanceof Novo)
            {
                i.imprime();
                System.out.println("--------------------------");
            }
        }
    }
}