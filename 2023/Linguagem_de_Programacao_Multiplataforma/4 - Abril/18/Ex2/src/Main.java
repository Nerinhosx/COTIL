import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        //Instanciação
        Assalariado a1 = new Assalariado("Jedson Henrique R. Adorno", 3750.25);
        Assalariado a2 = new Assalariado("Arthur de O. Nero", 3450.25);
        Horista h1 = new Horista("Marcos Antônio Mesquita Jr.", 350, 120);
        Horista h2 = new Horista("Samuel Nicoluchi Dias", 175, 150);

        //Criação/Atribuição do ArrayList
        ArrayList<Funcionario> lista = new ArrayList<Funcionario>();

        lista.add(a1);
        lista.add(a2);
        lista.add(h1);
        lista.add(h2);

        //Folha de pagamento
        double s=0;
        for(Funcionario f: lista)
        {
            if(f instanceof Assalariado)
            {
                Assalariado a = (Assalariado) f;
                s+=a.getPay();
            }
            else if(f instanceof Horista)
            {
                Horista h = (Horista) f;
                s+=h.getPay();
            }
        }
        System.out.println("\nA folha de pagamento da empresa é de : "+ s);
        System.out.println("----------------------------------------------");

        //Pagamento somente de Assalariados
        double sa=0;
        for(Funcionario f: lista)
        {
            if(f instanceof Assalariado)
            {
                Assalariado a = (Assalariado) f;
                sa+=a.getPay();
            }
        }
        System.out.println("\nO valor total que a empresa deve pagar para os Assalariados é de: "+ sa);

        //Soma horas trabalhadas pelos Horistas
        double sh=0;
        for(Funcionario f: lista)
        {
            if(f instanceof Horista)
            {
                Horista h = (Horista) f;
                sh+=h.getH();
            }
        }
        System.out.println("\nAs horas acumuladas pelos Horistas é: "+ sh);
    }
}