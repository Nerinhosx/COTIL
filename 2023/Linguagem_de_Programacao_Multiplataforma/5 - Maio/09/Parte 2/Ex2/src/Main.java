import java.util.ArrayList;
public class Main {
    public static void main(String[] args){

       int qtdBola=0, qtdCarta=0;

       Futebol f1 = new Futebol("Club de Regatas Vasco da Gama", "Clube de Regatas do Flamengo");
       Volei v1 = new Volei("Idos de Março", "Fiat/Minas");
       Truco t1 = new Truco(4);
       Buraco b1 = new Buraco(6);
       //Instanciando objetos

       ArrayList<Jogo> lista = new ArrayList<Jogo>();
       //Instanciando ArrayList

       lista.add(f1);
       lista.add(v1);
       lista.add(t1);
       lista.add(b1);
       //Add no ArrayList

       for(Jogo j : lista)
       {

           if(j instanceof Futebol)
           {
               Futebol f = (Futebol) j;
               f.iniciar();
               f.jogar();
               System.out.println("\n");
               qtdBola++;
           }

           if(j instanceof Volei)
           {
               Volei v = (Volei) j;
               v.iniciar();
               v.jogar();
               System.out.println("\n");
               qtdBola++;
           }

           if(j instanceof Truco)
           {
               Truco t = (Truco) j;
               t.iniciar();
               t.jogar();
               System.out.println("\n");
               qtdCarta++;
           }

           if(j instanceof Buraco)
           {
               Buraco b = (Buraco) j;
               b.iniciar();
               b.jogar();
               System.out.println("\n");
               qtdCarta++;
           }

       }
       //Printando os métodos

        System.out.println("A quantidade de jogos com bola salvos é: "+ qtdBola +"\nA quantidade de jogos de carta salvos é: "+ qtdCarta);
    }
}