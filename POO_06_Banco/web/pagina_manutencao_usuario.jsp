<%-- 
    Document   : pagina_manutencao_usuario
    Created on : 28/05/2017, 23:59:22
    Author     : Andréia
--%>

<%@page import="com.domain.quiz.Jogador"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.domain.quiz.DataBase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("excluir") != null){
        String codigo = request.getParameter("excluir");
        DataBase base = new DataBase();
        if(base.DeleteUsuario(codigo)){
            out.print("<script>alert('Usuario apagado com sucesso!')</script>");
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="tabcssconf/tabela.css"> 

       
        
        <title>Manutenção de usuários</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspfs/menu.jspf" %>


        <!-- CÓDIGO DA TABELA -->
        <div class="container">
            <h1>Manutenção de usuarios</h1>
            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Usuarios</h3>
                            <div class="pull-right">
                                <span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">
                                    <!--<i class="glyphicon glyfilter"></i>phicon-filter"></i> --> 
                                </span>
                            </div> 
                        </div> 
                        <div class="panel-body">
                            <input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table" placeholder="Filter Developers" />
                        </div>
                        <table class="table table-hover" id="dev-table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Nome do usuario</th>
                                    <th>Funções</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    DataBase db = new DataBase();
                                    ArrayList<Jogador> j = new ArrayList<Jogador>();
                                    j = db.CarregarUsuario();
                                    for (int i = 0; i < j.size(); i++) {
                                        Jogador j1 = j.get(i);
                                    %>
                                    <tr>
                                    <td>
                                        <%= j1.getJogador()%>
                                    </td>
                                    <td>
                                        <%= j1.getPontos()%>
                                    </td>
                                    
                                    <td>
                                        <form>
                                            <input onclick="document.getElementById('<%= j1.getJogador()%>').value = '<%= j1.getJogador()%>';" type="submit" value="Excluir" id="<%= j1.getJogador()%>" name="excluir">
                                        </form>
                                    </td>
                                    </tr>
                                    <% } %>
                                
                            </tbody>
                        </table>
                    </div>
                </div>
                <!--CÓDIGO DA TABELA -->
                </body>
                </html>
