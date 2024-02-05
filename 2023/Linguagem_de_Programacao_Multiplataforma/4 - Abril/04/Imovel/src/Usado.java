public class Usado extends Imovel{
    private double dprc;

    public Usado(int code, String edc, double prc, double dprc)
    {
        super(code, edc, prc);
        this.dprc=dprc;
    }

    public double getDprc() {
        return dprc;
    }

    public void setDprc(double dprc) {
        this.dprc = dprc;
    }

    public void valorFinal()
    {
        prc-=dprc;
        dprc=0;
    }
}
