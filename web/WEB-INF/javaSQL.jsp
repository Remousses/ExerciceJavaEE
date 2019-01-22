<%@ page import="java.sql.ResultSet" %>
<html>
<head>
    <title>The Publishers Database Table </title>
</head>

<body>
<h1>The Publishers Database Table </h1>

<%
    // Pas de "*" car plus sécure de rentrer les champs que l'on veux (Sinon risque d'afficher des données introduit par une tierce personne).
    ResultSet resultset = (ResultSet) request.getAttribute("mariaDBQuery");
%>
rgergege
<table BORDER="1">
    <tr>
        <th>ID</th>
        <th>Nom</th>
        <th>Description</th>
        <th>Prix achat</th>
        <th>Marge</th>
    </tr>
    <% while(resultset.next()){ %>
    <tr>
        <td> <%= resultset.getString(1) %></td>
        <td> <%= resultset.getString(2) %></td>
        <td> <%= resultset.getString(3) %></td>
        <td> <%= resultset.getString(4) %></td>
        <td> <%= resultset.getString(5) %></td>
    </tr>
    <% } %>
</table>
</body>
</html>