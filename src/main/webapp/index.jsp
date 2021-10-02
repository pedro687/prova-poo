<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
    <title>JSP - Hello World</title>
</head>
<body>
    <%@include file="WEB-INF/jspf/header.jspf"%>
    <h1> Quantidade de Usuarios logados no momento: <%= application.getAttribute("count") %></h1>

    <%
        if (session.getAttribute("username") != null) {

    %>
    <table class="table table-primary">
        <thead>
        <tr>
            <th scope="col">Usuarios</th>
        </thead>
        <tbody>
            <%
                List<String> users = new ArrayList<>();
                if (session.getAttribute("username") != null) {
                    users = (List<String>) application.getAttribute("loggedUsers");

                    for (String user : users) {
            %>
            <td><%= user %></td>
        <%
                }
        %>
            <%
            }

                }
        %>
        </tbody>
    </table>
</body>
</html>