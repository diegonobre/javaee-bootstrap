<%@ include file="header.jsp" %>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    
      <div class="container">
          <h1>Cookies</h1>
<%
    Cookie cookie = null;
    Cookie[] cookies = null;
   
    // Get an array of Cookies associated with this domain
    cookies = request.getCookies();
    if ( cookies != null ) 
    {
        out.println("<h2>Foram encontrados os Cookies abaixo com nome e valor</h2>");
        for (int i = 0; i < cookies.length; i++){
            cookie = cookies[i];
            out.print("Nome : " + cookie.getName( ) + ",  ");
            out.print("Valor: " + cookie.getValue( ) + "<br />");
        }
    } 
    else 
    {
        out.println("<h2>Nenhum Cookie encontrado!</h2>");
    }
%>

<h2>O código acima é o seguinte:</h2>
<pre>
    Cookie cookie = null;
    Cookie[] cookies = null;
   
    // Get an array of Cookies associated with this domain
    cookies = request.getCookies();
    if ( cookies != null ) 
    {
        out.println(" Foram encontrados os Cookies abaixo com nome e valor ");
        for (int i = 0; i < cookies.length; i++){
            cookie = cookies[i];
            out.print("Nome : " + cookie.getName());
            out.print("Valor: " + cookie.getValue());
        }
    } 
    else 
    {
        out.println(" Nenhum Cookie encontrado! ");
    }
</pre>

      </div> <!-- fim da div container -->
    

<%@ include file="footer.jsp" %>