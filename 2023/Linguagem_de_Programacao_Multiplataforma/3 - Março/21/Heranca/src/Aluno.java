public class Aluno extends Pessoa {
    protected int ra;

    public Aluno(int cpf, String nome, int ra) {
        super(cpf, nome);
        this.ra = ra;
    }

    @Override
    public void mostraTipo()
    {
        System.out.println("É um aluno.");
    }

    public double calcMedia(double n1, double n2)
    {
        double media;
        media=(n1+n2)/2;
        return media;
    }

    public int getRa()
    {
        return ra;
    }

    public void setRa(int ra)
    {
        this.ra = ra;
    }

    @Override
    public void mostra()
    {
        super.mostra();
        System.out.println(this.ra);
    }
}