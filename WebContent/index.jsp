<%@ include file="header.jsp" %>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
      	<h1>Bem-vindo ao mundo Java EE</h1>
      	<p>O texto abaixo foi inserido atrav�s de um "scriptlet". C�digo Java dentro do HTML!</p>
		<%
			// Comentando as declara��es de vari�veis
			String texto = "O resultado da soma �: ";
			int valor1 = 5;
			int valor2 = 5;
		%>
<pre>
// Comentando as declara��es de vari�veis
String texto = "O resultado da soma �: ";
int valor1 = 5;
int valor2 = 5;

out.println(texto + (valor1 + valor2));

<%=texto + (valor1 + valor2) %>
</pre>
		<p>Para conhecer mais sobre JSP visite o arquivo <a href="./escopos.jsp" target="_blank" class="btn btn-primary btn-lg">objetos.jsp &raquo;</a></p>
      </div>
    </div>

<%@ include file="footer.jsp" %>