<%--
  Created by IntelliJ IDEA.
  User: pedro
  Date: 01/10/2021
  Time: 22:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
    <title>Pedro</title>
</head>
<body>
<%@include file="WEB-INF/jspf/header.jspf"%>

<%
    if (session.getAttribute("username") != null) {
%>
    <h1> RA: 1290482012028 </h1>
    <h1> Nome: Pedro Emanoel do Nascimento Silva</h1>
    <h1> Semestre ingressado: 1 semestre de 2020</h1>
    <h1> Github: <a href="https://github.com/PedroSpiet">Acesse</a></h1>
<table class="table table-dark">
    <thead>
    <tr>
        <th scope="col">Materia</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Estágio Supervisionado em Análise e Desenvolvimento de Sistemas </td>
    </tr>
    <tr>
        <td>Banco de Dados -</td>
    </tr>
    <tr>
        <td>Engenharia de Software III</td>
    </tr>

    <tr>
        <td>Programação Orientada a Objetos</td>
    </tr>

    <tr>
        <td>Linguagem de Programação IV </td>
    </tr>

    <tr>
        <td>Sistemas Operacionais II </td>
    </tr>

    <tr>
        <td>Inglês IV </td>
    </tr>

    <tr>
        <td>Metodologia da Pesquisa Científico-Tecnológica/td>
    </tr>
    </tbody>
</table>
<%
    } else {
%>
    <h1 style="color: darkred"> VOCÊ NÃO TEM PERMISSÃO PARA VER O CONTEUDO!</h1>
<%
    }
%>
</body>
</html>
