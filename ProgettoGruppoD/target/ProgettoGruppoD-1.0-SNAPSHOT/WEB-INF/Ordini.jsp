<%-- 
    Document   : index
    Created on : 12 feb 2022, 11:37:13
    Author     : alinf
--%>
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
    </head>
    <body>
        <div id="container">
            <div class="row justify-content-center">
                <div class="col-6 d-flex justify-content-center">
                    <div class="mb-3 text-center">
                        <h2>Ecco gli ordini da te effettuati</h2>
                        <%
                            boolean visibile = (boolean)request.getAttribute("visibile");
                            if (visibile) {
                        %>
                        <c:forEach items="${listaOrdini}" var="ordini">
                            <div class="alert alert-secondary" role="alert">
                                <p><b>Data: </b> ${ordini.getData()}</p>
                                <p><b>Indirizzo di consegna: </b> ${ordini.getInd()}</p>
                                <p><b>Piatto ordinato: </b> ${ordini.getNome_piatto()}</p>
                                <p><b>Quantità odirnata: </b> ${ordini.getQuantita()}</p>
                                <p><b>Costo: </b> ${ordini.getCosto()}</p>                                
                            </div>
                        </c:forEach>
                        <%  
                            }                 
                        %>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
