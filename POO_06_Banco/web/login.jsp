<%-- 
    Document   : pagina_manutenção_quiz
    Created on : 28/05/2017, 23:59:46
    Author     : Andréia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="tabcssconf/tabela.css"> 
        <title>Login</title>
    </head>
    <body>
             <%@include file="WEB-INF/jspfs/menu.jspf" %>
      <%@include file="WEB-INF/jspfs/modal.jspf" %>
    <center>
        <h3>Login</h3>
        <img src="imagens/usuario.png" height="145">
        <form>
            <h3>
            <p>Nome:<input type="text" name="nomeusu2"> </p>
            <p>Senha:<input type="password" name="senhausu2"> </p>
            <p>Tipo:</p>
            <p><input type="radio" value="Administrador">Administrador </p>                                                      
            <p><input type="radio" value="Visitante">Visitante</p>  
            <input type="submit" value="Enviar">
            </h3>
        </form>
    </body>
</html>
