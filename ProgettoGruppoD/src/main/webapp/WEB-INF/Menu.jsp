<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p>${messaggio}</p>
        <form action="r_ordini">
            <table>
                <thead>
                <th>Quantità Selezionata</th>
                <th>Nome Piatto</th>
                <th>Numero Persone</th>
                <th>Costo Piatto</th>
                </thead>
                <tbody>
                    <c:forEach items="${listaPiatti}" var="piatto">
                        <tr> 
                            <td><input type="number" min="0" max="10" name="quantita"></td>
                            <td>${piatto.getNome()}</td>
                            <td>${piatto.getNumeroPersone()}</td>
                            <td>${piatto.getCostoPiatto()}€</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <input type="submit" value="Invia">
        </form>







    </body>
</html>
