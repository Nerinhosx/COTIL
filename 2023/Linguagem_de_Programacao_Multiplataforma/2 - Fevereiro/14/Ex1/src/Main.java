public class Main {
    public static void main(String[] args) {
        Aluno al1 = new Aluno();
        al1.setNome("Nero");
        al1.setAltura(1.86);
        al1.setEstudar(true);
        al1.setRA(202227);
        al1.setIdade(15);
        System.out.println("O nome é: "+ al1.getNome());
        System.out.println("A altura é: "+ al1.getAltura());
        al1.getEstudar();
        System.out.println("O ra é: "+ al1.getRA());
        System.out.println("A idade é: "+ al1.getIdade());

        System.out.println("\n");
        Aluno al2 = new Aluno();
        al2.setNome("Jedson");
        al2.setAltura(0.01);
        al2.setEstudar(false);
        al2.setRA(69696969);
        al2.setIdade(16);
        System.out.println("O nome é: "+ al2.getNome());
        System.out.println("A altura é: "+ al2.getAltura());
        al2.getEstudar();
        System.out.println("O ra é: "+ al2.getRA());
        System.out.println("A idade é: "+ al2.getIdade());

        System.out.println("\n");
        Disciplina dc = new Disciplina();
        dc.setNome("LPM");
        dc.setProf("Tania Basso");
        dc.setCH(68);
        System.out.println("O nome da disciplina é: "+ dc.getNome());
        System.out.println("O nome da professora responsável é: "+ dc.getProf());
        System.out.println("A carga horária da disciplina "+ dc.getNome() +" é de "+ dc.getCH() +" horas");
    }
}