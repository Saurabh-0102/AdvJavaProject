package dao;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

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
	
	public Object getCustomer(String email,String password) {
		try {
			emf = Persistence.createEntityManagerFactory("hibernate-mysql");
			em =  emf.createEntityManager();   
			Query q = em.createQuery("select c from Customer c where c.email = :em and c.password =:ps");
			q.setParameter("em", email);
			q.setParameter("ps", password);
			Object obj   = q.getSingleResult();
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
