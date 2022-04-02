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
        <title>Accedi</title>
        
        <link href="Style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    </head>
    <body id="body" >
        <form action="accedi" method="GET">
                <input type="text" name="nome_utente" placeholder="inserisci il tuo username"/><br>
                <input type="password" placeholder="inserisci la password"/><br><br>
                <input type="submit" value="invia"/>
        </form>
    </body>
</html>
