<%@ include file="header.jsp" %>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
      	<h2>JSTL - JavaServer Pages Standard Tag Library</h2>

<p>Clique no link abaixo para passar um parâmetro para essa página:</p>
<p><a class="btn btn-primary bt-lg" href="./dicionario-jstl.jsp?email=contato@diegonobre.net">http://localhost:8080/javaee-bootstrap/dicionario-jstl.jsp?email=contato@diegonobre.net</a></p>

<p>Os parâmetros enviados via GET ou POST podem ser exibidos utilizando a tag \${param.nome_do_atributo}</p>

<c:if test="${ empty param.email }">
	<p>O parâmetro "email" ainda não foi enviado!</p>
</c:if>

<pre>
\${param.email} vai ser igual a: ${param.email}
</pre>

<hr />

<h2>Loop sobre o HEADER</h2>
<c:forEach items="${ header }" var="entry" varStatus="status">
	<p>${ status.index } - ${ status.count } - ${ entry.key } - ${ entry.value }</p>
</c:forEach>

      </div>
    </div>

<%@ include file="footer.jsp" %>