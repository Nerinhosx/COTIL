public class ContaInvestimento extends ContaBancaria{
    private double salF;

    public ContaInvestimento(double sal)
    {
        super(sal);
    }

    @Override
    public void calcSaldo()
    {
        salF=super.getSal()+(super.getSal()*0.05);
        System.out.println(salF);
    }
}
