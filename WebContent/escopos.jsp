<%@ include file="header.jsp" %>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
      	<h1>Bem-vindo ao mundo Java EE</h1>
<p>Essa página foi criada para testar passagem de parâmetros armazenando valores em diferentes escopos de uma página JSP.</p>
<p>Clique no link abaixo para passar um parâmetro para essa página:</p>

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

// variáveis que serão utilizadas apenas no contexto da página atual
E-mail em pageContext é: <%= pageContext.getAttribute("emailContext") %>

// o usuário estabelece uma sessão com o servidor de aplicação e pode armazenar atributos na sessão
E-mail em session é: <%= session.getAttribute("emailSession") %>

// atributos que serão armazenados no escopo da aplicação da inicialização do servidor até que ele seja finalizado
E-mail em application é: <%= application.getAttribute("emailApplication") %>
</pre>

      </div>
    </div>

<%@ include file="footer.jsp" %>