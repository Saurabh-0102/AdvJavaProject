package com.dao;


import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import org.springframework.stereotype.Component;

import com.entity.Flight;
import com.entity.User;

@Component
public class GenericDao {

	@PersistenceContext
	private EntityManager em;

	@Transactional
	public void add(Object obj) {
		em.persist(obj);
	}
	
	public User validateUser(String email,String password) {
		Query q = em.createQuery("select c from User c where c.email = :em and c.password = :ps");
		q.setParameter("em",email);
		q.setParameter("ps", password);
		User user = (User) q.getSingleResult();
		return user;
	}
	
	public Flight searchFlight(String dcity,String acity) {
		Query q = em.createQuery("select c from Flight c where c.departureCity = :dc and c.arrivalCity = :ac ");
		q.setParameter("dc", dcity);
		q.setParameter("ac", acity);
		Flight f = (Flight) q.getSingleResult();
		return f;
	}
	
}
