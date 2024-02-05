import java.util.ArrayList;
import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        String l1;
        String l2;

        Artistas a1 = new Artistas(1920, "Marcos", "Brasileiro");
        Artistas a2 = new Artistas(2015, "Pablo", "Chileno");
        Musica m1 = new Musica(9203, "Meu amor por ti", 240, "Sofrido", "Marcos");
        Musica m2 = new Musica(9103, "Dor no coração", 150, "Sofrido", "Marcos");
        Musica m3 = new Musica(2803, "Metan", 180, "Breaking B", "Pablo");

        ArrayList<Artistas> lista1 = new ArrayList<Artistas>();
        lista1.add(a1);
        lista1.add(a2);

        ArrayList<Musica> lista2 = new ArrayList<Musica>();
        lista2.add(m1);
        lista2.add(m2);
        lista2.add(m3);

        Scanner tc = new Scanner(System.in);

        System.out.print("Informe a nacionalidade ou o nome do artista que deseja buscar: ");
        l1=tc.nextLine();

        for(Artistas a : lista1)
        {
            if((a.getNome().equals(l1)) || (a.getNac().equals(l1)))
            {
                a.mostra();
            }
        }
        System.out.println("=================================");

        System.out.print("Informe o álbum da música que deseja buscar: ");
        l2=tc.nextLine();

        for(Musica m : lista2)
        {
            if(m.getAlb().equals(l2))
            {
                m.mostra();
            }
            System.out.println("============================");
        }
    }
}