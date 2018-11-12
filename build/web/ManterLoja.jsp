<%-- 
    Document   : ManterLoja
    Created on : 24/10/2018, 19:01:17
    Author     : Usuário
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Manter Loja - ${operacao}</h1>
        
        <form action ="ManterLojaController?acao=confirmarOperacao&operacao=${operacao}"  method = "post" name="ManterLoja">
            <table>
                        <tr>
                <td>Código da Loja</td>
                <td><input type="text" name="txtIdLoja" value="${loja.idLoja}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Nome:</td>
                <td><input type="text" name="txtNomeLoja" value="${loja.nome}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
             <tr>
                <td>Telefone:</td>
                <td><input type="text" name="txtTelefoneLoja" value="${loja.telefone}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
           <tr>
                <td>Email:</td>
                <td><input type="text" name="txtEmailLoja" value="${loja.email}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Senha:</td>
                <td><input type="password" name="txtSenhaLoja" value="${loja.senha}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Foto:</td>
                <td><input type="text" name="txtFotoLoja" value="${loja.foto}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>CEP:</td>
                <td><input type="text" name="txtCepLoja" value="${loja.cep}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
              <tr>
                <td>Logradouro:</td>
                <td><input type="text" name="txtLogradouroLoja" value="${loja.logradouro}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
             <tr>
                <td>Bairro:</td>
                <td><input type="text" name="txtBairroLoja" value="${loja.bairro}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Complemento:</td>
                <td><input type="text" name="txtComplementoLoja" value="${loja.complemento}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
              <tr>
                <td>Cidade:</td>
                <td><input type="text" name="txtCidadeLoja" value="${loja.cidade}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
             <tr>
                <td>Estado:</td>
                <td><input type="text" name="txtEstadoLoja" value="${loja.estado}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
             <tr>
                <td>Numero:</td>
                <td><input type="text" name="txtNumeroLoja" value="${loja.numero}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>CNPJ:</td>
                <td><input type="text" name="txtCnpjLoja" value="${loja.cnpj}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>                                 
            <tr>
                <td>Descrição:</td>
                <td><input type="text" name="txtDescricaoLoja" value="${loja.descricao}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Nome do Gerente:</td>
                <td><input type="text" name="txtNomeGerenteLoja" value="${loja.nomeGerente}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Pagamentos:</td>
                <td><input type="text" name="txtPagamentosLoja" value="${loja.pagamento}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
             
           
            
             
           
            </table>
            <td><input type="submit" name="btnConfirmar" value="Confirmar"></td>
        </form>
    </body>
</html>
