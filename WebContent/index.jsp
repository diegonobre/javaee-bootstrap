<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Meu primeiro JSP</title>
</head>
<body>
O texto abaixo foi inserido atrav�s de um "scriptlet". C�digo Java dentro do HTML!

<%
	// Comentando as declara��es de vari�veis
	String texto = "O resultado da soma �: ";
	int valor1 = 5;
	int valor2 = 5;
%>

<p>Preparando resultado...</p>

<p><%=texto + (valor1 + valor2) %></p>

<p>Para conhecer mais sobre JSP visite o arquivo <a href="./objetos.jsp" target="_blank">objetos.jsp</a></p>
</body>
</html>