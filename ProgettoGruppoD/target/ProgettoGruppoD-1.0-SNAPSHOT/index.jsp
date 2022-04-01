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
        <style>
            *{background-image:  url(img/Immagine_sito.jpeg)}
            *{background-position: center center}
            *{background-repeat: no repeat}
            *{background-attachment: fixed}
            *{background-size: cover}
        </style>
    </head>
    <body>
        <div id="container">
            <div class="row justify-content-center" style="margin-top: 15px;">
                <h1 style="text-align: center; color: white">Ciao!</h1><br>
                <h5 style="text-align: center; color: white">Accedi o Registrati per scoprire i nostri contenuti</h3>
            </div>
            <div class="row justify-content-center" style="background-color: white">
                <ul class="nav justify-content-center">
                    <li class="nav-item">
                        <a class="nav-link" href="Accedi.jsp" style="color: white; background-color: #FF6600; border-radius: 10px; margin: 11px";><b>Accedi</b></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Registrati.jsp" style="color: white; background-color: #FF6600; border-radius: 10px ; margin: 11px";><b>Registrati</b></a>
                    </li>
                </ul>
            </div>
        </div>
        
    </body>
</html>
