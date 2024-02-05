public class Assalariado extends Funcionario{
    private double sal;

    public Assalariado(String nome, double sal)
    {
        super(nome);
        this.sal=sal;
    }

    @Override
    public double getPay()
    {
        return sal;
    }

    public double getSal() {
        return sal;
    }

    public void setSal(double sal) {
        this.sal = sal;
    }
}
