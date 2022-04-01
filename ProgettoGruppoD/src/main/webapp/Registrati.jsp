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
        <link href="css/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    </head>
    <body>
        <div id="container">
            <div class="row justify-content-center">
                <div class="col-6 d-flex justify-content-center">
                    <h3>Ciao, per registrarti compila i seguenti campi</h3>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-6 d-flex justify-content-center">
                    <form action="invia" method="POST">
                        <div class="mb-3">
                            <input type="text" name="nome_utente" placeholder="inserisci il tuo username" class="form-control"/><br>
                            <input type="password" name="psw" placeholder="inserisci la password" class="form-control"/><br>
                            <input type="text" name="mail" placeholder="inserisci una mail" class="form-control"/><br>
                            <input type="number" name="eta" placeholder="inserisci l'età" class="form-control"/><br>
                            <select name="sesso">
                                <option value="altro" class="form-control">Altro</option>
                                <option value="maschio">Maschio</option>
                                <option value="femmina">Femmina</option>
                            </select><br>
                            <input type="submit" value="invia" class="btn btn-primary"/>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
