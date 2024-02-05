public class Pessoa {
    private int idade;
    private int dia;
    private int mes;
    private int ano;
    private String nome;
    private int diaa;
    private int mesa;
    private int anoa;

    public Pessoa(int dia, int mes, int ano)
    {
        this.dia = dia;
        this.mes = mes;
        this.ano = ano;
    }

    public Pessoa(int dia, int mes, int ano, String nome)
    {
        this.dia = dia;
        this.mes = mes;
        this.ano = ano;
        this.nome = nome;
    }

    public int getIdade()
    {
        return idade;
    }

    public void setIdadeEDataAtual(int diaa, int mesa, int anoa)
    {
        this.diaa = diaa;
        this.mesa = mesa;
        this.anoa = anoa;
        idade = this.anoa-ano;
    }

    public int getDia()
    {
        return dia;
    }

    public void setDia(int dia)
    {
        if((1<=dia)&&(dia<=31))
            this.dia = dia;
        else
            System.out.println("Dia inválido informado. Tente novamente.");
    }

    public int getMes()
    {
        return mes;
    }

    public void setMes(int mes)
    {
        if((1<=mes)&&(mes<=12))
            this.mes = mes;
        else
            System.out.println("Mês inválido informado. Tente novamente.");
    }

    public int getAno()
    {
        return ano;
    }

    public void setAno(int ano)
    {
        if(1000<=ano)
            this.ano = ano;
        else
            System.out.println("Ano inválido informado. Tente novamente.");
    }

    public String getNome()
    {
        return nome;
    }

    public void setNome(String nome)
    {
        this.nome = nome;
    }
}
