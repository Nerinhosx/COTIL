import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        int i;
        float pc;
        Scanner tc=new Scanner(System.in);

        for(i=1;i<21;i++)
        {
            System.out.print("Informe o preço de custo do produto "+ i +": ");
            pc=tc.nextFloat();
            if(pc>=100)
            {
                pc+=50;
            }
            else
            {
                pc+=20;
            }
            System.out.print("\nO preço de venda do produto "+ i +" é: "+ pc +"\n\n");
        }
    }
}