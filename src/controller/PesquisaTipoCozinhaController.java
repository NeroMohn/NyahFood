package controller;

import model.TipoCozinha;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class PesquisaTipoCozinhaController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<TipoCozinha> obterTodosTiposCozinha = TipoCozinha.obterTodosTiposCozinha();
            if(obterTodosTiposCozinha.isEmpty()){
                 request.setAttribute("vazio", "Mensagem");
            }
            request.setAttribute("tiposcozinhas", TipoCozinha.obterTodosTiposCozinha());
            RequestDispatcher view = request.getRequestDispatcher("/PesquisaTipoCozinha.jsp");
            view.forward(request, response);

        } catch (ClassNotFoundException e) {
            throw new ServletException(e);
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    public String getServletInfo() {
        return "Short description";
    }
}