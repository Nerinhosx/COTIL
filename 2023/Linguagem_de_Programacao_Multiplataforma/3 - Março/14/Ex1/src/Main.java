public class Main {
    public static void main(String[] args) {
        Poupanca p1 = new Poupanca(2000);
        Poupanca p2 = new Poupanca(3000);

        Poupanca.modificaTaxaJuro(0.03);
        System.out.println(p1.calcularJurosMensais());
        System.out.println(p2.calcularJurosMensais());
        Poupanca.modificaTaxaJuro(0.04);
        System.out.println(p1.calcularJurosMensais());
        System.out.println(p2.calcularJurosMensais());
    }
}