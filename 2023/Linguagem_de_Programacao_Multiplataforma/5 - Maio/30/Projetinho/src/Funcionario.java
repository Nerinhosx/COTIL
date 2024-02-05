public class Funcionario extends Pessoa implements IPessoa {
    private int id;
    private String funcao;

    @Override
    public void exibir() {
        System.out.println(super.getNome() +"\n"+ id +"\n"+ super.getIdade() +"\n"+ super.getCpf() +"\n"+ funcao +"\n-------------------------------------");
    }

    public Funcionario() {
        super(0, "", 0);
        id = 0;
        funcao = "";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        if (id<=0)
        {
            throw new IllegalArgumentException("O ID não pode ser negativo.");
        }
        else {
            this.id = id;
        }
    }

    public String getFuncao() {
        return funcao;
    }

    public void setFuncao(String funcao) {
        if (funcao==null)
        {
            throw new NullPointerException("A função não pode ser nula.");
        }
        else if (funcao=="") {
            throw new IllegalArgumentException("A função deve ser informada.");
        }
        else {
            this.funcao = funcao;
        }
    }
}
