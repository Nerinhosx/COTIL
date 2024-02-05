import com.sun.xml.internal.ws.addressing.WsaActionUtil;

import java.util.ArrayList;
import java.util.Objects;

public class Main {
    public static void main(String[] args) {
        PessoaF pf1 = new PessoaF("Marcos", "rua Piriripororó", 91093920, 1239233);
        PessoaJ pj1 = new PessoaJ("Arthur Nero", "rua dos Pires", 19093983,9293484, "Marvel");
        Eletrico e1 = new Eletrico(8129, "Fios", 15, "Metro");
        Eletrico e2 = new Eletrico(8190, "Patch panel", 50, "Unidade");
        Hidraulico h1 = new Hidraulico(1932, "Bomba d'água", 80, "Unidade");
        Alvenaria a1 = new Alvenaria(2930, "Pisos", 90, "Metro quadrado");

        ArrayList<Loja> lista = new ArrayList<Loja>();

        lista.add(pf1);
        lista.add(pj1);
        lista.add(e1);
        lista.add(e2);
        lista.add(h1);
        lista.add(a1);

        for(Loja l : lista)
        {
            if(l instanceof Eletrico)
            {
                Eletrico e = (Eletrico) l;
                e.setPrc(e.getPrc()*0.8);
                System.out.println(e.getPrc());
            }
        }
        System.out.println("===============================");

        for(Loja l : lista)
        {
            if(l instanceof Clientes)
            {
                Clientes c = (Clientes) l;
                if(c.getNome().startsWith("A"))
                {
                    System.out.println(c.getNome());
                }
            }
        }
        System.out.println("===============================");

        for(Loja l : lista)
        {
            if(l instanceof Alvenaria)
            {
                Alvenaria a = (Alvenaria) l;
                if(a.getPrc()<100)
                {
                    a.mostra();
                }
            }
        }
    }
}