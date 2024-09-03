package com.msb.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.msb.model.Attendance;
import com.msb.model.BlogArticle;
import com.msb.model.Challenge;
import com.msb.model.CompetitionText;
import com.msb.model.FanTable;
import com.msb.model.MSTCompetition;
import com.msb.model.MailSubscribe;
import com.msb.model.Postponeneetjee;
import com.msb.model.Quiz;
import com.msb.model.QuizPoints;
import com.msb.model.QuizScores;
import com.msb.model.School;
import com.msb.model.SchoolUser;
import com.msb.model.Survey;
import com.msb.model.SurveyResult;
import com.msb.model.SurveySubmit;
import com.msb.model.TeachingForm;
import com.msb.model.UserLikeKey;
import com.msb.model.UserLikeValidation;
import com.msb.util.MsbUtil;

@Repository
@Transactional
public class MSBDAOImpl implements MSBDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean saveSchool(School school) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.save(school);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	@Override
	public boolean isMobileExist(String phone) {
		Session session = sessionFactory.getCurrentSession();
		SchoolUser user = null;
		try {
			System.out.println("checking phone exist or not");
			Criteria criteria = session.createCriteria(SchoolUser.class);
			criteria.add(Restrictions.eq("phone", phone));
			user = (SchoolUser) criteria.uniqueResult();

			if (user != null)
				return true;
			else
				return false;
		
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	@Override
	public boolean saveTeachingInterest(TeachingForm teacher) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.save(teacher);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	@Override
	public boolean isAlreadyVoted(String phone) {
		Session session = sessionFactory.getCurrentSession();
		Postponeneetjee user = null;
		try {
			System.out.println("checking phone exist or not");
			Criteria criteria = session.createCriteria(Postponeneetjee.class);
			criteria.add(Restrictions.eq("mobile", phone));
			user = (Postponeneetjee) criteria.uniqueResult();

			if (user != null)
				return true;
			else
				return false;
		
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	@Override
	public boolean submitVote(Postponeneetjee postpone) {
		Session session = sessionFactory.getCurrentSession();

		try {

			session.save(postpone);
			return true;
		} catch (HibernateException exception) {
			exception.printStackTrace();
			return false;
		}
	}
	
	@Override
	public int getNoOfVotes(String vote) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(Postponeneetjee.class);
			//Criterion category = Restrictions.eq("comp_category_id",
					//comp_cat_id);
			criteria.add(Restrictions.eq("vote", vote));
			//Criterion user = Restrictions.eq("user_name", username);

			//Criterion criterion = Restrictions.and(user, comp);

			//criteria.add(Restrictions.and(user));
			criteria.setProjection(Projections.rowCount());
			Integer row_count = (int) (long) criteria.uniqueResult();
			System.out.println(row_count);
			return row_count;

		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public int saveSchoolPage(School school) {
		Session session = sessionFactory.getCurrentSession();

		try {
			return (int) session.save(school);

		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public int getSchoolMaxId() {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(School.class);
			criteria.setProjection(Projections.max("id"));
			int id = (Integer) criteria.uniqueResult();
			if (id != 0)
				return id + 1;
			else
				return 1;
		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public List<Survey> getSurvey(int id) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(Survey.class);
			//Criterion sname =Restrictions.eq("survey_id", id);
			//Criterion pointsCriterion = Restrictions.gt("points", 250);
			Criterion surveyId = Restrictions.eq("survey_id", id);
			criteria.add(Restrictions.and(surveyId));
			
			//if(limit!=0) {
				//criteria.setMaxResults(limit);
			//}

			List<Survey> toppers = criteria.list();
			return toppers;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public boolean saveSurveyResult(SurveySubmit surveyResult) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.save(surveyResult);
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	@Override
	public boolean isStudenTakenSurvey(int id, String user_name) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(SurveySubmit.class);

			Criterion qid = Restrictions.eq("survey_id", id);
			Criterion user = Restrictions.eq("user_name", user_name);
			criteria.add(Restrictions.and(qid, user));
			criteria.setProjection(Projections.rowCount());
			Long rowCount = (Long) criteria.uniqueResult();
			System.out.println(rowCount);
			if (rowCount.intValue() != 0)
				return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
		return false;
	}
	
	@Override
	public boolean challengeFriend(Challenge challenge) {
		Session session = sessionFactory.getCurrentSession();

		try {

			session.save(challenge);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	@Override
	public boolean isAlreadyChallenged(Challenge challenge) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(Challenge.class);

			Criterion qid = Restrictions.eq("link", challenge.getLink());
			Criterion user = Restrictions.eq("mobile", challenge.getMobile());
			criteria.add(Restrictions.and(qid, user));

			Challenge challenged = (Challenge) criteria.uniqueResult();

			if (challenged != null)
				return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
		return false;
	}
	
	@Override
	public Integer getUserFanCount(String usr) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(FanTable.class);
			//Criterion category = Restrictions.eq("comp_category_id",
					//comp_cat_id);
			criteria.add(Restrictions.eq("user_name", usr));
			//Criterion user = Restrictions.eq("user_name", username);

			//Criterion criterion = Restrictions.and(user, comp);

			//criteria.add(Restrictions.and(user));
			criteria.setProjection(Projections.rowCount());
			Integer row_count = (int) (long) criteria.uniqueResult();
			System.out.println(row_count);
			return row_count;

		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}

}