public class Aluno {
    private int ra;
    private String nome;
    private double cr;
    private static double crTurma;
    private static int contAluno=0;
    private static double somaTurma=0;

    public Aluno(int ra, String nome, double cr)
    {
        this.ra = ra;
        this.nome=nome;
        this.cr=cr;
        contAluno++;
        somaTurma+=cr;
    }

    public static double calcularCrTurma()
    {
        crTurma=somaTurma/contAluno;
        return crTurma;
    }

    public int getRa() {
        return ra;
    }

    public void setRa(int ra) {
        this.ra = ra;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getCr() {
        return cr;
    }

    public void setCr(double cr) {
        this.cr = cr;
    }

    public static double getCrTurma() {
        return crTurma;
    }

    public static void setCrTurma(double crTurma) {
        Aluno.crTurma = crTurma;
    }

    public static int getContAluno() {
        return contAluno;
    }

    public static void setContAluno(int contAluno) {
        Aluno.contAluno = contAluno;
    }

    public static double getSomaTurma() {
        return somaTurma;
    }

    public static void setSomaTurma(double somaTurma) {
        Aluno.somaTurma = somaTurma;
    }

}
