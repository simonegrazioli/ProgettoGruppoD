<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
        <title>Menù</title>
        <link rel="shortcut icon" href="img/icona.png" />
    </head>
    <body>
        <div id="containerhome" style="margin-top: 100px;margin-bottom: 100px; margin-left: 200px;margin-right: 200px; background-color: #D2D2D2;border-radius: 10px;">
            <div class="col-12 d-flex justify-content-center" style="margin-top: 25px; color: #FF6600;padding: 30px">
                <h1>Menù</h1>
            </div>
            <p>${messaggio}</p>
            <div class="row justify-content-center">
                <div class="col-12 justify-content-center">
                    
                    <br>
                    
                    <c:forEach items="${listaPiatti}" var="piatto" >
                        <div>
                            <form action="r_inserisci_prenotazione" class="form-control">
                                <input type="hidden" name="nome_u" value="${nome_u}">
                                <input type="hidden" name="idPiatto" value="${piatto.getId()}">
                                <input type="text" name="nomePiatto" value="${piatto.getNome()}" readonly>
                                <input type="text" name="costoPiatto" value="${piatto.getCostoPiatto()}" readonly>
                                <input type="text" name="quantitaPiatto" value="${piatto.getNumeroPersone()}" readonly>
                                <input type="number" name="quantita" min="0" max="10" value="0">
                                <select name="dove">
                                    <option value="ristorante">Ristorante</option>
                                    <option value="casa">Consegna a casa</option>
                                </select>
                                <input type="submit" name="invia" value="Invia">
                            </form>
                        </div><br>
                    </c:forEach>
                        <a href="home">Torna alla home</a>
                </div>
            </div>
        </div>
    </body>
</html>
