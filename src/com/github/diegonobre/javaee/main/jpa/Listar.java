package com.github.diegonobre.javaee.main.jpa;

import java.util.Iterator;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class Listar {

	public static void main(String[] args) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpacrud");
		EntityManager em = emf.createEntityManager();
		
		em.getTransaction().begin();
		
		Query query = em.createNamedQuery("Assunto.findAll");
		
		List list = query.getResultList();
		Iterator iterator = list.iterator();
		
		while (iterator.hasNext()) {
			
			Assunto assunto = (Assunto) iterator.next();
			System.out.println("Nome: " + assunto.getDsNome());
			
		}
		
		em.getTransaction().commit();
		em.close();
	}

}
