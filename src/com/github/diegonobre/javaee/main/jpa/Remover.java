package com.github.diegonobre.javaee.main.jpa;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Remover {

	public static void main(String[] args) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpacrud");
		EntityManager em = emf.createEntityManager();
		
		Assunto assunto = new Assunto();
		
		em.getTransaction().begin();
		assunto = em.find(Assunto.class, 8);
		
		em.remove(assunto);
		
		em.getTransaction().commit();
		em.close();

	}

}
