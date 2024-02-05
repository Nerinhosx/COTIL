public class Assalariado extends Empregado{
    private double sal;

    public Assalariado(String nome, String sobreN, int cpf, double sal)
    {
        super(nome, sobreN, cpf);
        this.sal = sal;
    }

    @Override
    public double vencimento()
    {
        return sal;
    }

}
