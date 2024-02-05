public class Horista extends Empregado{
    private double precoH;
    private double horasT;

    public Horista(String nome, String sobreN, int cpf, double precoH, double horasT)
    {
        super(nome, sobreN, cpf);
        this.precoH = precoH;
        this.horasT = horasT;
    }

    @Override
    public double vencimento()
    {
        return precoH*horasT;
    }

}
