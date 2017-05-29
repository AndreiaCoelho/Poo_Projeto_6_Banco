
<%@page import="com.domain.quiz.Jogador"%>
<%@page import="com.domain.quiz.DataBase"%>
<%@page import="com.domain.quiz.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (DataBase.BD == null) {
        Jogador j = new Jogador("0", "0");
        DataBase.BD.put("", j);
    }
%>
<html>

    <title>Quiz - GOT</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <body class="w3-content" style="max-width:1500px">
      <%@include file="WEB-INF/jspfs/menu.jspf" %>
      <%@include file="WEB-INF/jspfs/modal.jspf" %>
        <!-- First Grid: Logo & About -->
        <div id="conteudo" class="w3-row" style="top:0;">
            
            <div class="w3-half w3-black w3-container w3-center" style="height:1000px">
                
                <div class="w3-padding-64">
                    <h2>Quiz Game Of Thrones</h2>

                </div>
                <div class="w3-row">
                    <div class="w3-half">
                        <img src="imagens/got_02.jpg" style="width:100%">
                    </div>
                    <div class="w3-half">
                        <img src="imagens/starks.jpg" style="width:100%">
                    </div>
                </div>
                <div class="w3-row w3-hide-small">
                    <div class="w3-half">
                        <img src="imagens/Lannister.jpg" style="width:100%">
                    </div>
                    <div class="w3-half">
                        <img src="imagens/khalesi.jpg" style="width:100%">
                    </div>
                </div>

                <div class="w3-row w3-hide-small">
                    <div class="w3-half">
                        <img src="imagens/jon.jpg" style="width:100%">
                    </div>
                    <div class="w3-half">
                        <img src="imagens/vagantes1.jpg" style="width:100%">
                    </div>
                    <p>O inverno está chegando!</p>
                </div>
            </div>
            <div class="w3-half w3-blue-grey w3-container" style="height:1000px">
                <div class="w3-padding-64 w3-center">
                    <h1>Teste seus conhecimentos</h1>
                    <hr/>
                    <h3>Última nota:</h3>
                    <%= 100.0 * Quiz.getLastGrade()%>%
                    <h3>Média</h3>
                    <%= 100.0 * Quiz.getGradeAverage()%>%
                    <hr/>
                    <a href="teste.jsp">
                        <button>Iniciar Teste</button>
                    </a>
                    <hr/>
                    <div class="w3-left-align w3-padding-large">
                        <h2>Classificação Geral</h2>
                        <div class="w3-container w3-responsive">
                            <table class="w3-table">
                                <tr>
                                    <th>Pontuação</th>
                                    <th>Jogador</th>
                                </tr>
                                <% for (String key : DataBase.BD.keySet()) { %>
                                <tr class="w3-white">
                                    <% Jogador jog = DataBase.BD.get(key);%>
                                    <td style="border-style: double"><%= jog.getPontos()%></td>
                                    <td style="border-style: double"><%= jog.getJogador()%></td>
                                </tr>
                                <% }%>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <footer class="w3-container w3-black w3-padding-16 text-center">
            <p>FATEC/PG - POO-Vespertino - Andréia e Mary </p>
        </footer> 
    </body>
</html>


