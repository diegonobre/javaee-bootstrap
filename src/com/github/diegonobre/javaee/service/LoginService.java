package com.github.diegonobre.javaee.service;

import java.util.HashMap;

import com.github.diegonobre.javaee.dto.User;

public class LoginService {
	
	HashMap<String, String> usuarios = new HashMap<String, String>();
	
	public LoginService() {
		usuarios.put("joao@dasilva.com", "João da Silva");
		usuarios.put("paulofreire@gmail.com", "Paulo Freire");
		usuarios.put("steve@apple.com", "Steve Jobs");
		usuarios.put("billgates@microsoft.com", "Bill Gates");
	}
	
	public boolean auth(String email, String senha) {
		
		if (senha == null || senha.trim() == "") {
			return false;
		}
		return true;
	}
	
	public User getUserDetails(String email) {
		User user = new User(); 
		user.setNome(usuarios.get(email));
		user.setEmail(email);
		
		return user;
	}

}
