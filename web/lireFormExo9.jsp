<%@ page import="java.util.HashMap" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Lecture des données du formulaire</title>
    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <p>
        <b>Vous avez renseigné les informations suivantes :</b>
    </p>


    <c:forEach items="${paramValues}" var="parameter">
        <c:out value="${parameter.key}"/> :

        <c:forEach items="${parameter.value}" var="value">
            <c:out value="${value}"/>
        </c:forEach>
        <br>
    </c:forEach>


    <%-- Parcourir et afficher chaque paramètre de la requête
       pour cela l'objet implicite paramValues doit etre utilise
                   C'est un Map Java (un tableau associatif en PHP)
       le .key est le nom du paramètre
       le .value est la valeur --%>
    <%-- Debut de boucle c:forEach --%>
    <%-- Affiche le nom de chaque paramètre. --%>

    <%-- Parcourt la liste des valeurs de chaque paramètre. --%>
    <%-- Affiche chacune des valeurs --%>

    <p>
        <b>Vous vous nommez : </b><c:out value="${param.nom}"/> <c:out value="${param.prenom}"/>
    </p>
    <p>
        <%-- Affiche les valeurs des paramètres nom et prenom --%>
    </p>

    <p>
        <b>Vous avez suivi les formations suivantes : </b>
    </p>
    <%-- Teste l'existence du paramètre formations. S'il existe on le traite,
    sinon on affiche un message par défaut.--%>

    <%-- Teste l'existence du paramètre autre. Si des données existent on les traite,
    sinon on affiche un message par défaut.--%>
    <p>
        <c:if test="${!empty paramValues.formations}">
            <c:forEach items="${paramValues.formations}" var="formation">
                - <c:out value="${formation}"/>
                <br>
            </c:forEach>
        </c:if>
        <c:if test="${empty paramValues.formations}">
            Vous n'avez selectionné aucune donnée
        </c:if>
    </p>
    <p>
        <c:if test="${!empty param.autre}">
            <b>Vous avez suivi aussi : </b><br>
           <c:out value="${param.autre}"/>
        </c:if>
        <c:if test="${empty param.autre}">
            Vous n'avez pas rempli le champ "autre"
        </c:if>
    </p>
</div>
</body>
</html>