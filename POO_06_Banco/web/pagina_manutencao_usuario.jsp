<%-- 
    Document   : pagina_manutencao_usuario
    Created on : 28/05/2017, 23:59:22
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
         

        
        <title>Manutenção de usuários</title>
    </head>
    <body>
              <%@include file="WEB-INF/jspfs/menu.jspf" %>
      <%@include file="WEB-INF/jspfs/modal.jspf" %>
      
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
								<th>Userame</th>
								<th>E-mail</th>
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
								 <td>
                                                <form>
                                                <input type="submit" value="Alterar" name="alterar">
                                                <input type="submit" value="Excluir" name="excluir">
                                                </form>
                                                </td>    
							</tr>
							<tr>
								<td>3</td>
								<td>Holden</td>
								<td>Caulfield</td>
								 <td>
                                                <form>
                                                <input type="submit" value="Alterar" name="alterar">
                                                <input type="submit" value="Excluir" name="excluir">
                                                </form>
                                                </td>    
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- <div class="col-md-6">
				<div class="panel panel-success">
					<div class="panel-heading">
						<h3 class="panel-title">Tasks</h3>
						<div class="pull-right">
							<span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">
								<i class="glyphicon glyphicon-filter"></i>
							</span>
						</div>
					</div>
					<div class="panel-body">
						<input type="text" class="form-control" id="task-table-filter" data-action="filter" data-filters="#task-table" placeholder="Filter Tasks" />
					</div>
					
                                       <table class="table table-hover" id="task-table">
						<thead>
							<tr>
								<th>#</th>
								<th>Task</th>
								<th>Assignee</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>Site Wireframes</td>
								<td>John Smith</td>
								<td>in progress</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Mobile Landing Page</td>
								<td>Kilgore Trout</td>
								<td>completed</td>
							</tr>
							<tr>
								<td>3</td>
								<td>Add SEO tags</td>
								<td>Bob Loblaw</td>
								<td>failed qa</td>
							</tr>
							<tr>
								<td>4</td>
								<td>Migrate to Bootstrap 3</td>
								<td>Emily Hoenikker</td>
								<td>in progress</td>
							</tr>
							<tr>
								<td>5</td>
								<td>Update jQuery library</td>
								<td>Holden Caulfield</td>
								<td>deployed</td>
							</tr>
							<tr>
								<td>6</td>
								<td>Issues in IE7</td>
								<td>Jane Doe</td>
								<td>failed qa</td>
							</tr>
							<tr>
								<td>7</td>
								<td>Bugs from Sprint 14</td>
								<td>Kilgore Trout</td>
								<td>completed</td>
							</tr>
						</tbody>
					</table> 
                                    </div> 

			</div>
		</div>
	</div> -->
                        
      <!--CÓDIGO DA TABELA -->
    </body>
</html>
