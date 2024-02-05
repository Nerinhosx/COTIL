public class Main {
    public static void main(String[] args) {

        Aluno al = new Aluno();
        IAluno al2 = new Aluno();
        al2.chorar();
        IAluno al3 = new Bolsista();
        al3.chorar();
        System.out.println(al3.calcMedia(10,2));
        //IAluno a = new IAluno(); Adm n liberou


    }
}