public class VIP extends Ingresso{
    private double valad;

    public VIP(double valor, double valad) {
        super(valor);
        this.valad = valad;
    }

    @Override
    public void imprimeValor()
    {
        super.imprimeValor();
        System.out.println(valad);
    }

    @Override
    public double retornaValor()
    {
        return valor+valad;
    }
}
