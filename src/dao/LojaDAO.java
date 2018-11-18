package dao;

import model.Loja;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class LojaDAO {

    public static void gravar(Loja loja) throws SQLException, ClassNotFoundException{

        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "Insert into loja ( nome,  telefone,  email,  senha,  foto,  cep,  logradouro,  bairro,  complemento,  cidade,  estado,  numero,  cnpj,  descricao,  nomeGerente)"
                    + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            comando = conexao.prepareStatement(sql);
           
          
            comando.setString(1,loja.getNome());
            comando.setString(2,loja.getTelefone());
            comando.setString(3,loja.getEmail());
            comando.setString(4,loja.getSenha());         
            comando.setString(5,loja.getFoto());
            comando.setString(6,loja.getCep());
            comando.setString(7,loja.getLogradouro());
            comando.setString(8,loja.getBairro());
            comando.setString(9,loja.getComplemento());
            comando.setString(10,loja.getCidade());
            comando.setString(11,loja.getEstado());
            comando.setString(12,loja.getNumero());
            comando.setString(13,loja.getCnpj());   
            comando.setString(14,loja.getDescricao());
            comando.setString(15,loja.getNomeGerente());



            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch (SQLException e){throw e;}



    }


    public static void alterar(Loja loja) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update loja set nome = ?, telefone = ?, email = ?, senha = ?, foto = ?, cep = ?," +
                    " logradouro = ?, bairro = ?, complemento = ?, cidade = ?, estado = ?, numero = ?,"+
                    " cnpj = ?, descricao = ?, nomeGerente = ?, where idLoja = ?";

            comando = conexao.prepareStatement(sql);
            comando.setString(1,loja.getNome());
            comando.setString(2,loja.getTelefone());
            comando.setString(3,loja.getEmail());
            comando.setString(4,loja.getSenha());
            comando.setString(5,loja.getFoto());
            comando.setString(6,loja.getCep());
            comando.setString(7,loja.getLogradouro());
            comando.setString(8,loja.getBairro());
            comando.setString(9,loja.getComplemento());
            comando.setString(10,loja.getCidade());
            comando.setString(11,loja.getEstado());
            comando.setString(12,loja.getNumero());
            comando.setString(13,loja.getCnpj());
            comando.setString(14,loja.getDescricao());
            comando.setString(15, loja.getNomeGerente());
            comando.setLong(16, loja.getIdLoja());

            comando.execute();
            BD.fecharConexao(conexao, comando);

        }catch (SQLException e){
            throw e;
        }
    }


    public static void excluir(Loja loja) throws SQLException, ClassNotFoundException{

        Connection conexao = null;
        PreparedStatement comando = null;

        try{
            conexao = BD.getConexao();
            String sql = "delete from loja where idLoja = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, loja.getIdLoja());
            comando.execute();


        }catch (SQLException e){throw  e;} finally {
            BD.fecharConexao(conexao, comando);
        }


    }

    public static Loja obterLoja(long idLoja) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Loja loja = null;
        try {
            conexao = BD.getConexao();
            String sql = "SELECT * FROM loja WHERE idLoja = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, idLoja);
            ResultSet rs = comando.executeQuery();
            rs.first();
            loja = new Loja(rs.getLong("idLoja"),
                    rs.getString("nome"),
                    rs.getString("telefone"),
                    rs.getString("email"),
                    rs.getString("senha"),
                    rs.getString("foto"),
                    rs.getString("cep"),
                    rs.getString("logradouro"),
                    rs.getString("bairro"),
                    rs.getString("complemento"),
                    rs.getString("cidade"),
                    rs.getString("estado"),
                    rs.getString("numero"),
                    rs.getString("cnpj"),
                    rs.getString("descricao"),
                    rs.getString("nomeGerente")
            );

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return loja;
    }

    public static List<Loja> obterTodasLojas() throws ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        Loja loja = null;
        List<Loja> lojas = new ArrayList<Loja>();
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM loja";
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            do {
            loja = new Loja(rs.getLong("idLoja"),
                        rs.getString("nome"),
                        rs.getString("telefone"),
                        rs.getString("email"),
                        rs.getString("senha"),
                        rs.getString("foto"),
                        rs.getString("cep"),
                        rs.getString("logradouro"),
                        rs.getString("bairro"),
                        rs.getString("complemento"),
                        rs.getString("cidade"),
                        rs.getString("estado"),
                        rs.getString("numero"),
                        rs.getString("cnpj"),
                        rs.getString("descricao"),
                        rs.getString("nomeGerente"));

                lojas.add(loja);
            }while (rs.next());
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return lojas;
    }
    
    public static Loja obterLoja(String email) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Loja loja = null;
        try {
            conexao = BD.getConexao();
            String sql = "SELECT * FROM loja WHERE email = ?";
            comando = conexao.prepareStatement(sql);
            comando.setString(1, email);
            ResultSet rs = comando.executeQuery();
            rs.first();
            loja = new Loja(rs.getLong("idLoja"),
                    rs.getString("nome"),
                    rs.getString("telefone"),
                    rs.getString("email"),
                    rs.getString("senha"),
                    rs.getString("foto"),
                    rs.getString("cep"),
                    rs.getString("logradouro"),
                    rs.getString("bairro"),
                    rs.getString("complemento"),
                    rs.getString("cidade"),
                    rs.getString("estado"),
                    rs.getString("numero"),
                    rs.getString("cnpj"),
                    rs.getString("descricao"),
                    rs.getString("nomeGerente")
            );
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return loja;
    } 

}
