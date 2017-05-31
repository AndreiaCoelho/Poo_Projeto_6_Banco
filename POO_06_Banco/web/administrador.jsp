
<!DOCTYPE html>
<html>

    <title>Quiz - GOT</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <body class="w3-content" style="max-width:1500px">
        <%@include file="WEB-INF/jspfs/menu.jspf" %>
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
                        <div class="w3-container w3-responsive">
                            <a href="pagina_manutencao_usuario.jsp" class="btn btn-primary">Manutenção Usuario</a>
                            <br/><br/>
                            <a href="pagina_manutenção_quiz.jsp" class="btn btn-primary">Manutenção Quiz</a>
                        </div>
                    </div>
                </div>
            </div>
        

        <!-- Footer -->
        <footer class="w3-container w3-black w3-padding-16 text-center">
            <p>FATEC/PG - POO-Vespertino - Andréia,Ricky e Milton </p>
        </footer> 
    </body>
</html>


