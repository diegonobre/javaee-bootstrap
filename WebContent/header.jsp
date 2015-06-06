<%@ page import="com.github.diegonobre.javaee.dto.Usuario" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

    <title>JavaEE Bootstrap - github.com/diegonobre/javaee-bootstrap</title>

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
          <a class="navbar-brand" href="./" style="color:white">JavaEE Bootstrap</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="./escopos.jsp" style="color:white">Escopos</a></li>
            <li class="active"><a href="./expression-language.jsp" style="color:white">Expression Language</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" style="color:white">Usuários <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="#">Cadastrar</a></li>
                <li><a href="./usuarios.jsp">Listar</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">Relatórios</li>
                <li><a href="#">[x] Usuários inativos</a></li>
                <li><a href="#">[ ] Quantidade de acessos</a></li>
              </ul>
            </li>
          </ul>
          <%
          	if (session.getAttribute("usuario") == null) {
          %>
          <ul class="nav navbar-nav navbar-right">
				<li>
					<form class="navbar-form navbar-right" method="post" action="./login">
					  <div class="form-group">
					    <input type="text" name="email" placeholder="E-mail" class="form-control">
					  </div>
					  <div class="form-group">
					    <input type="password" name="senha" placeholder="Senha" class="form-control">
					  </div>
					  <button type="submit" class="btn btn-success">Entrar</button>
					</form>
				</li>
			</ul>
          <%
          	} else {
          %>
            <%
            	Usuario usuario = (Usuario) session.getAttribute("usuario");
            %>
          	<ul class="nav navbar-nav navbar-right">
	            <li><a class="btn btn-primary" href="./" style="color:white"><%=usuario.getNome() + ", " +usuario.getEmail() %></a></li>
	            <li><a class="btn btn-danger" href="./logout" style="color:white">Sair</a></li>
	        </ul>
          <% } %>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
