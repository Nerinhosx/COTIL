public class Livro extends Produto{
    private String autor;

    public Livro(int cod, String nome, double prc, String autor)
    {
        super(cod, nome, prc);
        this.autor=autor;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    @Override
    public String toString()
    {
        return (super.toString() +"\n"+ autor);
    }
}
