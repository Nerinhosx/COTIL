public class SimuladorCaixaBanco {
    private static int numeroDoCliente=0;
    private int numeroDoCaixa;

    public SimuladorCaixaBanco(int n)
    {
        numeroDoCaixa = n;
        numeroDoCliente++;
        System.out.println("Caixa "+numeroDoCaixa+" iniciou operação.");
    }
    public void proximoAtendimento()
    {
        System.out.print("Cliente com a senha nº "+numeroDoCliente+", favor dirigir-se ao caixa nº "+numeroDoCaixa+".");
    }
}
