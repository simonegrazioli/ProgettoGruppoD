<%-- 
    Document   : Benvenuto
    Created on : 30 mar 2022, 12:33:31
    Author     : alinf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>

        <link href="css/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
        
        <link rel="shortcut icon" href="img/icona.png"/>
        
        <style>
            body{
                background-color: #2B2929;
            }
        </style>
    </head>
    <body>
        <p style="color: white">${messaggio}</p>
        <div class="pos-f-t">
            <nav class="navbar navbar-expand-lg" style="background-color: #FF6600;">
                <div class="container-fluid">
                    <a class="navbar-brand" Style="color: #D2D2D2;">Gruppo D</a>
                        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                            <div class="navbar-nav text-center">
<<<<<<< Updated upstream
                                
                                <a Style="color: white" class="nav-link" href="r_prenotazioni">Prenotazione</a>
                                <a Style="color: white" class="nav-link" href="r_ordini">I miei ordini</a>
                                <a Style="color: white" class="nav-link" href="r_menu">Menu</a>
                                <a Style="color: white" class="nav-link" href="e_profilo">Profilo</a>
=======
                                <a Style="color:#D2D2D2;margin-right: 25px" class="nav-link" href="#"><b>Home</b></a>
                                <a Style="color:#D2D2D2;margin-right: 25px" class="nav-link" href="r_prenotazioni"><b>Prenotazione</b></a>
                                <a Style="color:#D2D2D2;margin-right: 25px" class="nav-link" href="r_menu"><b>Menu</b></a>
                                <a Style="color:#D2D2D2;margin-right: 25px" class="nav-link" href="r_ordini"><b>I miei ordini</b></a>
                                <a Style="color:#D2D2D2;margin-right: 25px" class="nav-link" href="e_profilo"><b>Profilo</b></a>
>>>>>>> Stashed changes
                            </div>
                        </div>
                    </div>
            </nav>
        </div>
        
<<<<<<< Updated upstream
        <h1 style="text-align: center; color: #D2D2D2;">Benvenuto</h1>
        
        <img src="img/Immagine1.jpeg" alt="alt" style="margin-left: 20px"/>
        <img src="img/Immagine2%20(1).jpeg" alt="alt"/>
        <img src="img/Immagine3.jpeg" alt="alt"/>
=======
        <h1 style="text-align: center; color: #D2D2D2;margin: 50px">Le nostre promozioni</h1>
        
        <img src="img/Immagine1.jpg" alt="alt" style="width: 1350px; margin-left: 80px"/>
        <img src="img/Immagine2.jpg" alt="alt" style="width: 1350px; margin-left: 80px; margin-top: 50px"/>
        <img src="img/Immagine3.jpg" alt="alt" style="width: 1350px; margin-left: 80px; margin-top: 50px; margin-bottom: 50px"/>
>>>>>>> Stashed changes
        
        
    </body>
</html>