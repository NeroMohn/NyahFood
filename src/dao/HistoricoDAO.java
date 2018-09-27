package dao;

import model.Historico;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class HistoricoDAO {
    public static void gravar(Historico historico) throws SQLException, ClassNotFoundException {

        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "Insert into historico (idHistorico, compra)"
                    + "values(?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, historico.getIdHistorico());
            if (historico.getCompra() == null) {
                comando.setNull(2, Types.NULL);
            } else {
                comando.setLong(2, historico.getCompra().getIdCompra());
            }

            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    private static void alterar(Historico historico) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update historico set compra = ?, loja = ? where idHistorico = ?";
            comando = conexao.prepareStatement(sql);
            if (historico.getCompra() == null) {
                comando.setNull(1, Types.NULL);
            } else {
                comando.setLong(1, historico.getCompra().getIdCompra());
            }
            comando.setLong(2, historico.getIdHistorico());
            comando.execute();
            BD.fecharConexao(conexao, comando);

        } catch (SQLException e) {
            throw e;
        }
    }


    public static void excluir(Historico historico) throws SQLException, ClassNotFoundException {

        Connection conexao = null;
        PreparedStatement comando = null;

        try {
            conexao = BD.getConexao();
            String sql = "delete from cardapio where idHistorico = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, historico.getIdHistorico());
            comando.execute();


        } catch (SQLException e) {
            throw e;
        } finally {
            BD.fecharConexao(conexao, comando);
        }


    }

    public static Historico obterHistorico(long idHistorico) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Historico historico = null;
        try {
            conexao = BD.getConexao();
            String sql = "SELECT * FROM historico WHERE idHistorico = ?";
            comando.setLong(1, idHistorico);
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            historico = new Historico(rs.getLong("idHistorico"),
                    null);
            historico.setCodCompra(rs.getLong("codCompra"));
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return historico;
    }

    public static List<Historico> obterTodosHistoricos() throws ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        List<Historico> historicos = new ArrayList<Historico>();
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM historico";
            ResultSet rs = comando.executeQuery(sql);
            while (rs.next()) {
                Historico historico = new Historico(rs.getLong("idHistorico"),
                        null);
                historico.setCodCompra(rs.getLong("codCompra"));
                historicos.add(historico);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return historicos;
    }
}
