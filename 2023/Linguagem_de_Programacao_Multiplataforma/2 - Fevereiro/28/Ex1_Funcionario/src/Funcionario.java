public class Funcionario {
    private String nome;
    private String sobrenome;
    private double sm;
    private double sma;
    private double sa;

    public Funcionario()
    {
        nome = "";
        sobrenome = "";
        sm = 0;
    }

    public Funcionario(String n, String sn, double salm)
    {
        nome = n;
        sobrenome = sn;
        if(salm<0)
            sm = 0;
        else
            sm = salm;
    }

    public String getNome()
    {
        return nome;
    }

    public void setNome(String nome)
    {
        this.nome = nome;
    }

    public String getSobrenome()
    {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome)
    {
        this.sobrenome = sobrenome;
    }

    public double getSm()
    {
        return sm;
    }

    public void setSm(double sm)
    {
        if(sm<0)
            this.sm = 0;
        else
            this.sm = sm;
    }

    public double getSa()
    {
        sa = sm*12;
        return sa;
    }

    public double getSma()
    {
        sma = sm*1.1;
        sma = sma*12;
        return sma;
    }
}
