public class Bolsista extends Aluno{
    private double bolsa;

    @Override
    public void mostraTipo()
    {
        System.out.println("É um bolsista.");
    }

    public Bolsista(int cpf, String nome, int ra, double bolsa) {
        super(cpf, nome, ra);
        this.bolsa = bolsa;
    }

    @Override
    public double calcMedia(double n1, double n2)
    {
        double media;
        media = super.calcMedia(n1, n2)+1;
        return media;
    }

    public double getBolsa() {
        return bolsa;
    }

    public void setBolsa(double bolsa) {
        this.bolsa = bolsa;
    }

    @Override
    public void mostra()
    {
        super.mostra();
        System.out.println(this.bolsa);
    }
}