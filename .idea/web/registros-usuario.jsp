<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <style>
        td{
            border-bottom: 1px solid black;
            border-right: 0.5px solid black;
        }
    </style>
</head>

<body>

    <table>
        <tr class="table-header">
            <td>
                NOME
            </td>
            <td>
                ID
            </td>
            <td>
                CPF
            </td>
            <td>
                Email
            </td>
            <td>
                CEP
            </td>
            <td>
                Logradouro
            </td>
            <td>
                Bairro
            </td>
            <td>
                Cidade
            </td>
            <td>
                UF
            </td>
              <td colspan="2">Ações</td>
        </tr>
        <tr>
            <td>
                David Rodrigues Brasil
            </td>
            <td>
                100
            </td>
            <td>
                xxxxxxxxxxx
            </td>
            <td>
                email@email.com
            </td>
            <td>
                xxxxxxxx
            </td>
            <td>
                Rua aeuhaeuhasuash
            </td>
            <td>
                ai aeubhasihbasb
            </td>
            <td>
                asj aejbnasjnads
            </td>
            <td>
                SP
            </td>
            <td>
                <a href="">alterar</a>
            </td>
            <td>
                <a href="">excluir</a>
            </td>
        </tr>
    </table>
    <a href="menu.html"><button type="buttom">Menu</button></a>
    <a href="cadastro-pessoa.html"><button>Cadastrar</button> </a>

</body>

</html>
