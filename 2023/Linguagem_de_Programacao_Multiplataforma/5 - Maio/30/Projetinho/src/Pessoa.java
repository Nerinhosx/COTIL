public abstract class Pessoa{
    private int idade;
    private String nome;
    private int cpf;

    public Pessoa(int idade, String nome, int cpf) {
        this.idade = idade;
        this.nome = nome;
        this.cpf = cpf;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        if(idade<=0)
        {
            throw new IllegalArgumentException("Idade não pode ser negativa.");
        }
        else{
            this.idade = idade;
        }
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        if(nome==null)
        {
            throw new NullPointerException("Nome não pode ser nulo.");
        }
        else if(nome==""){
            throw new IllegalArgumentException("Nome deve ser informado.");
        }
        else {
            this.nome = nome;
        }
    }

    public int getCpf() {
        return cpf;
    }

    public void setCpf(int cpf) {
        if(cpf<=0){
            throw new IllegalArgumentException("O CPF não pode ser nulo ou negativo.");
        }
        else {
            this.cpf = cpf;
        }
    }
}
