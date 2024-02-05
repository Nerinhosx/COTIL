public class Aluno {
    //Definição de atributos
    private String nome;
    private int ra;
    private double altura;
    private int idade;
    private boolean estd;

    //Instanciação da classe Aluno

    //Definição de métodos
    public void setEstudar(boolean estd)
    {
        this.estd = estd;
    }

    public void getEstudar()
    {
        if(estd)
        {
            System.out.println("O aluno está estudando.");
        }
        else
        {
            System.out.println("O aluno não está estudando.");
        }
    }

    public void setIdade(int idade)
    {
        this.idade = idade;
    }

    public int getIdade()
    {
        return idade;
    }

    public void setRA(int ra)
    {
        this.ra = ra;
    }

    public int getRA()
    {
        return ra;
    }

    public void setNome(String nome)
    {
        this.nome = nome;
    }

    public String getNome()
    {
        return nome;
    }

    public void setAltura(double altura)
    {
        this.altura = altura;
    }

    public double getAltura()
    {
        return altura;
    }

}
