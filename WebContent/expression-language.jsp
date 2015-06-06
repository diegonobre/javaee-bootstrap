<%@ include file="header.jsp" %>

  <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
          <h3>Expression Language</h3>
        <p>A EL (Expression Language) foi criada para manter o c�digo HTML com menos interven��o de c�digo Java</p>

<p>Clique no link abaixo para passar um par�metro para essa p�gina:</p>
<p><a class="btn btn-primary bt-lg" href="./expression-language.jsp?email=contato@diegonobre.net">http://localhost:8080/javaee-bootstrap/objetos.jsp?email=contato@diegonobre.net</a></p>

<p>Os par�metros enviados via GET ou POST podem ser exibidos utilizando a tag \${param.nome_do_atributo}</p>
<pre>
\${param.email} vai ser igual a: ${param.email}
</pre>

    <h3>jsp:UseBean</h3>
    <p></p>
    <jsp:useBean id="usuario" class="com.github.diegonobre.javaee.dto.Usuario" />

${usuario.nome}

    </div>
  </div>

<%@ include file="footer.jsp" %>