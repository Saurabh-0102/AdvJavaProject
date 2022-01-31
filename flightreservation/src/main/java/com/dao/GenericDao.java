package com.dao;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import org.springframework.stereotype.Component;

import com.entity.BordingPass;
import com.entity.Flight;
import com.entity.User;

@Component
public class GenericDao {

	@PersistenceContext
	private EntityManager em;

	@Transactional
	public void add(Object obj) {
		em.merge(obj);
	}
	
	public User validateUser(String email,String password) {
		Query q = em.createQuery("select c from User c where c.email = :em and c.password = :ps");
		q.setParameter("em",email);
		q.setParameter("ps", password);
		User user = (User) q.getSingleResult();
		return user;
	}
	
	public List<Flight> searchFlight(String dcity,String acity) {
		Query q = em.createQuery("select c from Flight c where c.departureCity = :dc and c.arrivalCity = :ac ");
		q.setParameter("dc", dcity);
		q.setParameter("ac", acity);
		List<Flight> f = q.getResultList();
		return f;
	}
	
	public List<Flight> getAllFlights(){
		Query q = em.createQuery("select c from Flight c");
		List<Flight> flight = q.getResultList();
		return flight;
	}
	
	public List<User> getAllUsers(){
		Query q = em.createQuery("select c from User c");
		List<User> user = q.getResultList();
		return user;
	}
	
	public BordingPass getPass() {
		Query q = em.createQuery("select c from BordingPass");
		BordingPass bp = (BordingPass) q.getSingleResult();
		return bp;
	}
	
}
