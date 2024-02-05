public class Horista extends Funcionario{
    private double th;
    private double h;

    public Horista(String nome, double th, double h)
    {
        super(nome);
        this.th=th;
        this.h=h;
    }

    @Override
    public double getPay()
    {
        return th*h;
    }

    public void addHoras(double ho)
    {
        h+=ho;
    }

    public double getTh() {
        return th;
    }

    public void setTh(double th) {
        this.th = th;
    }

    public double getH() {
        return h;
    }

    public void setH(double h) {
        this.h = h;
    }
}
