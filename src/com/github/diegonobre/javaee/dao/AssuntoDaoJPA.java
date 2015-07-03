package com.github.diegonobre.javaee.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.github.diegonobre.javaee.model.Assunto;

public class AssuntoDaoJPA {

	EntityManager em = Persistence.createEntityManagerFactory("jpacrud").createEntityManager();
	
	public void salvar(Assunto assunto) {
		try {
			
			em.getTransaction().begin();
			
			em.merge(assunto);
			
			em.getTransaction().commit();
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			em.close();
		}
	}
	
	public void remover(int id) {
		try {
			
			em.getTransaction().begin();
			
			Assunto assunto = em.find(Assunto.class, id);
			em.remove(assunto);
			
			em.getTransaction().commit();
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			em.close();
		}
	}
	
	public List<Assunto> getTodos() {
		List<Assunto> assuntos = new ArrayList<Assunto>();
		
		try {
			
			em.getTransaction().begin();
			
			Query query = em.createNamedQuery("Assunto.findAll");
			
			List<Object[]> list = query.getResultList();
			Iterator iterator = list.iterator();
			
			while (iterator.hasNext()) {
				Assunto assunto = (Assunto) iterator.next();
				assuntos.add(assunto);
			}
			
			em.getTransaction().commit();
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			em.close();
		}
		
		return assuntos;
	}
	
}
