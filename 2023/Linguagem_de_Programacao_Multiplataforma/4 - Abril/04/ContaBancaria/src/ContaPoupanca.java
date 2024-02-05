public class ContaPoupanca extends ContaBancaria{
    private int diaRend;

    public ContaPoupanca(String cliente, int numConta, double saldo, int diaRend)
    {
        super(cliente, numConta, saldo);
        this.diaRend=diaRend;
    }

    public void calcularNovoSaldo(double tr)
    {
        saldo+=saldo*tr;
    }
}
