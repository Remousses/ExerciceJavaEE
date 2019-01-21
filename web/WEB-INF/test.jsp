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
</body>
</html>
