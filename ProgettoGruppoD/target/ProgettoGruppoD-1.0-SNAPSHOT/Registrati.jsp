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
        <link rel="shortcut icon" href="img/icona.png" />
    </head>
    <body id="body">
        <div id="containerregistrati" style="margin-top: 125px;">
            <div class="row justify-content-center">
                <div class="col-6 d-flex justify-content-center" style="padding: 30px">
                    <h1>Registrati</h1>
                </div>
            </div>
            <% 
                if (request.getAttribute("coloreMessaggio") != null) {
            %>
            <div class="row justify-content-center text-center" style="margin-top: 7px;">
                <p style="color: ${coloreMessaggio}">${messaggio}</p>
            </div>
            <% 
                }
            %>
            <div class="row justify-content-center">
                <div class="col-6 d-flex justify-content-center">
                    <form action="e_registrati" method="POST">
                            <input type="text" name="nome_utente" placeholder="Il tuo username" class="form-control" style="width:175px;  height: 35px"/><br>
                            <input type="password" name="psw" placeholder="La tua password" class="form-control" style="width:175px; height: 35px"/><br>
                            <input type="email" name="mail" placeholder="La tua mail" class="form-control" style="width:175px;  height: 35px"/><br>
                            <input type="number" name="eta" placeholder="La tua età" class="form-control" min="14" max="120" style="width:175px; height: 35px"/><br>
                            <input type="text" name="indirizzo" placeholder="Il tuo indirizzo" class="form-control" style="width:175px;  height: 35px"><br>
                            
                            <div class="form" >
                            <select name="sesso" style="border-radius: 5px; width:175px;  height: 35px">
                                <option value="null" class="form-control" selected disabled="enabled">Sesso</option>
                                <option value="maschio">Maschio</option>
                                <option value="femmina">Femmina</option>
                                <option value="altro">Altro </option>
                            </select><br>
                            </div>
                            
                            <input type="submit" value="Invia" class="nav-link" style="color: white; border-style: none; margin: 30px auto"/>
                            
                            
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
