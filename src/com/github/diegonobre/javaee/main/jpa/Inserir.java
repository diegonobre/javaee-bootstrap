package com.github.diegonobre.javaee.main.jpa;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Inserir {

	public static void main(String[] args) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpacrud");
		EntityManager em = emf.createEntityManager();
		
		Assunto assunto = new Assunto();
		
		assunto.setDsNome("JPA CRUD");
		assunto.setDsDescricao("Meu primeiro CRUD com JPA");
		
		em.getTransaction().begin();
		
		em.persist(assunto);
		
		em.getTransaction().commit();
		em.close();

	}

}
