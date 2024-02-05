public class Main {
    public static void main(String[] args) {
        int d=0;

        CalculoMatematico c1 = new CalculoMatematico();

        try{
            d=c1.divisao(3, 0);
        }
        catch (ArithmeticException e){
            e.printStackTrace();
        }
        System.out.println("Resultado: "+ d);
    }
}