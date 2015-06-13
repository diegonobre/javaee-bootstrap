package com.github.diegonobre.javaee.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.github.diegonobre.javaee.jdbc.ConnectionFactory;
import com.github.diegonobre.javaee.model.Assunto;

public class AssuntoDao {

	private Connection db;
	
	public AssuntoDao() {
		this.db = new ConnectionFactory().getConnection();
	}
	
	public void salvar(Assunto assunto) {
		String sqlInsert = "INSERT INTO assunto (ds_nome, ds_descricao) VALUES (?, ?)";
		String sqlUpdate = "UPDATE assunto SET ds_nome = ?, ds_descricao = ? WHERE sq_assunto = ?";
		
		try {
			PreparedStatement stmt = null;
			
			if (assunto.getId() == null) {
				stmt = db.prepareStatement(sqlInsert);
			} else {
				stmt = db.prepareStatement(sqlUpdate);
			}
					
			stmt.setString(1, assunto.getNome());
			stmt.setString(2, assunto.getDescricao());
			
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<Assunto> getTodos() {
		try {
			List<Assunto> assuntos = new ArrayList<Assunto>();
			
			PreparedStatement stmt = db.prepareStatement("SELECT * FROM assunto");
			ResultSet rs = stmt.executeQuery();
			
			while (rs.next()) {
				Assunto assunto = new Assunto();
				assunto.setId(rs.getLong("sq_assunto"));
				assunto.setNome(rs.getString("ds_nome"));
				assunto.setDescricao(rs.getString("ds_descricao"));
				
				assuntos.add(assunto);
			}
			rs.close();
			stmt.close();
			
			System.out.println("retornando assuntos...");
			return assuntos;
			
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}

}
