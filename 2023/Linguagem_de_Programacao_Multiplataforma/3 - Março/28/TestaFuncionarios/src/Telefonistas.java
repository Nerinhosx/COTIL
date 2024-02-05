public class Telefonistas extends Funcionario{
    private int cET;

    public Telefonistas(String nome, double salario, int cET)
    {
        super(nome, salario);
        this.cET=cET;
    }

    public int getcET() {
        return cET;
    }

    public void setcET(int cET) {
        this.cET = cET;
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
        System.out.println(this.cET);
    }
}
