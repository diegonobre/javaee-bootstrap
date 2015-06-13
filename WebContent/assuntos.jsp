<%@ include file="header.jsp" %>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
	     <div class="container">
	     	<jsp:useBean id="assuntoDao" class="com.github.diegonobre.javaee.dao.AssuntoDao"/>
	     	
	     	<h2>Assuntos</h2>
		      <div class="row">
		      	<form method="post" action="./assunto">
		      	
		      	</form>
		      </div>
		      
		      <div class="row">
			      	<div class="panel panel-default">
					  <!-- Default panel contents -->
					  <div class="panel-heading">Lista completa de assuntos cadastrados</div>
					
					  <!-- Table -->
					  <table class="table">
					  	<thead>
				          <tr>
				            <th># ID</th>
				            <th>Nome</th>
				            <th>Descrição</th>
				          </tr>
				        </thead>
				        <c:forEach var="assunto" items="${assuntoDao.todos}">
				        <tr>
			      			<td>${assunto.id}</td>
			      			<td>${assunto.nome}</td>
			      			<td>${assunto.descricao}</td>
			      		</tr>
			      		</c:forEach>
			      	  </table>
					</div>
		      </div>
	     </div>
     </div>

<%@ include file="footer.jsp" %>