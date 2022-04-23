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
        <!-- <style>
        table{
                border: 1px solid black;
            }
            
            table tr th{
                border: 1px solid black;
            }
            table tr td{
                border: 1px solid black;
            }
            table tr #quantita{
                border: 0px;
            }
        </style>
         -->
         <style>
             body{
                 background-image:  url(img/R.jpg)
             }
             body{
    background-position: center center
}
body{
    background-repeat: no repeat
}
body{
    background-attachment: fixed
}
body{
    background-size: cover
}
         </style>
    </head>
    <body>
        <div id="containerhome" style="margin-top: 100px;margin-bottom: 100px; margin-left: 200px;margin-right: 200px; background-color: #D2D2D2;border-radius: 10px;">
            <div class="col-12 d-flex justify-content-center" style="margin-top: 25px; color: #FF6600;padding: 30px">
                <h1>Menù</h1>
            </div>
            <div class="row justify-content-center">
                <div class="col-12 d-flex justify-content-center">
                    <form action="r_prenotazioni">
                        <br>
                        <%
                            if (request.getAttribute("nome_u") != null) {
                        %>
                            <input type="hidden" name="${nome_u}">
                        <% 
                            }
                        %>
                        <table style="width: 750px; text-align: center">
                            <thead style="color: #FF6600;">
                            <th>Nome Piatto</th>
                            <th>Numero Persone</th>
                            <th>Costo Piatto</th>
                            </thead>
                            <tbody>
                                <c:forEach items="${listaPiatti}" var="piatto" >
                                    <tr> 
                                        <td>${piatto.getNome()}</td>
                                        <td>${piatto.getNumeroPersone()}</td>
                                        <td>${piatto.getCostoPiatto()}€</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>