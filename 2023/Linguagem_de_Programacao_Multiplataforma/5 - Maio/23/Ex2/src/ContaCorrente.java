public class ContaCorrente extends ContaBancaria{
    private double salF;

    public ContaCorrente(double sal)
    {
        super(sal);
    }

    @Override
    public void calcSaldo()
    {
        salF=super.getSal()-(super.getSal()*0.1);
        System.out.println(salF);
    }
}
