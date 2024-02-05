public class ContaBancaria {
    protected String cliente;
    protected int numConta;
    protected double saldo;

    public ContaBancaria(String cliente, int numConta, double saldo)
    {
        this.cliente=cliente;
        this.numConta=numConta;
        this.saldo=saldo;
    }

    public void sacar(double sac)
    {
        if((sac>saldo)&&(saldo>0))
        {
            System.out.println("ATENÇÃO!!! O valor a sacar excede o saldo atual. Sacando o valor disponível. . .");
            saldo = 0;
        }
        else if (saldo>0)
        {
            saldo-=sac;
        }
        else
        {
            System.out.println("ERRO! Saldo negativo.");
        }
    }

    public void depositar(double dep)
    {
        saldo+=dep;
    }
}
