public class Tetraedro extends FormaTridimensional{
    private double ap;
    private double arb;
    private double hb;
    private double hp;

    public Tetraedro(double ap, double arb, double hb, double hp) {
        this.ap = ap;
        this.arb = arb;
        this.hb = hb;
        this.hp = hp;
    }

    public double obterArea()
    {
        return (arb*hb*0.5)+3*arb*ap*0.5;
    }

    public double obterVolume()
    {
        return (arb*hb*0.5*hp)/3;
    }
}
