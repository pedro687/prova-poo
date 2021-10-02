<%--
  Created by IntelliJ IDEA.
  User: pedro
  Date: 01/10/2021
  Time: 23:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>

    <title>Dica megasena</title>
</head>
<body>
<%@include file="WEB-INF/jspf/header.jspf"%>

    <%
        if (session.getAttribute("username") != null) {
            List<Integer> nums = (List<Integer>) session.getAttribute("nums");
    %>
<table class="table table-dark">
    <thead>
    <tr>
        <th scope="col">Numero da sorte:</th>
    </tr>
    </thead>
    <tbody>
    <%
        for (Integer num : nums) {
    %>
    <tr>
        <td><%= num %></td>
    </tr>

    <%
        }
    %>
    </tbody>
</table>
<%
    } else {
%>
    <h1 style="color: darkred"> VOCê NÃO TEM PERMISSÃO PARA VER O CONTEUDO!</h1>
<%
    }
%>
</body>
</html>
