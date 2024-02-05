public class Comissionado extends Empregado{
    private double totalV;
    private double taxaCo;

    public Comissionado(String nome, String sobreN, int cpf, double totalV, double taxaCo)
    {
        super(nome, sobreN, cpf);
        this.totalV = totalV;
        this.taxaCo = taxaCo;
    }

    @Override
    public double vencimento()
    {
        return totalV*taxaCo;
    }
}
