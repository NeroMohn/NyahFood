package model;

import java.util.ArrayList;
import java.util.List;

public class Loja extends Usuario {

    private Long idLoja;
    private String CNPJ;
    private String descricao;
    private String nomeGerente;
    private List<String> pagamento;


    public Loja(){
        super();
    }

    public Loja(Long idLoja, String nome, String telefone, String email, String senha, String foto, String CEP, String logradouro, String bairro, String complemento, String cidade, String estado, String numero, String CNPJ, String descricao, String nomeGerente) {
        super(nome, telefone, email, senha, foto, CEP, logradouro, bairro, complemento, cidade, estado, numero);
        this.idLoja = idLoja;
        this.CNPJ = CNPJ;
        this.descricao = descricao;
        this.nomeGerente = nomeGerente;
        this.pagamento = pagamento;

    }


    public Long getIdLoja() {
        return idLoja;
    }

    public void setIdLoja(Long idLoja) {
        this.idLoja = idLoja;
    }

    public String getCNPJ() {
        return CNPJ;
    }

    public void setCNPJ(String CNPJ) {
        this.CNPJ = CNPJ;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getNomeGerente() {
        return nomeGerente;
    }

    public void setNomeGerente(String nomeGerente) {
        this.nomeGerente = nomeGerente;
    }

    public List<String> getPagamento() {
        return pagamento;
    }

    public void setPagamento(List<String> pagamento) {
        this.pagamento = pagamento;
    }

}
