public class Pessoa {
    protected int cpf;
    protected String nome;

    public void mostraTipo()
    {
        System.out.println("É uma pessoa.");
    }

    public Pessoa(int cpf,String nome){
        this.cpf = cpf;
        this.nome = nome;
    }

    public int getCpf()
    {
        return cpf;
    }

    public void setCpf(int cpf)
    {
        this.cpf = cpf;
    }

    public String getNome()
    {
        return nome;
    }

    public void setNome(String nome)
    {
        this.nome = nome;
    }

    public void mostra()
    {
        System.out.println(this.cpf);
        System.out.println(this.nome);
    }
}
