package org.drutko.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.drutko.domain.Cart;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Service for processing Orders
 * 
 * @author Lena
 */
@Service("cartService")
@Transactional
public class CartService {

	protected static Logger logger = Logger.getLogger("service");

	@Resource(name = "sessionFactory")
	private SessionFactory sessionFactory;

	/**
	 * Retrieves all orders
	 * 
	 * @return a list of orders
	 */
	public List<Cart> getAll() {
		logger.debug("Retrieving all persons");

		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();

		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM Cart");

		// Retrieve all
		return query.list();
	}

	/**
	 * Retrieves a single order
	 */
	public Cart get(Integer id) {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();

		// Retrieve existing person
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM Cart as o LEFT JOIN FETCH  o.foods WHERE o.id=" + id);

		return (Cart) query.uniqueResult();
	}

	/**
	 * Adds a new order
	 */
	public void add(Cart cart) {
		logger.debug("Adding new order");

		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();

		// Persists to db
		session.save(cart);
	}
}
