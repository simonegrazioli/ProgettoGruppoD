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
        
        <link rel="shortcut icon" href="img/icona.png" />
    </head>
    <body>
        <div class="pos-f-t">
            <nav class="navbar navbar-expand-lg" style="background-color: #4c1c24;">
                <div class="container-fluid">
                    <a class="navbar-brand" Style="color: white">Gruppo D</a>
                        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                            <div class="navbar-nav text-center">
                                <a Style="color: white" class="nav-link" href="r_prenotazioni">Prenotazione</a>
                                <a Style="color: white" class="nav-link" href="r_ordini">I miei ordini</a>
                                <a Style="color: white" class="nav-link" href="r_menu">Menu</a>
                            </div>
                        </div>
                    </div>
            </nav>
        </div>
        
        <h1 style="text-align: center">Benvenuto</h1>
        
        <p>Hey clicca qui per vedere la pagina del tuo profilo</p>
            <% 
                if (request.getAttribute("nome_u") != null) {
            %>
                <p>${nome_u}</p>
            <% 
                }
            %>
        <input type="hidden" name="${nome_u}">
        <div class="row justify-content-center">
                <ul class="nav justify-content-center">
                    <li class="nav-item">
                        <form action="e_profilo">
                            <input type="submit" name="${nome_u}" value="Il tuo profilo">
                        </form>
                    </li>
                </ul>
        </div>
        <p>${mex}</p>

    </body>
</html>
