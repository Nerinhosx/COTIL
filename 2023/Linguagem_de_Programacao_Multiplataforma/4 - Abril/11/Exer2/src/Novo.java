public class Novo extends Imovel{
    private double prcad;

    public Novo(String end, double prc, double prcad) {
        super(end, prc);
        this.prcad = prcad;
    }

    @Override
    public void imprime()
    {
        super.imprime();
        System.out.println(prcad);
    }
}
