import java.util.ArrayList;
public class Main {
    public static void main(String[] args) {

        double s = 0;
        int qm=0;
        int qc=0;
        double mm=100000000;
        double mc=100000000;

        Moto m1 = new Moto("Yamaha", 22.90, 2000);
        Moto m2 = new Moto("XJ", 40000.90, 2022);
        Carro c1 = new Carro("Clio", 100, 0);
        Carro c2 = new Carro("Kwid", 39000, 20);

        ArrayList<Veiculos> lista = new ArrayList<Veiculos>();
        lista.add(m1);
        lista.add(m2);
        lista.add(c1);
        lista.add(c2);

        for (Veiculos v : lista) {
            if (v instanceof Moto) {
                Moto m = (Moto) v;
                m.printDados();
                qm++;
                if(mm>m.getPrc())
                {
                    mm=m.getPrc();
                }
            }
            else if (v instanceof Carro) {
                Carro c = (Carro) v;
                c.printDados();
                qc++;
                if(mc>c.getPrc())
                {
                    mc=c.getPrc();
                }
            }
            s += v.getPrc();
            System.out.println("\n");
        }
        System.out.println("\nO preço total dos veículos cadastrados é: " + s);

        s=0;
        for (Veiculos v : lista) {
            if (v instanceof Moto) {
                Moto m = (Moto) v;
                if (m.getAno() >= 2008) {
                    m.setPrc(m.getPrc() * 1.1);
                }
            }
            else if (v instanceof Carro)
            {
                Carro c = (Carro) v;
                if (c.getKm() >= 100000)
                {
                    c.setPrc(c.getPrc()*0.92);
                }
            }
            s += v.getPrc();
        }
        System.out.println("\nO preço reformulado dos veículos cadastrados é: " + s);

        System.out.println("\nA quantidade de motos cadastradas é: "+ qm +".\nA quantidade de carros cadastrados é: "+ qc);

        for (Veiculos v : lista)
        {
            if (v instanceof Moto)
            {
                Moto m= (Moto) v;
                if(mm==m.getPrc())
                {
                    m.printDados();
                    System.out.println("---------------------");
                }
            }
            else if (v instanceof Carro)
            {
                Carro c = (Carro) v;
                if(mc==c.getPrc())
                {
                    c.printDados();
                    System.out.println("---------------------");
                }
            }
        }
    }
}