public class Produto {

    protected int cod;
    protected String nome;
    protected double prc;

    public Produto(int cod, String nome, double prc)
    {
        this.cod = cod;
        this.nome = nome;
        this.prc = prc;
    }

    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getPrc() {
        return prc;
    }

    public void setPrc(double prc) {
        this.prc = prc;
    }

    @Override
    public String toString()
    {
        return (cod +"\n"+ nome +"\n"+ prc);
    }
}
