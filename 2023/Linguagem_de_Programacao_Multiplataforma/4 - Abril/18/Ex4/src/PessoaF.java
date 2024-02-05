public class PessoaF extends Clientes{
    private int cpf;

    public PessoaF(String nome, String end, int tel, int cpf)
    {
        super(nome, end, tel);
        this.cpf = cpf;
    }

    public int getCpf() {
        return cpf;
    }

    public void setCpf(int cpf) {
        this.cpf = cpf;
    }
}
