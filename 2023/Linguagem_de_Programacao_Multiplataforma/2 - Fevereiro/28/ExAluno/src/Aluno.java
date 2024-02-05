public class Aluno {
    private String nome;
    private int ra;

    public Aluno (String n, int ra)
    {
        this.nome = n;
        this.ra = ra;
    }

    public Aluno()
    {
        this.nome = "";
        this.ra = 0;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getRa() {
        return ra;
    }

    public void setRa(int ra) {
        this.ra = ra;
    }
}
