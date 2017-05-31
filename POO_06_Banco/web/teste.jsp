<%-- 
    Document   : teste3
    Created on : 15/05/2017, 21:27:16
    Author     : Andréia
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Locale"%>
<%@page import="com.domain.quiz.GLOBAL"%>
<%@page import="com.domain.quiz.DataBase"%>
<%@page import="com.domain.quiz.Jogador"%>
<%@page import="java.util.Collections"%>
<%@page import="com.domain.quiz.Quiz"%>
<%@page import="com.domain.quiz.Question"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
    if (request.getParameter("test") != null) {
        Quiz.validateTest(new String[]{
            request.getParameter("0"),
            request.getParameter("1"),
            request.getParameter("2"),
            request.getParameter("3"),
            request.getParameter("4"),
            request.getParameter("5"),
            request.getParameter("6"),
            request.getParameter("7"),
            request.getParameter("8"),
            request.getParameter("9")
        });
        String pontos = 200. * Quiz.getLastGrade() + "";
        Locale locale = new Locale("pt", "BR");
        GregorianCalendar calendar = new GregorianCalendar();
        SimpleDateFormat formatador = new SimpleDateFormat("dd' de 'MMMMM' de 'yyyy' - 'HH':'mm'h'", locale);
        String data = formatador.format(calendar.getTime());
        DataBase db = new DataBase();
        if (db.InserirHistorico(GLOBAL.NOMEUSUARIO, pontos, GLOBAL.IDUSUARIO, data)) {
            response.sendRedirect("usuario.jsp");
        }
    }
%>
<html>
    <title>Quiz GOT</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
    </style>
    <body class="w3-light-grey">

        <!-- Page Container -->
        <div class="w3-content w3-margin-top" style="max-width:1400px;">

            <!-- The Grid -->
            <div class="w3-row-padding">

                <!-- Left Column -->
                <div class="w3-third">

                    <div class="w3-white w3-text-grey w3-card-4">
                        <div class="w3-display-container">
                            <img src="imagens/trono_01.jpg" style="width:100%" alt="Avatar">
                            <div class="w3-display-bottomleft w3-container w3-text-black">

                            </div>
                        </div>
                        <div class="w3-container">
                            <p><i class="fa fa-fw w3-margin-right w3-large w3-text-teal"></i>Game of Thrones(GOT) é uma série famosa no mundo todo, traduzida para vários idiomas, que se baseia na série de livros As Crônicas de Gelo e Fogo, escrita por George Martin. </p>
                            <hr>

                            <img src="imagens/dr.jpg" style="width:100%" alt="Avatar">
                            <p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i>"As pessoas aprendem a amar as correntes que as prendem"</b></p>
                            <p>Daenerys Targaryen</p>
                            <div class="w3-light-grey w3-round-xlarge">
                                <div class="w3-round-xlarge w3-teal" style="height:24px;width:100%"></div>
                            </div>
                            <br>
                            <hr>

                            <img src="imagens/brazoes.jpg" style="width:100%" alt="Avatar">
                            <p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i>"O conhecimento é uma arma. Arme-se bem antes de ir para a batalha."</b></p>
                            <p>Meistre Aemon</p>
                            <div class="w3-light-grey w3-round-xlarge">
                                <div class="w3-round-xlarge w3-teal" style="height:24px;width:100%"></div>
                            </div>
                            <br>
                            <hr>

                            <img src="imagens/chegada.png" style="width:100%" alt="Avatar">

                            <br><br>
                        </div>
                    </div><br>

                    <!-- End Left Column -->
                </div>

                <!-- Right Column -->
                <div class="w3-twothird">

                    <div class="w3-container w3-card-2 w3-white w3-margin-bottom">
                        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Quiz Game Of Thrones</h2>
                        <div class="w3-container">
                            <h5 class="w3-opacity"><b>Se você é um amante da série Game Of Thrones, vai adorar responder este Quiz!</b></h5>
                            <h6<span class="w3-tag w3-teal w3-round"><p>                    Participe com seus amigos.                           </p></span></h6>

                            <hr>
                        </div>
                        <div class="w3-container">

                            <form method="GET">
                                <div class="w3-container">
                                    <br>
                                    <hr>
                                    <br>

                                    <span class="w3-tag w3-teal w3-round">
                                        <%ArrayList<Question> test = Quiz.getTest();
                                            Collections.shuffle(test);
                                        %>
                                        <%for (int i = 0; i < 10; i++) {
                                                Question q = test.get(i);
                                        %>
                                        <h4 align="left"><%= q.getQuestion()%></h4>
                                        <%for (String alternative : q.getAlternatives()) {%>
                                        <input type="radio" name="<%=test.indexOf(q)%>" 

                                               value="<%=alternative%>"/><%=alternative%> 
                                        <%}%>
                                        <hr/>
                                        <%}%>
                                        <input type="submit" name="test" value="Concluir"/>

                                        <br><br> 

                                        </div>
                                        </form>
                                        </div>
                                        </div>



                                        <!-- End Right Column -->
                                        </div>


                                        <!-- End Page Container -->




                                        </body>
                                        </html>