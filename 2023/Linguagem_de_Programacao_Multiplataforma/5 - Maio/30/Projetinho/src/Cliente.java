public class Cliente extends Pessoa implements IPessoa{
    private String sobrenome;
    private String telefone;


    @Override
    public void exibir() {
        System.out.println(super.getNome() +" "+ sobrenome +"\n"+ super.getIdade() +"\n"+ super.getCpf() +"\n"+ telefone +"\n-------------------------------------");
    }

    public Cliente(){
        super(0, "", 0);
        sobrenome = "";
        telefone = "";
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        if (sobrenome == null) {
            throw new NullPointerException("Sobrenome não pode ser nulo.");
        } else {
            this.sobrenome = sobrenome;
        }
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        if(telefone==""){
            throw new IllegalArgumentException("O telefone deve ser informado.");
        }
        else if (telefone==null)
        {
            throw new NullPointerException("O telefone não pode ser nulo.");
        }
        else {
            this.telefone = telefone;
        }
    }
}
