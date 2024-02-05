import java.util.ArrayList;
public class Main {
    public static void main(String[] args) {
        Building b1 = new House(200, true, 25, true);
        Building b2 = new School(370, true, 20, false);
        Car c1 = new Car("Gasolina", 800);
        Car c2 = new Car("Etanol", 1700);
        Bicycle by1 = new Bicycle("Caloi", 16);
        Bicycle by2 = new Bicycle("SportBike", 18);

        ArrayList<CarbonFootprint> lista = new ArrayList<CarbonFootprint>();
        lista.add(b1);
        lista.add(b2);
        lista.add(c1);
        lista.add(c2);
        lista.add(by1);
        lista.add(by2);

        for(CarbonFootprint c : lista)
        {
            if(c instanceof Building)
            {
                Building b = (Building) c;
                System.out.println(b.getCarbonFootprint());
            }
            else if(c instanceof Car)
            {
                Car ca = (Car) c;
                System.out.println(ca.getCarbonFootprint());
            }
            else if(c instanceof Bicycle)
            {
                Bicycle b = (Bicycle) c;
                System.out.println(b.getCarbonFootprint());
            }
            System.out.println("---------------------");
        }

    }
}