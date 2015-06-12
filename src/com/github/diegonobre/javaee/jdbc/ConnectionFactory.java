package com.github.diegonobre.javaee.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

	public Connection getConnection() {
		try {
			String url = "jdbc:postgresql://localhost:5432/gc";
			String usuario = "gc";
			String senha = "gc";
			
			return DriverManager.getConnection(url, usuario, senha);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}

}
