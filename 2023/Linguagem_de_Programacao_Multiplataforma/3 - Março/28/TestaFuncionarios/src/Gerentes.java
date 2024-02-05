public class Gerentes extends Funcionario{
    private String nUser;
    private int senha;

    public Gerentes(String nome, double salario, String nUser, int senha)
    {
        super(nome, salario);
        this.nUser=nUser;
        this.senha=senha;
    }

    public String getnUser() {
        return nUser;
    }

    public void setnUser(String nUser) {
        this.nUser = nUser;
    }

    public int getSenha() {
        return senha;
    }

    public void setSenha(int senha) {
        this.senha = senha;
    }

    public double calcBonificacao()
    {
        bon=salario*0.2;
        salario+=bon;
        return bon;
    }

    public void mostraDados()
    {
        super.mostraDados();
        System.out.println(this.nUser);
        System.out.println(this.senha);
    }
}
