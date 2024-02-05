import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner tc=new Scanner(System.in);
        int med=0, i=1, c=0;
        while(i>0)
        {
            System.out.print("Informe sua idade: ");
            i=tc.nextInt();
            if(i>0)
            {
                c++;
                med+=i;
            }
        }
        med=med/c;
        System.out.print("A média das idades informadas é: "+med);
    }
}