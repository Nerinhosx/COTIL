import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        Circulo c1 = new Circulo(2);
        Quadrado q1 = new Quadrado(6);
        Triangulo t1 = new Triangulo(7,3);
        Esfera e1 = new Esfera(4.6);
        Cubo cu1 = new Cubo(8);
        Tetraedro te1 = new Tetraedro(12,18,9*1.73,3*3.6);

        ArrayList<Forma> lista = new ArrayList<Forma>();
        lista.add(c1);
        lista.add(q1);
        lista.add(t1);
        lista.add(e1);
        lista.add(cu1);
        lista.add(te1);

        for(Forma f: lista)
        {
            double d = f.obterArea();
            System.out.println(d);
            if(f instanceof FormaTridimensional)
            {
                FormaTridimensional ft = (FormaTridimensional) f;
                d=ft.obterVolume();
                System.out.println(d);
            }
            System.out.println("------------");
        }

    }
}