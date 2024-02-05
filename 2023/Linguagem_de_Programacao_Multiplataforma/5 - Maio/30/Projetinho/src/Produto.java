public class Produto {
    private String descricao;
    private String marca;
    private double preco;
    private int codigo;
    private String sessao;//Sessão do supermercado na qual o produto se encontra

    public void exibir(){
        System.out.println(descricao +"\n"+ marca +" | "+ preco +" | "+ codigo +"\n"+ sessao);
    }

    public Produto() {
        descricao = "";
        marca = "";
        preco = 0;
        codigo = 0;
        sessao = "";
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        if (descricao==null)
        {
            throw new NullPointerException("A descrição não pde ser nula.");
        }
        else if (descricao=="")
        {
            throw new IllegalArgumentException("A descrição deve ser informada.");
        }
        else {
            this.descricao = descricao;
        }
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        if (marca==null)
        {
            throw new NullPointerException("A marca não pode ser nula.");
        }
        else if (marca=="") {
            throw new IllegalArgumentException("A marca deve ser informada.");
        }
        else {
            this.marca = marca;
        }
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        if (preco<=0)
        {
            throw new IllegalArgumentException("O preço deve ser positivo.");
        }
        else {
            this.preco = preco;
        }
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        if (codigo<=0)
        {
            throw new IllegalArgumentException("O código deve ser positivo.");
        }
        else {
            this.codigo = codigo;
        }
    }

    public String getSessao() {
        return sessao;
    }

    public void setSessao(String sessao) {
        if (sessao==null)
        {
            throw new NullPointerException("A sessão não pode ser nula.");
        }
        else if (sessao=="") {
            throw new IllegalArgumentException("A sessão deve ser informada.");
        }
        else {
            this.sessao = sessao;
        }
    }
}
