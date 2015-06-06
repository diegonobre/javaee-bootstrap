package com.github.diegonobre.javaee.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.github.diegonobre.javaee.dto.Usuario;
import com.github.diegonobre.javaee.service.LoginService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(name = "/LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email, senha;
		
		HttpSession session = request.getSession();
		
		email = request.getParameter("email");
		senha = request.getParameter("senha");
		
		LoginService loginService = new LoginService();
		boolean result = loginService.auth(email, senha);
		
		if (result) {
			Usuario usuario = loginService.getUserDetails(email);
			session.setAttribute("usuario", usuario);
			
			response.sendRedirect("index.jsp");
			return;
		} 
		else {
			response.sendRedirect("index.jsp");
			session.setAttribute("mensagem", "Usuário ou senha incorretos!");
			return;
		}
	}

}
