public abstract class Empregado {
    private String nome;
    private String sobreN;
    private int cpf;

    public Empregado(String nome, String sobreN, int cpf)
    {
        this.nome = nome;
        this.sobreN = sobreN;
        this.cpf = cpf;
    }

    public abstract double vencimento();
}
