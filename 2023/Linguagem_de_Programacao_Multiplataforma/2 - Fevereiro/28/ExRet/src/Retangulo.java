public class Retangulo {
    private float base;
    private float altura;
    private float p;
    private float a;

    public Retangulo()
    {
        base = 1;
        altura = 1;
    }

    public float getBase()
    {
        return base;
    }

    public void setBase(float base)
    {
        if((base>=1)&&(base<=20))
            this.base = base;
        else
            System.out.println("Erro! O valor da base não está entre 1 e 20.");
    }

    public float getAltura()
    {
        return altura;
    }

    public void setAltura(float altura)
    {
        if((altura>=1)&&(altura<=20))
            this.altura = altura;
        else
            System.out.println("Erro! O valor da altura não está entre 1 e 20.");
    }

    public float getP()
    {
        p = 2*base + 2*altura;
        return p;
    }

    public float getA()
    {
        a = base * altura;
        return a;
    }
}
