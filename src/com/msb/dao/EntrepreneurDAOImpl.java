package com.msb.dao;

import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.transform.Transformers;
import org.hibernate.type.StandardBasicTypes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.msb.model.AskAnExpert;
import com.msb.model.CompetitionText;
import com.msb.model.Enquiry;
import com.msb.model.MSTCompetition;
import com.msb.model.Other;
import com.msb.model.PaymentDetails;
import com.msb.model.UserLikeKey;
import com.msb.model.UserLikeValidation;

@Repository
@Transactional
public class EntrepreneurDAOImpl implements EntrepreneurDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public boolean saveEnquiry(Enquiry enquiry) {
		Session session = sessionFactory.getCurrentSession();

		try {

			session.save(enquiry);
			return true;
		} catch (HibernateException exception) {
			exception.printStackTrace();
			return false;
		}
	}

}
