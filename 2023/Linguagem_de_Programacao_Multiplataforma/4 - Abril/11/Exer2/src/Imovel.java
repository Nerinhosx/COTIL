public class Imovel {
    private String end;
    private double prc;

    public Imovel(String end, double prc)
    {
        this.end=end;
        this.prc=prc;
    }

    public void imprime()
    {
        System.out.println(end);
        System.out.println(prc);
    }
}
