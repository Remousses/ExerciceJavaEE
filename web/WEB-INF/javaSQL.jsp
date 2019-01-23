<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<html>
<head>
    <title>Exercice 11</title>
    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
</head>

<body>
<div class="container">
    <h1 class="text-center">Récupération de donnnées sur une base MariaDB</h1>
    <br>
    <br>
    <%
        // Pas de "*" car plus sécure de rentrer les champs que l'on veux (Sinon risque d'afficher des données introduit par une tierce personne).
        ResultSet resultset = (ResultSet) request.getAttribute("mariaDBQuery");
    %>
    <table class="table">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Nom</th>
            <th scope="col">Description</th>
            <th scope="col">Prix achat</th>
            <th scope="col">Marge</th>
        </tr>
        <% while (resultset.next()) { %>
        <tr>
            <td scope="row"><%= resultset.getString(1) %>
            </td>
            <td scope="row"><%= resultset.getString(2) %>
            </td>
            <td scope="row"><%= resultset.getString(3) %>
            </td>
            <td scope="row"><%= resultset.getString(4) %>
            </td>
            <td scope="row"><%= resultset.getString(5) %>
            </td>
        </tr>
        <% } %>
    </table>
</div>
</body>
</html>