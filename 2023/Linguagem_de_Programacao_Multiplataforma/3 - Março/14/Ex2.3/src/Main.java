public class Main {
    public static void main(String[] args) {
        RegistroAcademico r1 = new RegistroAcademico("Carlos", 2386, 0.5);
        System.out.println(r1.getNome());
        System.out.println(r1.getCodCur());
        System.out.println(r1.getpCob());
        RegistroAcademico r2 = new RegistroAcademico("Mateus", 9783, 0.6);
        System.out.println(r2.getNome());
        System.out.println(r2.getCodCur());
        System.out.println(r2.getpCob());
        System.out.println("\nAlunos matriculados: "+ RegistroAcademico.getnMat());
    }
}