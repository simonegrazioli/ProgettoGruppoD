<%-- 
    Document   : Profilo
    Created on : 14 apr 2022, 11:25:36
    Author     : simon
--%>
<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="shortcut icon" href="img/icona.png" />
    </head>
    <body>
        <h1>Ciao, ecco i dati con i quali ti sei registrato!!</h1>
        <c:forEach items="${u}" var="utente">
            <div class="alert alert-secondary" role="alert">
                <p><b>Username :</b> ${u.getUser()}</p>
                <p><b>Password :</b>${u.getPsw()}</p>
                <p><b>Mail: </b> ${u.getMail()}</p>
                <p><b>Eta: </b> ${u.getEta()}</p>
                <p><b>Sesso: </b> ${u.getSesso()}</p>
            </div>
        </c:forEach>

    </body>
</html>
