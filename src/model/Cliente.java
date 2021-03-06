    package model;


import dao.ClienteDAO;

import java.sql.SQLException;
import java.util.List;

public class Cliente extends Usuario {

    private Long idCliente;
    private String cpf;
 

    public Cliente(Long idCliente, String nome,String cpf,
            String email, String senha,String telefone,
            String logradouro, String cep, String numero,
            String bairro, String complemento, String cidade,
            String estado) {
        super(nome, email, senha, telefone, logradouro, cep, numero, bairro, complemento, cidade, estado);
        this.idCliente = idCliente;
        this.cpf = cpf;
    }
        public Cliente( String nome,String cpf,
            String email, String senha,String telefone,
            String logradouro, String cep, String numero,
            String bairro, String complemento, String cidade,
            String estado) {
        super(nome, email, senha, telefone, logradouro, cep, numero, bairro, complemento, cidade, estado);
        this.cpf = cpf;
    }
    
    public Long getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(Long idCliente) {
        this.idCliente = idCliente;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public void gravar() throws SQLException, ClassNotFoundException{
        ClienteDAO.gravar(this);
    }

    public void alterar() throws SQLException, ClassNotFoundException{
        ClienteDAO.alterar(this);
    }

    public void excluir() throws SQLException, ClassNotFoundException{
        ClienteDAO.excluir(this);
    }

    public static Cliente obterCliente(Long idCliente) throws SQLException, ClassNotFoundException{
        return ClienteDAO.obterCliente(idCliente);
    }
    public static Cliente obterCliente(String email) throws SQLException, ClassNotFoundException{
        return ClienteDAO.obterCliente(email);
    }

    public static List<Cliente> obterTodosClientes() throws SQLException, ClassNotFoundException{
        return ClienteDAO.obterTodosClientes();
    }
}
