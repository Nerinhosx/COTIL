public class DVD extends Produto{
    private double dur;

    public DVD(int cod, String nome, double prc, double dur)
    {
        super(cod, nome, prc);
        this.dur=dur;
    }

    public double getDur() {
        return dur;
    }

    public void setDur(double dur) {
        this.dur = dur;
    }

    @Override
    public String toString()
    {
        return (super.toString() +"\n"+ dur);
    }
}
