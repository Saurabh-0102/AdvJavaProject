package dao;
import java.util.List;

import javax.persistence.*;

import pojos.Customer;

public class CustomerImp implements CustomerDaoIF {

	EntityManagerFactory emf = null; 
	EntityManager em = null;
	EntityTransaction tx = null;
	
	public Object addCustomer(Object obj) {
		
		try {
			emf = Persistence.createEntityManagerFactory("hibernate-mysql");
			em =  emf.createEntityManager();
			tx =  em.getTransaction();
			tx.begin();
			em.persist(obj);
			tx.commit();
			return obj;
		}finally {
			em.close();
			emf.close();
		}
	}
	
	public List<Customer> getCustomer(String email,String password) {
		try {
			emf = Persistence.createEntityManagerFactory("hibernate-mysql");
			em =  emf.createEntityManager();   
			Query q = em.createQuery("select c from Customer c where c.email = :em and c.password =:ps");
			q.setParameter("em", email);
			q.setParameter("ps", password);
			List<Customer> obj   = q.getResultList();
			return obj;
		}finally {
			em.close();
			emf.close();
		}
	}
	
	public Object getAllCustomer() {
		try {
			emf = Persistence.createEntityManagerFactory("hibernate-mysql");
			em =  emf.createEntityManager();
			tx.begin();
			Query q = em.createQuery("select c from Customer c");
			List<Object> obj   = q.getResultList();
			return obj;
		}finally {
			em.close();
			emf.close();
		}
	}
}
