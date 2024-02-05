public class Funcionario {
    protected String nome;
    protected double salario;
    protected double bon;


    public Funcionario(String nome, double salario)
    {
        this.nome=nome;
        this.salario=salario;
    }

    public void setNome(String nome)
    {
        this.nome=nome;
    }

    public String getNome()
    {
        return nome;
    }

    public void setSalario(double salario)
    {
        this.salario=salario;
    }

    public double getSalario()
    {
        return salario;
    }

    public void mostraDados()
    {
        System.out.println(this.nome +"  ");
        System.out.println(this.salario +"  ");
        System.out.println(this.bon);
    }

    public double calculaBonificacao()
    {
        this.bon=this.salario*0.1;
        this.salario+=this.bon;
        return bon;
    }
}
