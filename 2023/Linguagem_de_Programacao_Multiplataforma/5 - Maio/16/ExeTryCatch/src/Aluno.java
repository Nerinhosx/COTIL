public class Aluno {
    private int ra;
    private String nome;
    private double altura;

    public int getRa() {
        return ra;
    }

    public void setRa(int ra) {
        if(ra<0)
        {
            throw new IllegalArgumentException("O RA não pode ser negativo.");
        }
        else
        {
            this.ra = ra;
        }
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        if((nome==null)||(nome==""))
        {
            throw new IllegalArgumentException("O nome deve ser informado.");
        }
        else
        {
            this.nome = nome;
        }
    }

    public double getAltura() {
        return altura;
    }

    public void setAltura(double altura) {
        this.altura = altura;
    }
}
