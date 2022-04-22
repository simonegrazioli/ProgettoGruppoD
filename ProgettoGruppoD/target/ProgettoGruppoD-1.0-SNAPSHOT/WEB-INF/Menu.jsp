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
            <div class="col d-flex justify-content-center" style="margin-top: 25px; color: #FF6600;padding: 30px">
                <h1>Menù</h1>
            </div>
            <div class="row justify-content-center">
                <div class="col-6 d-flex justify-content-center">
                    <form action="e_prenotazioni">
                        <br>
                        <table>
                            <thead style="color: #FF6600;">
                            <th style="margin: 0px 50px">Quantità Selezionata</th>
                            <th style="margin: 0px 80px">Nome Piatto</th>
                            <th style="margin: 0px 80px">Numero Persone</th>
                            <th style="margin: 0px 50px">Costo Piatto</th>
                            </thead>
                            <tbody>
                                <c:forEach items="${listaPiatti}" var="piatto" >
                                    <tr> 
                                        <td><input type="number" min="0" max="10" name="quantita"></td>
                                        <td>${piatto.getNome()}</td>
                                        <td>${piatto.getNumeroPersone()}</td>
                                        <td>${piatto.getCostoPiatto()}€</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <label for="ord">Dove vuoi mangiare?</label><br>
                        <input type="text" id="ord">
                        <input type="submit" value="Invia" class="nav-link" style="color: white; border-style: none; margin: 30px auto; width:100px; height: 50px; font-size: 20px">
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
