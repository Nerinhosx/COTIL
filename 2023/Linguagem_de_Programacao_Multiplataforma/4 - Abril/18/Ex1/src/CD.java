public class CD extends Produto{
    private int nf;

    public CD(int cod, String nome, double prc, int nf)
    {
        super(cod, nome, prc);
        this.nf=nf;
    }

    public int getNf() {
        return nf;
    }

    public void setNf(int nf) {
        this.nf = nf;
    }

    @Override
    public String toString()
    {
        return (super.toString() +"\n"+ nf);
    }
}
