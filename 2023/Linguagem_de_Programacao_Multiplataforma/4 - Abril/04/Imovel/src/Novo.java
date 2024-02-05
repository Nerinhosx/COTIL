public class Novo extends Imovel{
    private double prcad;

    public Novo(int code, String edc, double prc, double prcad)
    {
        super(code, edc, prc);
        this.prcad=prcad;
    }

    public double getPrcad() {
        return prcad;
    }

    public void setPrcad(double prcad) {
        this.prcad = prcad;
    }

    public void valorFinal()
    {
        prc+=prcad;
        prcad=0;
    }
}
