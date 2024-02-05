import java.util.ArrayList;
public class Main {
    public static void main(String[] args) {
        Ingresso i1 = new Ingresso(20);
        VIP v1 = new VIP(20, 5);
        Comum c1 = new Comum(20);

        ArrayList<Ingresso> lista = new ArrayList<Ingresso>();
        lista.add(i1);
        lista.add(v1);
        lista.add(c1);
        for(Ingresso i: lista)
        {
            i.imprimeValor();
            System.out.println("------");
        }
        double s=0;
        for(Ingresso i: lista)
        {
            s+=i.retornaValor();
        }
        System.out.println("Faturamento: "+ s);
    }
}