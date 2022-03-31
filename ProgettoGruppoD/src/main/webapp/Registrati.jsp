<%-- 
    Document   : Registrati
    Created on : 30 mar 2022, 12:32:52
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
        <h3>Ciao, per registrarti compila i seguenti campi</h3>
        <form action="e_registrati" method="GET">
            <input type="text" name="nome_utente" placeholder="inserisci il tuo username"/><br>
            <input type="password" name="psw" placeholder="inserisci la password"/><br>
            <input type="text" name="mail" placeholder="inserisci una mail"/><br>
            <input type="number" name="eta" placeholder="inserisci l'età"/><br>
            <select name="sesso">
                <option value="altro">Altro</option>
                <option value="maschio">Maschio</option>
                <option value="femmina">Femmina</option>
            </select><br>
            <input type="submit" value="invia"/>
                
        </form>
    </body>
</html>
