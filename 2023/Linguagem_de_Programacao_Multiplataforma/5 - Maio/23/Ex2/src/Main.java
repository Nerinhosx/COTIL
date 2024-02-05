public class Main {
    public static void main(String[] args) {
        ContaCorrente cc1 = new ContaCorrente(2500);
        ContaInvestimento ci1 = new ContaInvestimento(1800);

        try
        {
            cc1.depositar(-250);
        }
        catch (ValorInvalidoExcepcion e)
        {
            System.out.println(e.getMessage());
        }

        try
        {
            cc1.sacar(27000);
        }
        catch (ValorInvalidoExcepcion e)
        {
            System.out.println(e.getMessage());
        }
        catch (SaldoInsuficienteException e)
        {
            System.out.println(e.getMessage());
        }

        try
        {
            cc1.transferir(10, ci1);
        }
        catch (ValorInvalidoExcepcion e)
        {
            System.out.println(e.getMessage());
        }
        catch (SaldoInsuficienteException e)
        {
            System.out.println(e.getMessage());
        }

        try
        {
            ci1.depositar(100);
        }
        catch (ValorInvalidoExcepcion e)
        {
            System.out.println(e.getMessage());
        }

        try
        {
            ci1.sacar(1000);
        }
        catch (ValorInvalidoExcepcion e)
        {
            System.out.println(e.getMessage());
        }
        catch (SaldoInsuficienteException e)
        {
            System.out.println(e.getMessage());
        }

        try
        {
            ci1.transferir(900, cc1);
        }
        catch (ValorInvalidoExcepcion e)
        {
            System.out.println(e.getMessage());
        }
        catch (SaldoInsuficienteException e)
        {
            System.out.println(e.getMessage());
        }

        System.out.println(cc1.getSal());
        System.out.println(ci1.getSal());
        cc1.calcSaldo();
        ci1.calcSaldo();
    }
}