<%@ page import="com.cesi.beans.Produit" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.IOException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Test</title>
    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <p>Via le scriptlet</p>
    <table class="table">
        <tr>
            <th scope="col">Nom</th>
            <th scope="col">Description</th>
            <th scope="col">Prix Achat</th>
        </tr>

        <%
            ArrayList<Produit> maListeDeProduits = (ArrayList<Produit>) request.getAttribute("listeProduits");

            for (int i = 0; i < maListeDeProduits.size(); i++) {
                Produit produit = maListeDeProduits.get(i);
                out.println("<tr>");
                out.println("<td scope=\"row\">" + produit.getNom() + "</td>");
                out.println("<td scope=\"row\">" + produit.getDescription() + "</td>");
                out.println("<td scope=\"row\">" + produit.getPrixAchat() + "</td>");
                out.println("</tr>");
            }
        %>
    </table>

    <p>Via JSTL</p>
    <table class="table">
        <tr>
            <th scope="col">Nom</th>
            <th scope="col">Description</th>
            <th scope="col">Prix Achat</th>
        </tr>

        <c:forEach var="produit" items="${listeProduits}">
            <tr>
                <td>
                        <c:out value="${produit.nom}"/>
                </td>
                <td>
                        <c:out value="${produit.description}"/>
                </td>
                <td>
                        <c:out value="${produit.prixAchat}"/>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
