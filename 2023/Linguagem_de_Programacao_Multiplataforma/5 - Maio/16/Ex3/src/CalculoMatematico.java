public class CalculoMatematico {
    public int divisao(int a, int b)
    {
        if(b==0)
        {
            throw new ArithmeticException("A operação não pode ser realizada.");
        }
        else
        {
            b=(a/b);
        }
        return b;
    }
}
