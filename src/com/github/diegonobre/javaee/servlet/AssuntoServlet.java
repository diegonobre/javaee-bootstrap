package com.github.diegonobre.javaee.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.github.diegonobre.javaee.dao.AssuntoDao;
import com.github.diegonobre.javaee.model.Assunto;

/**
 * Servlet implementation class AssuntoServlet
 */
@WebServlet("/assunto")
public class AssuntoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String descricao = request.getParameter("descricao");
		
		Assunto assunto = new Assunto();
		assunto.setNome(nome);
		assunto.setDescricao(descricao);
		
		AssuntoDao assuntoDao = new AssuntoDao();
		try {
			assuntoDao.salvar(assunto);
			response.sendRedirect("./assuntos.jsp");
		} catch (Exception e) {
			response.sendRedirect("./erro.jsp");
		}
		
	}

}
