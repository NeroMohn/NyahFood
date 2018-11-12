package dao;

import model.Cliente;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ClienteDAO {

    public static void gravar(Cliente cliente) throws SQLException, ClassNotFoundException{

        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "Insert into cliente (idCliente, nome, cpf, email,  senha,  foto, telefone, logradouro,  cep,  numero, bairro,  complemento,  cidade, estado)"
                         + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, cliente.getIdCliente());
            comando.setString(2 ,cliente.getNome());
            comando.setString(3, cliente.getCpf());
            comando.setString(4, cliente.getEmail());
            comando.setString(5, cliente.getSenha());
            comando.setString(6, cliente.getFoto());
            comando.setString(7, cliente.getTelefone());
            comando.setString(8, cliente.getLogradouro());
            comando.setString(9, cliente.getCep());
            comando.setString(10, cliente.getNumero());
            comando.setString(11, cliente.getBairro());
            comando.setString(12, cliente.getComplemento());
            comando.setString(13, cliente.getCidade());
            comando.setString(14, cliente.getEstado());
            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch (SQLException e){throw e;}
    }


    public static void alterar(Cliente cliente) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update cliente set nome = ?, cpf = ?, email = ?, senha = ?, foto = ?, telefone = ?," +
                    " logradouro = ?, cep = ?, numero = ?, bairro = ?, complemento = ?, cidade = ?, estado = ? where idCliente = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, cliente.getIdCliente());
            comando.setString(2 ,cliente.getNome());
            comando.setString(3, cliente.getCpf());
            comando.setString(4, cliente.getEmail());
            comando.setString(5, cliente.getSenha());
            comando.setString(6, cliente.getFoto());
            comando.setString(7, cliente.getTelefone());
            comando.setString(8, cliente.getLogradouro());
            comando.setString(9, cliente.getCep());
            comando.setString(10, cliente.getNumero());
            comando.setString(11, cliente.getBairro());
            comando.setString(12, cliente.getComplemento());
            comando.setString(13, cliente.getCidade());
            comando.setString(14, cliente.getEstado());
            comando.execute();
            BD.fecharConexao(conexao, comando);

        }catch (SQLException e){
            throw e;
        }
    }


    public static void excluir (Cliente cliente) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "delete from cliente where idCliente = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, cliente.getIdCliente());
            comando.execute();
        }
        catch (SQLException e){
            throw e;

        }finally{
            BD.fecharConexao(conexao,comando);
        }
    }

    public static Cliente obterCliente(long idCliente) throws ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        Cliente cliente = null;
        try{
            conexao = BD.getConexao();
            String sql ="SELECT * FROM cliente WHERE idCliente = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1,idCliente);
            ResultSet rs = comando.executeQuery();
            rs.first();
            cliente = new Cliente (rs.getLong("idCliente"),
                    rs.getString("nome"),
                    rs.getString("cpf"),
                    rs.getString("email"),
                    rs.getString("senha"),
                    rs.getString("foto"),
                    rs.getString("telefone"),
                    rs.getString("logradouro"),
                    rs.getString("cep"),
                    rs.getString("numero"),
                    rs.getString("bairro"),
                    rs.getString("complemento"),
                    rs.getString("cidade"),
                    rs.getString("estado"));
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            BD.fecharConexao(conexao, comando);
        }
        return cliente;
    }

    public static List<Cliente> obterTodosClientes() throws ClassNotFoundException{
        Connection conexao = null;
        Statement comando = null;
        Cliente cliente = null;
        List<Cliente> clientes = new ArrayList<Cliente>();
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM cliente";
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            do {
                cliente = new Cliente (rs.getLong("idCliente"),
                    rs.getString("nome"),
                    rs.getString("cpf"),
                    rs.getString("email"),
                    rs.getString("senha"),
                    rs.getString("foto"),
                    rs.getString("telefone"),
                    rs.getString("logradouro"),
                    rs.getString("cep"),
                    rs.getString("numero"),
                    rs.getString("bairro"),
                    rs.getString("complemento"),
                    rs.getString("cidade"),
                    rs.getString("estado"));
                clientes.add(cliente);
                
            }while (rs.next());
        }
        catch(SQLException e){
            e.printStackTrace();
        }finally{
            BD.fecharConexao(conexao, comando);
        }
        
        return clientes;
        
    }
    
    

}

