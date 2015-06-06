<%@ include file="header.jsp" %>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
	     <div class="container">
	     	<h2>Usuários</h2>
	     	<jsp:useBean id="usuarioDAO" class="com.github.diegonobre.javaee.dao.UsuarioDAO"></jsp:useBean>
		      <!-- Example row of columns -->
		      <div class="row">
			      <c:forEach var="usuario" items="${usuarioDAO.todos}">
			      	<div class="col-md-4">
			          <h2>${usuario.nome}</h2>
			          <p>E-mail: ${usuario.email}</p>
			          <p><a class="btn btn-default" href="#">Ler mais &raquo;</a></p>
			        </div>
			      </c:forEach>
		      </div>
	     </div>
     </div>

<%@ include file="footer.jsp" %>