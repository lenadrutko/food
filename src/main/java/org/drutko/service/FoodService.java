package org.drutko.service;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.drutko.domain.Cart;
import org.drutko.domain.Food;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Service for processing Food
 * 
 * @author Lena
 */
@Service("foodService")
@Transactional
public class FoodService {

	protected static Logger logger = Logger.getLogger("service");

	@Resource(name = "sessionFactory")
	private SessionFactory sessionFactory;

	/**
	 * Retrieves all
	 */
	public List<Food> getAll(Integer cartId) {
		logger.debug("Retrieving all food");

		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();

		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM Cart as o LEFT JOIN FETCH  o.foods WHERE o.id=" + cartId);

		Cart order = (Cart) query.uniqueResult();

		// Retrieve all
		return new ArrayList<Food>(order.getFoods());
	}

	/**
	 * Retrieves all
	 */
	public List<Food> getAll() {
		//logger.debug("Retrieving all food");

		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();

		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM  Food");
		if (query.list() != null){
			logger.debug("not null");
		};
		// Retrieve all
		return query.list();
	}

	/**
	 * Retrieves a single
	 */
	public Food get(Integer id) {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();

		// Retrieve existing credit card
		Food food = (Food) session.get(Food.class, id);

		// Persists to db
		return food;
	}

}
