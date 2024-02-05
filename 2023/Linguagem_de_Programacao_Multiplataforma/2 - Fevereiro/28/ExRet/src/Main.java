import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Retangulo ret = new Retangulo();

        Scanner tc = new Scanner(System.in);
        float b, al;

        System.out.print("Informe o valor da Base: ");
        b = tc.nextFloat();
        ret.setBase(b);
        System.out.print("Informe o valor da Altura: ");
        al = tc.nextFloat();
        ret.setAltura(al);
        System.out.println("\nValores:\n");
        System.out.println("Base: "+ ret.getBase()  +"\nAltura: "+ ret.getAltura() +"\nPerímetro: "+ ret.getP() +"\nÁrea: "+ ret.getA());
    }
}