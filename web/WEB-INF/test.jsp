<%@ page import="com.cesi.beans.Produit" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test</title>
</head>
<body>
<p>
    <%
        String attribut = (String) request.getAttribute("test");
        out.println(attribut);

        String parametre = request.getParameter("lang");
        out.println("Langue via la jsp : " + parametre);
    %>
</p>

<p>
    <%
        Produit produit = (Produit) request.getAttribute("produit");
        out.println("Nom : " + produit.getNom() + "<br>");
        out.println("Description : " + produit.getDescription() + "<br>");
        out.println("Prix achat : " + produit.getPrixAchat() + "<br>");
    %>
</p>
</body>
</html>
