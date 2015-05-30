<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Objetos JSP</title>
</head>
<body>
Essa página foi criada para testar passagem de parâmetros armazenando valores em diferentes escopos de uma página JSP.
<p>Clique no link abaixo para passar um parâmetro para essa página:</p>

<a href="./objetos.jsp?email=contato@diegonobre.net">http://localhost:8080/javaee-bootstrap/objetos.jsp?email=contato@diegonobre.net</a>
<br />
<%
String email = request.getParameter("email");

if (email != null) {
	pageContext.setAttribute("emailContext", email);
	session.setAttribute("emailSession", email);
	application.setAttribute("emailApplication", email);
}
%>
<br />
E-mail em pageContext é: <%= pageContext.getAttribute("emailContext") %>
<br />
E-mail em session é: <%= session.getAttribute("emailSession") %>
<br />
E-mail em application é: <%= application.getAttribute("emailApplication") %>
<br />
</body>
</html>