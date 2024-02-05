import java.util.Scanner;

public class Main{
    public static void main(String[] args){
        float nota;
        String nome;
        Scanner tec = new Scanner(System.in);
        System.out.print("Informe seu nome: ");
        nome = tec.nextLine();
        System.out.print("Informe a nota: ");
        nota = tec.nextFloat();
        System.out.println("Nome: "+ nome +"\nNota: "+ nota);
    }
}