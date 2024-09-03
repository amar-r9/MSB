package com.msb.dao;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.msb.model.Circle;

@Repository
@Transactional
public class CircleDAOImpl implements CircleDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean isStudentJoinedAnyCircle(String username) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(Circle.class);

			Criterion user = Restrictions.eq("username", username);
			
			criteria.add(Restrictions.and(user));

			Circle isAdded = (Circle) criteria.uniqueResult();

			if (isAdded != null)
				return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
		return false;
	}

	@Override
	public boolean addStudentToCircle(Circle circle) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.save(circle);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	@Override
	public Circle getStudentCircle(String username) {
		Session session = sessionFactory.getCurrentSession();

		try {
			return (Circle) session.get(Circle.class, username);
			//MSTCompetition competition= (MSTCompetition) session.get(MSTCompetition.class, id);
			//Hibernate.initialize(competition.getCompetition());
			//return competition;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

}
