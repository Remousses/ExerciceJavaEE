<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Initialisation des données</title>
    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <form method="get" action="lireFormExo9.jsp">
        <div class="form-group">
            <label for="nom">Votre nom</label>
            <input class="form-control" id="nom" name="nom" type="text" tabindex="10">
        </div>
        <div class="form-group">
            <label for="nom">Votre Prénom</label>
            <input class="form-control" id="prenom" name="prenom" type="text" tabindex="20">
        </div>
        <div class="form-group">
            <label for="formations">Quels formations avez vous déja eu au Cesi ?</label>
            <select class="form-control" id="formations" name="formations" multiple="multiple" tabindex="30"
                    width="400px">
                <option value="CS">C#</option>
                <option value="Python">Python</option>
                <option value="Android">Android</option>
                <option value="UML/POO">UML/POO</option>
                <option value="JavaEE">Java EE</option>
                <option value="Arduino">Arduino</option>
                <option value="Javascript">Javascript</option>
                <option value="SQL">SQL</option>
            </select>
        </div>
        <div class="form-group">
            <label for="autre">Entrez ici les autres formations suivies, séparées par une virgule :</label><br/>
            <textarea class="form-control" id="autre" name="autre" rows="2" cols="40" tabindex="40"
                      placeholder="Ex: machin, bidule"></textarea>
        </div>
        <div>
            <button class="btn btn-primary" type="submit">Valider</button>
            <button class="btn btn-danger" type="reset">Remettre à zéro</button>
        </div>
    </form>
</div>
</body>
</html>