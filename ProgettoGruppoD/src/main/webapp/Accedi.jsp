<%-- 
    Document   : Accedi
    Created on : 30 mar 2022, 12:32:37
    Author     : alinf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Accedi</title>
        <link href="Style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    </head>
    <body id="body">
        <div id="containeraccedi" style="margin-top: 125px;">
            <div class="row justify-content-center">
                <div class="col-6 d-flex justify-content-center" style="padding: 30px">
                    <h1>Accedi</h1>
                </div>
            </div>
            <% 
                if (request.getAttribute("coloreMessaggio") != null) {
            %>
            <div class="row justify-content-center text-center" style="margin-top: 15px;">
                <p style="color: ${coloreMessaggio}">${messaggio}</p>
            </div>
            <% 
                }
            %>
            <div class="row justify-content-center">
                <div class="col-6 d-flex justify-content-center">
                    <form action="e_accedi" method="POST">
                        <input type="text" name="user" placeholder="Username o Mail" class="form-control" style="width:175px;  height: 35px"/><br>
                        <input type="password" name="psw" placeholder="Password" class="form-control" style="width:175px;  height: 35px"/>
                        <input type="submit" value="Invia" class="nav-link" style="color: white; border-style: none; margin: 30px auto"/>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
