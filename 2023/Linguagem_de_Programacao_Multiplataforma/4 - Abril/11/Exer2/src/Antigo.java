public class Antigo extends Imovel{
    private double prcds;

    public Antigo(String end, double prc, double prcds) {
        super(end, prc);
        this.prcds = prcds;
    }

    @Override
    public void imprime()
    {
        super.imprime();
        System.out.println(prcds);
    }
}
