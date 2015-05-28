<%@page import="com.github.diegonobre.javaee.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">

    <title>JavaEE Bootstrap > github.com/diegonobre/javaee-bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/jumbotron.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">JavaEE Bootstrap</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <% User user = (User) session.getAttribute("user"); %>
          <% if (session.getAttribute("user") == null) { %>
          <form class="navbar-form navbar-right" method="post" action="./login">
            <div class="form-group">
              <input type="text" name="email" placeholder="E-mail" class="form-control">
            </div>
            <div class="form-group">
              <input type="password" name="senha" placeholder="Senha" class="form-control">
            </div>
            <button type="submit" class="btn btn-success">Entrar</button>
          </form>
          <% } else { %>
          	<div id="login_details" class="navbar-right">
          		<button type="submit" class="btn btn-primary"><%=user.getNome() + ", " +user.getEmail() %></button>
          		<a class="btn btn-danger" href="./logout">Sair</a>
          	</div>
          <% } %>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
      	<h1>Bem-vindo ao mundo Java EE</h1>
      	<h3>Este projeto foi criado utilizando Bootstrap <a href="http://getbootstrap.com">getbootstrap.com</a></h3>
      	<p>O texto abaixo foi inserido através de um "scriptlet". Código Java dentro do HTML!</p>
		<%
			// Comentando as declarações de variáveis
			String texto = "O resultado da soma é: ";
			int valor1 = 5;
			int valor2 = 5;
		%>
<pre>
// Comentando as declarações de variáveis
String texto = "O resultado da soma é: ";
int valor1 = 5;
int valor2 = 5;

out.println(texto + (valor1 + valor2));

<%=texto + (valor1 + valor2) %>
</pre>
		<p>Para conhecer mais sobre JSP visite o arquivo <a href="./objetos.jsp" target="_blank" class="btn btn-primary btn-lg" role="button">objetos.jsp &raquo;</a></p>
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-4">
          <h2>Primeiros passos com JSTL</h2>
          <p>Conheça as tags JSTL</p>
          <jsp:useBean id="userJstl" class="com.github.diegonobre.javaee.dto.User"></jsp:useBean>
          <p>Olá jsp:useBean: <jsp:getProperty property="nome" name="userJstl" /> </p>
          <p><a class="btn btn-default" href="#" role="button">Ler mais &raquo;</a></p>
        </div>
        <div class="col-md-4">
          <h2>Heading</h2>
          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
       </div>
        <div class="col-md-4">
          <h2>Heading</h2>
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
      </div>

      <hr>

      <footer>
        <p>&copy; Company 2014</p>
      </footer>
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>