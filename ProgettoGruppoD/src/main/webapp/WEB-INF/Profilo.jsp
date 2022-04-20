<%-- 
    Document   : Profilo
    Created on : 14 apr 2022, 11:25:36
    Author     : simon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ciao, ecco i dati con i quali ti sei registrato!!</h1>
        <%  
             Utenti utente=(Utenti)request.getAttribute("utente");
        %>
            <div class="alert alert-secondary" role="alert">
                <p><b>Username :</b> ${utente.getUser()}</p>
                <p><b>Password :</b>${utente.getPsw()}</p>
                <p><b>Mail: </b> ${utente.getMail()}</p>
                <p><b>Eta: </b> ${utente.getEta()}</p>
                <p><b>Sesso: </b> ${utente.getSesso()}</p>
            </div>
    </body>
</html>
