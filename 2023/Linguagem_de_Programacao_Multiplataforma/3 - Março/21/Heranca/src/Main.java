class Main {
    public static void main(String[] args) {

        Pessoa p2 = new Aluno(555, "Fulano", 4444);
        p2.mostraTipo();
        Pessoa p3 = new Professor(1517,"Edvaldo",13000);
        p3.mostraTipo();
        Aluno al4 = new Bolsista(7896,"Tigresa",0203, 1717);
        al4.mostraTipo();
        Aluno al5 = new Aluno(999,"Rasec",5544);
        Pessoa p4 = (Pessoa) al5;
        p4.mostraTipo();
        if(al4 instanceof Pessoa)
            System.out.println("É instância");
        else
            System.out.println("Não é instância");

        System.out.println("---------------------");




        Pessoa p1 = new Pessoa(1234,"João");
        //p1.setNome("Jão");
        //p1.setCpf(1234);
        p1.mostra();
        System.out.println("---------------------");

        Aluno al1 = new Aluno(6789,"Maria",1111);
        //al1.setNome("Maria");
        //al1.setCpf(6789);
        //al1.setRa(1111);
        al1.mostra();
        al1.calcMedia(3, 7);
        System.out.println("---------------------");

        Professor prof1 = new Professor(9087,"Rosana",1000);
        //prof1.setNome("Rosana");
        //prof1.setCpf(9087);
        //prof1.setSalario(1000);

        Bolsista b1 = new Bolsista(7896,"Newton",2222,100);
        double mediaBols = b1.calcMedia(3, 7);
        System.out.println(mediaBols);
        //b1.setNome("Newton");
        //b1.setCpf(7896);
        //b1.setRa(2222);
        //b1.setBolsa(100);
        b1.mostra();
    }
}