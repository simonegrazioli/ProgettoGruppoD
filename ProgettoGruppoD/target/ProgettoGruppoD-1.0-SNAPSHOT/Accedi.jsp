<%-- 
    Document   : Accedi
    Created on : 30 mar 2022, 12:32:37
    Author     : alinf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="accedi" method="GET">
                <input type="text" name="nome_utente" placeholder="inserisci il tuo username"/><br>
                <input type="password" placeholder="inserisci la password"/><br><br>
                <input type="submit" value="invia"/>
        </form>
    </body>
</html>
