package com.github.diegonobre.javaee.dao;

import java.util.ArrayList;
import java.util.List;

import com.github.diegonobre.javaee.model.Usuario;

public class UsuarioDAO {
	
	public List<Usuario> usuarios = new ArrayList<Usuario>();

	public UsuarioDAO() {
		System.out.println("Instanciado UsuarioDAO");
		
		Usuario usuario = new Usuario();
		usuario.setNome("Diego Nobre");
		usuario.setEmail("dcnobre@gmail.com");
		
		Usuario usuario2 = new Usuario();
		usuario2.setNome("Maria");
		usuario2.setEmail("maria@maria.com");
		
		usuarios.add(usuario);
		usuarios.add(usuario2);
	}
	
	public List<Usuario> getTodos() {
		return usuarios;
	}

}
