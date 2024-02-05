public class ContaEspecial extends ContaBancaria{
    private float lim;

    public ContaEspecial(String cliente, int numConta, double saldo, float lim)
    {
        super(cliente, numConta, saldo);
        this.lim=lim;
    }

    @Override
    public void sacar(double sac)
    {
        if((sac>saldo)&&(saldo>0))
        {
            if(lim>=sac-saldo)
            {
                sac-=saldo;
                saldo=0;
                lim-=sac;
            }
            else if (saldo>0)
            {
                System.out.println("ERRO! O valor a sacar excede o limite permitido. Sacando o valor disponível. . .");
                saldo=0;
                lim=0;
            }
            else
                System.out.println("ERRO! Saldo negativo.");
        }
        else
        {
            saldo -= sac;
        }
    }
}
