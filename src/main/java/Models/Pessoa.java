package Models;

public class Pessoa {
    private String nome;
    private String cpf;
    private String telefone;
    private String email;
    private String endereco;
    private boolean condomino;

    public Pessoa() {
        this.nome = "";
        this.cpf = "";
        this.telefone = "";
        this.email = "";
        this.endereco = "";
        this.condomino = false;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public boolean isCondomino() {
        return condomino;
    }

    public void setCondomino(boolean condomino) {
        this.condomino = condomino;
    }
    
    
    
    
}
