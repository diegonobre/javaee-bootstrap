package com.github.diegonobre.javaee.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class OlaServlet
 */
@WebServlet(name = "/OlaServlet", urlPatterns = {"/ola-servlet", "/ola-get", "/ola-post"},
	initParams={@WebInitParam(name="versao", value="0.3.1")}
)
public class OlaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		/*
		 * Como ainda não conhecemos JSP, vamos avisar ao cliente que 
		 * a resposta vai ser no formato "text/html"
		 */
		response.setContentType("text/html");
		
		/*
		 * Com o PrintWriter, poderemos escrever textos na resposta
		 */
		PrintWriter out = response.getWriter();
		
		/*
		 * O valor do parâmetro e-mail, poderá ser passado para o Servlet
		 * utilizando a url: /ola-servlet?email=seunome@email.com
		 */
		String email = request.getParameter("email");
		
		HttpSession session = request.getSession();
		ServletContext context = request.getServletContext();
		
		if (email != null && !email.isEmpty()) {
			session.setAttribute("emailSession", email);
			context.setAttribute("emailSession", email);
		}
		
		out.println("Olá Mundo Servlet! Aprendi a escrever o seu email (request): " + email);
		out.println("Olá Mundo Servlet! Aprendi a escrever o seu email (session): " + (String) session.getAttribute("emailSession") );
		out.println("Olá Mundo Servlet! Aprendi a escrever o seu email (context): " + (String) context.getAttribute("emailSession") );
		out.println("Olá Mundo Servlet! Aprendi a escrever um parâmetro do servletConfig: " + (String) this.getServletConfig().getInitParameter("versao") );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		response.getWriter().write("Olá doPost(), aqui está o parâmetro email ("+email+") e senha ("+senha+")!");
	}

}
