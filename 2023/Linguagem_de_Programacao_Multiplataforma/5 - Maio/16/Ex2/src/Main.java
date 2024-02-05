public class Main {
    public static void main(String[] args) {

        Circulo c1 = new Circulo(0);

        try{
            Quadrado q1 = new Quadrado(0);
        }
        catch (IllegalArgumentException e)
        {
            e.printStackTrace();
        }

        try{
            Retangulo t1 = new Retangulo(3,3);
        }
        catch (IllegalArgumentException e)
        {
            e.printStackTrace();
        }
    }
}