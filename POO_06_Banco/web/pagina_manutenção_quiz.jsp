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
        <title>Manutenção do quiz</title>
    </head>
    <body>
             <%@include file="WEB-INF/jspfs/menu.jspf" %>
      <%@include file="WEB-INF/jspfs/modal.jspf" %>
      
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
								<th>#</th>
								<th>First Name</th>
								<th>Questão</th>
								<th>Funções</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>Kilgore</td>
								<td>Trout</td>
                                                                <td>
                                                <form>
                                                <input type="submit" value="Alterar" name="alterar">
                                                <input type="submit" value="Excluir" name="excluir">
                                                </form>
                                                </td>       
							</tr>
							<tr>
								<td>2</td>
								<td>Bob</td>
								<td>Loblaw</td>
                                                                <td> <form>
                                                <input type="submit" value="Alterar" name="alterar">
                                                <input type="submit" value="Excluir" name="excluir">
                                                </form>
                                                                <td> </tr> 
							<tr>
								<td>3</td>
								<td>Holden</td>
								<td>Caulfield</td>
								 <td><form>
                                                <input type="submit" value="Alterar" name="alterar">
                                                <input type="submit" value="Excluir" name="excluir">
                                                                     </form></td>
							</tr>
                                                        
						</tbody>
					</table>
				</div>
			</div>
            
            <!-- CÓDIGO DA TABELA -->
            
                                                 <form>
                           Incluir questão:<input type="text" name="incluirquestao">
                                <input type="submit" value="Incluir">
                                                  </form>
                                                           
            
    </body>
</html>
