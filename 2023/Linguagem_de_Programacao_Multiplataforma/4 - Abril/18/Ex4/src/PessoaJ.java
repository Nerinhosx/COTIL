public class PessoaJ extends Clientes{
    private int cnpj;
    private String nomF;

    public PessoaJ(String nome, String end, int tel, int cnpj, String nomF)
    {
        super(nome, end, tel);
        this.cnpj = cnpj;
        this.nomF = nomF;
    }

    public int getCnpj() {
        return cnpj;
    }

    public void setCnpj(int cnpj) {
        this.cnpj = cnpj;
    }

    public String getNomF() {
        return nomF;
    }

    public void setNomF(String nomF) {
        this.nomF = nomF;
    }
}
