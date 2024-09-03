package com.msb.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.transform.Transformers;
import org.hibernate.type.StandardBasicTypes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.msb.bean.TopSchoolsBean;
import com.msb.model.Competition;
import com.msb.model.CompetitionText;
import com.msb.model.MSTCompetition;
import com.msb.model.School;
import com.msb.model.SchoolPageDetails;
import com.msb.model.SchoolUser;

@Repository
@Transactional
public class SchoolDAOImpl implements SchoolDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<TopSchoolsBean> getTopSchoolsList() {
		Session session = sessionFactory.getCurrentSession();

		try {
			String query = "select u.school as school_name,s.school_code,sum(u.points) as total from USER_DETAILS u join "
					+ "SCHOOLS s ON u.school=s.SCHOOL_NAME where u.points>250  GROUP BY u.SCHOOL ORDER BY TOTAL DESC";
			Query topSchoolsQuery = session
					.createSQLQuery(query)
					.addScalar("total", StandardBasicTypes.INTEGER)
					.addScalar("school_name")
					.addScalar("school_code")
					.setResultTransformer(
							Transformers.aliasToBean(TopSchoolsBean.class));

			@SuppressWarnings("unchecked")
			List<TopSchoolsBean> topSchoolsList = topSchoolsQuery.list();
			return topSchoolsList;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<School> getSchoolList() {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(School.class);
			List<School> schoolsList = criteria.list();
			System.out.println("school list size" + schoolsList.size());
			return schoolsList;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public School getSchoolPageDeails(int school_code) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(School.class);
			criteria.add(Restrictions.eq("id", school_code));
			School schoolPageDetails = (School) criteria
					.uniqueResult();

			return schoolPageDetails;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public SchoolPageDetails getSchoolPageDeails(String school_code) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(SchoolPageDetails.class);
			criteria.add(Restrictions.eq("school_code", school_code));
			SchoolPageDetails schoolPageDetails = (SchoolPageDetails) criteria
					.uniqueResult();

			return schoolPageDetails;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public String getSchoolImage(int school_code) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(SchoolPageDetails.class);
			criteria.add(Restrictions.eq("id", school_code));
			SchoolPageDetails schoolPageDetails = (SchoolPageDetails) criteria
					.uniqueResult();

			return schoolPageDetails.getSchool_image();

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}

	}

	@Override
	public String getSchoolLogo(int school_code) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(SchoolPageDetails.class);
			criteria.add(Restrictions.eq("id", school_code));
			SchoolPageDetails schoolPageDetails = (SchoolPageDetails) criteria
					.uniqueResult();

			return schoolPageDetails.getSchool_logo();

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}

	}

	@Override
	public Integer getSchoolTotalPoints(String school_name, String school_code) {
		Session session = sessionFactory.getCurrentSession();

		try {

			Criteria criteria = session.createCriteria(SchoolUser.class);
			
			//Criterion sname = Restrictions.and(
					//Restrictions.isNotNull("school"),
					//Restrictions.like("school", school_name));
			Criterion scode = Restrictions.and(
					Restrictions.isNotNull("school_code"),
					Restrictions.eq("school_code", school_code));
			
			Criterion name_code = Restrictions.or(scode);
			Criterion pointsCriterion = Restrictions.ge("points", 0);
			criteria.add(Restrictions.and(name_code, pointsCriterion));
			criteria.setProjection(Projections.sum("points"));
			
			Long points = (Long) criteria.uniqueResult();

			return points.intValue();

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<SchoolUser> getSchoolToppers(String school_name, String school_code, int limit) {
		Session session = sessionFactory.getCurrentSession();

		try {

			Criteria criteria = session.createCriteria(SchoolUser.class);
			Criterion sname = Restrictions.and(
					Restrictions.isNotNull("school"),
					Restrictions.like("school", school_name));
			Criterion scode = Restrictions.and(
					Restrictions.isNotNull("school_code"),
					Restrictions.eq("school_code", school_code));
			//Criterion name_code = Restrictions.or(sname, scode);
			//Criterion pointsCriterion = Restrictions.gt("points", 250);
			criteria.add(Restrictions.and(sname, scode));
			//criteria.add(Restrictions.and(name_code, pointsCriterion));
			criteria.addOrder(Order.desc("points"));
			if(limit!=0) {
				criteria.setMaxResults(limit);
			}

			List<SchoolUser> toppers = criteria.list();
			return toppers;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<CompetitionText> getSchoolTextEntries(String school_name,
			String school_code, int textCategory, int limit, int offset) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(CompetitionText.class);
			criteria.createCriteria("user", "user");

			Criterion categroy = Restrictions.eq("category",
					textCategory);

			Criterion sname = Restrictions.and(
					Restrictions.isNotNull("user.school"),
					Restrictions.like("user.school", school_name));
			Criterion scode = Restrictions.and(
					Restrictions.isNotNull("user.school_code"),
					Restrictions.eq("user.school_code", school_code));

			Criterion name_code = Restrictions.or(sname, scode);

			Criterion status = Restrictions.eq("status", 1);

			Criterion cat_status = Restrictions.and(categroy, status);

			criteria.add(Restrictions.and(name_code, cat_status));

			criteria.addOrder(Order.desc("submit_date"));

			if (offset != 0)
				criteria.setFirstResult(offset);

			if (limit != 0)
				criteria.setMaxResults(limit);

			criteria.setFetchMode("competition", FetchMode.JOIN);
			List<CompetitionText> textCompList = criteria.list();

			return textCompList;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<MSTCompetition> getSchoolMSTEntries(
			String school_name, String school_code, String comp_tye, int limit, int offset) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session
					.createCriteria(MSTCompetition.class);
			criteria.createCriteria("user", "user");

			Criterion sname = Restrictions.and(
					Restrictions.isNotNull("user.school"),
					Restrictions.like("user.school", school_name));
			Criterion scode = Restrictions.and(
					Restrictions.isNotNull("user.school_code"),
					Restrictions.eq("user.school_code", school_code));

			Criterion name_code = Restrictions.or(sname, scode);

			Criterion status = Restrictions.eq("status", 1);

			criteria.add(Restrictions.and(name_code, status));

			criteria.addOrder(Order.desc("submit_date"));

			if (offset != 0)
				criteria.setFirstResult(offset);

			if (limit != 0)
				criteria.setMaxResults(limit);

			criteria.setFetchMode("competition", FetchMode.JOIN);
			List<MSTCompetition> paintCompList = criteria.list();

			return paintCompList;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public boolean saveSchool(School school) {
		Session session = sessionFactory.getCurrentSession();

		try {
			/*
			 * System.out.println("photo size" + photo.available()); if (photo
			 * != null && photo.available() > 0) { // UserProfileImage
			 * profileImage = new UserProfileImage(); byte[] image =
			 * IOUtils.toByteArray(photo); user.setImage(image); }
			 */
			
			session.save(school);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<CompetitionText> getSchoolAllTextEntries(String school_name,
			String school_code, int textCategory, int offset) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(CompetitionText.class);
			criteria.createCriteria("user", "user");

			Criterion categroy = Restrictions.eq("comp_category_id",
					textCategory);

			Criterion sname = Restrictions.and(
					Restrictions.isNotNull("user.school"),
					Restrictions.like("user.school", school_name));
			Criterion scode = Restrictions.and(
					Restrictions.isNotNull("user.school_code"),
					Restrictions.eq("user.school_code", school_code));

			Criterion name_code = Restrictions.or(sname, scode);

			Criterion status = Restrictions.eq("status", 1);

			Criterion cat_status = Restrictions.and(categroy, status);

			criteria.add(Restrictions.and(name_code, cat_status));

			criteria.addOrder(Order.desc("submit_date"));

			if (offset != 0)
				criteria.setFirstResult(offset);

			criteria.setFetchMode("competition", FetchMode.JOIN);
			List<CompetitionText> textCompList = criteria.list();

			return textCompList;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public Integer getSchoolTotalPointsByClient(String school_name, String school_code, String client) {
		Session session = sessionFactory.getCurrentSession();

		try {

			//Criteria criteria = session.createCriteria(User.class);
			Criteria criteria = session.createCriteria(Competition.class);
			
			Criterion clientname = Restrictions.and(
					Restrictions.isNotNull("competition_by"),
					Restrictions.eq("competition_by", "pinnale"));
			
			Criterion sname = Restrictions.and(
					Restrictions.isNotNull("school"),
					Restrictions.like("school", school_name));
			Criterion scode = Restrictions.and(
					Restrictions.isNotNull("school_code"),
					Restrictions.eq("school_code", school_code));
			Criterion name_code = Restrictions.or(sname, scode);
			Criterion pointsCriterion = Restrictions.gt("points", 250);
			criteria.add(Restrictions.and(name_code, pointsCriterion));
			criteria.setProjection(Projections.sum("points"));

			Long points = (Long) criteria.uniqueResult();

			return points.intValue();

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List<TopSchoolsBean> getPinnalceTopSchoolsList() {
		Session session = sessionFactory.getCurrentSession();

		try {
			String query = "select u.school as school_name,s.school_code,sum(u.points) as total from (select sum(s.qpoints+s.tpoints+s.ppoints+250) as total from (select q.user_name,qpoints,tpoints,ppoints from (SELECT qp.user_name,sum(qp.points) as qpoints FROM `QUIZ_POINTS` qp join QUIZ_TABLE qt on qt.id=qp.quizid where qt.client='pinnacle' and qt.status=1) q inner join (SELECT ct.user_id as user_name,sum(ct.points) as tpoints FROM `competition_text` ct join competition cp on cp.comp_id=ct.comp_id where cp.competition_by='pinnacle' and cp.status=1 and ct.status=1) t on q.user_name=t.user_name inner join (SELECT cs.user_name,sum(cs.points) as ppoints FROM `COMP_SUBMISSIONS` cs join competition cp on cp.comp_id=cs.comp_id where cp.competition_by='pinnacle' and cp.status=1 and cs.status=1) p on t.user_name=p.user_name)) join USER_DETAILS u join"
					+ "SCHOOLS s ON u.school=s.SCHOOL_NAME where u.points>250  GROUP BY u.SCHOOL ORDER BY TOTAL DESC";
			Query topSchoolsQuery = session
					.createSQLQuery(query)
					.addScalar("total", StandardBasicTypes.INTEGER)
					.addScalar("school_name")
					.addScalar("school_code")
					.setResultTransformer(
							Transformers.aliasToBean(TopSchoolsBean.class));

			@SuppressWarnings("unchecked")
			List<TopSchoolsBean> topSchoolsList = topSchoolsQuery.list();
			return topSchoolsList;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<SchoolUser> getSchoolStudents(String school_name, String school_code) {
		Session session = sessionFactory.getCurrentSession();

		try {

			Criteria criteria = session.createCriteria(SchoolUser.class);
			Criterion sname =Restrictions.like("school", school_code);
			Criterion scode = Restrictions.eq("school_code", school_code);
			Criterion status = Restrictions.eq("active", 1);
			//Criterion pointsCriterion = Restrictions.gt("points", 250);
			Criterion c4 = Restrictions.or(Restrictions.and(sname, status), scode);
		    criteria.add(c4);
			
			//criteria.add(Restrictions.and(scode));
			//criteria.add(Restrictions.and(name_code, pointsCriterion));
			criteria.addOrder(Order.desc("reg_date"));
			
			//if(limit!=0) {
				//criteria.setMaxResults(limit);
			//}

			List<SchoolUser> toppers = criteria.list();
			return toppers;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public Integer getSchoolTotalParticipants(String school_name, String school_code) {
		Session session = sessionFactory.getCurrentSession();

		try {

			Criteria criteria = session.createCriteria(SchoolUser.class);
			
			Criterion scode = Restrictions.and(
					Restrictions.isNotNull("school_code"),
					Restrictions.eq("school_code", school_code));
			
			criteria.add(Restrictions.and(scode));
			criteria.setProjection(Projections.rowCount());
			Long rowCount = (Long) criteria.uniqueResult();

			return rowCount.intValue();

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

}
