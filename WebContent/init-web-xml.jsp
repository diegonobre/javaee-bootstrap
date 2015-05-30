<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><%= getServletConfig().getInitParameter("ds_titulo") %></title>
</head>
<%!
	public void jspInit() {
		String ds_titulo = getServletConfig().getInitParameter("ds_titulo");
		getServletContext().setAttribute("ds_titulo", ds_titulo);
	}
%>

<body>
<h3>Olhe para o t�tulo da p�gina \o</h3>
<p>O texto foi configurado no arquivo web.xml</p>
<h3>Sobrescrevendo a fun��o jspInit(), adicionamos um atributo ao ServletContext usando setAttribute(parametro, valor);</h3>
<p>No ServletContext o valor �: <%= getServletContext().getAttribute("ds_titulo") %></p>
<p>url: /WebContent/WEB-INF/web.xml</p>
</body>
</html>