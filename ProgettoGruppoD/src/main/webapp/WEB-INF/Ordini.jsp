<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Esercizio 3</title>
        <!-- File css -->
        <link href="css/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- File js -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
        
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
                                <a Style="color:#ffffff;margin-right: 25px" class="nav-link" href="#"><b>I miei ordini</b></a>
                                <a Style="color:#ffffff;margin-right: 25px" class="nav-link" href="e_profilo"><b>Profilo</b></a>
                            </div>
                        </div>
                    </div>
            </nav>
        </div>
        <div id="container">
            <div class="row justify-content-center">
                <div class="col-6 d-flex justify-content-center">
                    <div class="mb-3 text-center">
                        <h2>Ecco gli ordini da te effettuati</h2>
                        <c:forEach items="${listaOrdini}" var="ordini">
                            <div class="alert alert-secondary" role="alert">
                                <p><b>Data: </b> ${ordini.getData()}</p>
                                <p><b>Indirizzo di consegna: </b> ${ordini.getInd()}</p>
                                <p><b>Piatto ordinato: </b> ${ordini.getNome_piatto()}</p>
                                <p><b>Quantità odirnata: </b> ${ordini.getQuantita()}</p>
                                <p><b>Costo: </b> ${ordini.getCosto()} €</p>                                
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
