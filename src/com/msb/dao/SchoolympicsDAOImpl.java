package com.msb.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.msb.model.SchoolympicsSchool;

@Repository
@Transactional
public class SchoolympicsDAOImpl implements SchoolympicsDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean saveSchoolympicsSchool(SchoolympicsSchool school) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.save(school);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<SchoolympicsSchool> getSchoolsList() {
		Session session = sessionFactory.getCurrentSession();

		try {
			//int limit = 10;
			Criteria criteria = session.createCriteria(SchoolympicsSchool.class);
			//criteria.addOrder(Order.desc("points"));
			//criteria.setMaxResults(limit);
			List<SchoolympicsSchool> competitions = criteria.list();

			return competitions;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public Integer getSchoolympicsMaxID() {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(SchoolympicsSchool.class);
			criteria.setProjection(Projections.max("id"));
			Integer id = (Integer) criteria.uniqueResult();
			if (id != null)
				return id;
			else
				return 1;
		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}

}