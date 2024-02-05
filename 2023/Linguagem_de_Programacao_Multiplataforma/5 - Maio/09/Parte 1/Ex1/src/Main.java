import java.util.ArrayList;
public class Main {
    public static void main(String[] args) {
        Assalariado a1 = new Assalariado("José", "Carlos", 1238901, 2500);
        Assalariado a2 = new Assalariado("Maria", "da Glória", 12193, 3750);
        Comissionado c1 = new Comissionado("Jedson", "Adorno", 291039, 15000, 5);
        Comissionado c2 = new Comissionado("Arthur", "Nero", 255081, 30000, 12);
        Horista h1 = new Horista("João", "Pedro", 1205, 250, 20);
        Horista h2 = new Horista("Marcos", "Mesquita", 382847, 300, 10);
        /*Instanciação: classes montadas*/

        ArrayList<Empregado> lista = new ArrayList<Empregado>();
        /*Instanciação: ArrayList*/

        lista.add(a1);
        lista.add(a2);
        lista.add(c1);
        lista.add(c2);
        lista.add(h1);
        lista.add(h2);
        /*Adição dos elementos no ArrayList*/

        double s=0;
        for(Empregado e : lista )
        {
            if(e instanceof Assalariado)
            {
                Assalariado a = (Assalariado) e;
                s+=a.vencimento();
            }
            else if(e instanceof Comissionado)
            {
                Comissionado c = (Comissionado) e;
                s+=c.vencimento();
            }
            else if(e instanceof Horista)
            {
                Horista h = (Horista) e;
                s+=h.vencimento();
            }
        }
        System.out.println("O valor total das vendas realizadas pelos empregados cadastrados foi de: "+ s);
        /*Variável de soma, estrutura de repetição para calcular valor total de vendas e impressão do valor total de vendas na tela*/

    }
}