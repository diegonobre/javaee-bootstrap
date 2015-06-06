<%@ include file="header.jsp" %>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
      	<h1>Bem-vindo ao mundo Java EE</h1>
<p>Essa p�gina foi criada para testar passagem de par�metros armazenando valores em diferentes escopos de uma p�gina JSP.</p>
<p>Clique no link abaixo para passar um par�metro para essa p�gina:</p>

<p><a class="btn btn-primary bt-lg" href="./escopos.jsp?email=contato@diegonobre.net">http://localhost:8080/javaee-bootstrap/objetos.jsp?email=contato@diegonobre.net</a></p>

<%
String email = request.getParameter("email");

if (email != null) {
	pageContext.setAttribute("emailContext", email);
	session.setAttribute("emailSession", email);
	application.setAttribute("emailApplication", email);
}
%>
<pre>
String email = request.getParameter("email");

if (email != null) {
	pageContext.setAttribute("emailContext", email);
	session.setAttribute("emailSession", email);
	application.setAttribute("emailApplication", email);
}

// vari�veis que ser�o utilizadas apenas no contexto da p�gina atual
E-mail em pageContext �: <%= pageContext.getAttribute("emailContext") %>

// o usu�rio estabelece uma sess�o com o servidor de aplica��o e pode armazenar atributos na sess�o
E-mail em session �: <%= session.getAttribute("emailSession") %>

// atributos que ser�o armazenados no escopo da aplica��o da inicializa��o do servidor at� que ele seja finalizado
E-mail em application �: <%= application.getAttribute("emailApplication") %>
</pre>

      </div>
    </div>

<%@ include file="footer.jsp" %>