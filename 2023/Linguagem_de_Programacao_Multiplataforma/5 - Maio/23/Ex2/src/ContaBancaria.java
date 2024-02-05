public abstract class ContaBancaria {
    private double sal;

    public ContaBancaria(double sal)
    {
        this.sal = sal;
    }

    public void depositar(double v)
    {
        if(v<=0)
        {
            throw new ValorInvalidoExcepcion(v);
        }
        else
        {
            sal += v;
        }
    }

    public void sacar(double v)
    {
        if(v<=0)
        {
            throw new ValorInvalidoExcepcion(v);
        }
        else if(v>sal)
        {
            throw new SaldoInsuficienteException(v);
        }
        else
        {
            sal-=v;
        }
    }

    public void transferir(double v, ContaBancaria c)
    {
        if(v<=0)
        {
            throw new ValorInvalidoExcepcion(v);
        }
        else if (v>sal)
        {
            throw new SaldoInsuficienteException(v);
        }
        else
        {
            sal -= v;
            c.depositar(v);
        }
    }

    public abstract void calcSaldo();

    public double getSal() {
        return sal;
    }

    public void setSal(double sal) {
        this.sal = sal;
    }
}
