<%-- 
    Document   : pagina_manutenção_quiz
    Created on : 28/05/2017, 23:59:46
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
        if(base.DeleteQuestao(codigo)){
            out.print("<script>alert('Questão apagada com sucesso!')</script>");
        }
    }
    
    if(request.getParameter("incluir") != null){
        String codigo = request.getParameter("excluir");
        DataBase base = new DataBase();
        if(base.InserirPegunta(request.getParameter("questao"), request.getParameter("resposta"), request.getParameter("alt1"), request.getParameter("alt2"), request.getParameter("alt3"))){
            out.print("<script>alert('Questao Adicionada Com Sucesso!')</script>");
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="tabcssconf/tabela.css"> 
        <title>Manutenção do quiz</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspfs/menu.jspf" %>


        <!-- CÓDIGO DA TABELA -->
        <div class="container">
            <h1>Manutenção do quiz</h1>
            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Quiz</h3>
                            <div class="pull-right">
                                <span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">

                                </span>
                            </div>
                        </div>
                        <div class="panel-body">
                            <input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table" placeholder="Filter Developers" />
                        </div>
                        <table class="table table-hover" id="dev-table">
                            <thead>
                                <tr>
                                    <th>Número</th>
                                    <th>Questão</th>
                                    <th>Funções</th>

                            <tbody>
                                <% 
                                    DataBase base = new DataBase();
                                    ArrayList<Jogador> j = new ArrayList<Jogador>();
                                    j = base.CarregarPergunta();
                                    for(int i = 0; i < j.size(); i++){
                                        Jogador j1 = j.get(i);
                                %>
                                <tr>
                                    <td><%= i %></td>
                                    <td><%= j1.getJogador()%></td>
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

                <!-- CÓDIGO DA TABELA -->

                <form style="margin-left: 65%">
                    Questão:<input type="text" name="questao"><br/><br/>
                    Resposta:<input type="text" name="resposta"><br/><br/>
                    Alternativa 1:<input type="text" name="alt1"><br/><br/>
                    Alternativa 2:<input type="text" name="alt2"><br/><br/>
                    Alternativa 3:<input type="text" name="alt3"><br/><br/>
                    <input type="submit" value="Incluir" name="incluir">
                </form>


                </body>
                </html>
