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
        <title>Registrazione</title>
        <link href="Style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    </head>
    <body id="body">
        <div id="containerregistrati" style="margin-top: 125px;">
            <div class="row justify-content-center">
                <div class="col-6 d-flex justify-content-center" style="padding: 30px">
                    <h1>Registrati<br></h1>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-6 d-flex justify-content-center">
                    <form action="invia" method="POST">
                            <input type="text" name="nome_utente" placeholder="Il tuo username" class="form-control"/><br>
                            <input type="password" name="psw" placeholder="La tua password" class="form-control"/><br>
                            <input type="text" name="mail" placeholder="La tua mail" class="form-control"/><br>
                            <input type="number" name="eta" placeholder="La tua età" class="form-control" min="0" max="120"/><br>
                            
                            <div class="row justify-content-center">
                            <select name="sesso">
                                <option value="altro" class="form-control">Altro</option>
                                <option value="maschio">Maschio</option>
                                <option value="femmina">Femmina</option>
                            </select><br>
                            </div>
                            
                            <input type="submit" value="Invia" class="nav-link" style="color: white; border-style: none; margin: 30px auto"/>
                            
                            
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
