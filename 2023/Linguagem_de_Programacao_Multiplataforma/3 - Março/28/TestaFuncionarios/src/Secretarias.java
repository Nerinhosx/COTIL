public class Secretarias extends Funcionario{
    private int nRam;

    public Secretarias(String nome, double salario, int nRam)
    {
        super(nome, salario);
        this.nRam=nRam;
    }

    public void setnRam(int nRam)
    {
        this.nRam=nRam;
    }

    public int getnRam()
    {
        return nRam;
    }

    public double calcBonificacao()
    {
        bon=salario*0.1;
        salario+=bon;
        return bon;
    }

    public void mostraDados()
    {
        super.mostraDados();
        System.out.println(this.nRam);
    }
}
