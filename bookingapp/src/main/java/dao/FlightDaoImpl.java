package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import pojos.Flight;

public class FlightDaoImpl implements FlightDao{

	EntityManagerFactory emf;
	EntityManager em;

	public List<Flight> getFlights(String dcity, String acity) {
		try {
			emf = Persistence.createEntityManagerFactory("hibernate-mysql");
			em =  emf.createEntityManager();   
			Query q = em.createQuery("select c from Flight c where c.depCity = :em and c.arrCity =:ps");
			q.setParameter("em", dcity);
			q.setParameter("ps", acity);
			List<Flight> flight   = q.getResultList();
			return flight;
		}finally {
			em.close();
			emf.close();
		}	
	}
}
