package com.github.diegonobre.javaee.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

	public Connection getConnection() {
		try {
			Class.forName("org.postgresql.Driver");
			
			String banco = "gc";
			String usuario = "gc";
			String senha = "gc";
			
			String url = "jdbc:postgresql://localhost/"+banco+"?user="+usuario+"&password="+senha;
			
			return DriverManager.getConnection(url);
			
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new RuntimeException();
		}
		return null;
	}

}
