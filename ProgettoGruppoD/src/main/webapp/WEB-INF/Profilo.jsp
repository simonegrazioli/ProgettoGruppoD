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
        <!-- File css -->
        <link href="css/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- File js -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
        <title>Il tuo profilo</title>
        <link rel="shortcut icon" href="img/icona.png" />
        <style>
            body{
                background-color: #2B2929;
            }
        </style>
    </head>
    <body>
                <div class="pos-f-t">
            <nav class="navbar navbar-expand-lg" style="background-color: #FF6600;">
                <div class="container-fluid">
                    <a class="navbar-brand" Style="color: #000000;"><b><i>Gruppo D</i></b></a>
                        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                            <div class="navbar-nav text-center">
                                <a Style="color:#ffffff;margin-right: 25px" class="nav-link" href="home"><b>Home</b></a>
                                <a Style="color:#ffffff;margin-right: 25px" class="nav-link" href="r_prenotazioni"><b>Prenotazione</b></a>
                                <a Style="color:#ffffff;margin-right: 25px" class="nav-link" href="r_menu"><b>Menu</b></a>
                                <a Style="color:#ffffff;margin-right: 25px" class="nav-link" href="r_ordini"><b>I miei ordini</b></a>
                                <a Style="color:#ffffff;margin-right: 25px" class="nav-link" href="#"><b>Profilo</b></a>
                            </div>
                        </div>
                    </div>
            </nav>
        </div>
        <h1 ><font color="D2D2D2">Ciao, ecco i dati con i quali ti sei registrato!!</font></h1>
            <div class="alert alert-secondary" role="alert">
                <p><b>Username :</b> ${u.getUser()}</p>
                <p><b>Password :</b>${u.getPsw()}</p>
                <p><b>Mail: </b> ${u.getMail()}</p>
                <p><b>Eta: </b> ${u.getEta()}</p>
                <p><b>Sesso: </b> ${u.getSesso()}</p>
            </div>

    </body>
</html>
