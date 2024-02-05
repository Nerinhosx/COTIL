public class RegistroAcademico {
    private String nome;
    private static int nMat=0;
    private int codCur;
    private double pCob;

    public RegistroAcademico(String nome, int codCur, double pCob)
    {
        this.nome=nome;
        nMat++;
        this.codCur=codCur;
        this.pCob=pCob;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public static int getnMat() {
        return nMat;
    }

    public static void setnMat(int nMat) {
        RegistroAcademico.nMat = nMat;
    }

    public int getCodCur() {
        return codCur;
    }

    public void setCodCur(int codCur) {
        this.codCur = codCur;
    }

    public double getpCob() {
        return pCob;
    }

    public void setpCob(double pCob) {
        this.pCob = pCob;
    }
}
