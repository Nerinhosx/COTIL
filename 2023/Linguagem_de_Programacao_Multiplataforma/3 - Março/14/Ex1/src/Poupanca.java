public class Poupanca {
    private double saldo;
    private static double taxaJurosAnual;

    public Poupanca(double s)
    {
        saldo=s;
    }

    public double calcularJurosMensais()
    {
        saldo+=(saldo * taxaJurosAnual)/12;
        return saldo;
    }

    public static void modificaTaxaJuro(double novoTaxaJurosAnual)
    {
        taxaJurosAnual=novoTaxaJurosAnual;
    }

}