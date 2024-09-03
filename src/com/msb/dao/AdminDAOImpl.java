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
import com.msb.model.Admin;
import com.msb.model.Attendance;
import com.msb.model.CompetitionText;
import com.msb.model.MILOSubmission;
import com.msb.model.MSTCompetition;
import com.msb.model.MiloPoints;
import com.msb.model.MiloSession;
import com.msb.model.School;
import com.msb.model.SchoolUser;
import com.msb.model.UserEntryDisqualify;

@Repository
@Transactional
public class AdminDAOImpl implements AdminDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Admin validateUser(String username, String password) {
		Session session = sessionFactory.getCurrentSession();
		Admin other = null;
		try {
			System.out.println("\n"+username+password);
			
			Criteria criteria = session.createCriteria(Admin.class);
			criteria.add(Restrictions.eq("username", username));
			other = (Admin) criteria.uniqueResult();
			
			if (other != null && other.getUsername() != null
					&& !other.getUsername().isEmpty()) {
				if (other.getPassword().equals(password)) {
					return other;
				}

			} else
				return null;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}

		return null;
	}

	@Override
	public int getTotalStudentsCount(String client) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(SchoolUser.class);
			
			criteria.add(Restrictions.eq("client", client));

			criteria.setProjection(Projections.rowCount());
			Long rowCount = (Long) criteria.uniqueResult();
			return rowCount.intValue();
		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Integer getClientMSTEntriesCount(int school_code, String type) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(MSTCompetition.class);
			criteria.createCriteria("user", "user");
			
			Criterion categroy = Restrictions.eq("submission_type", type);
			Criterion scode = Restrictions.and(
					Restrictions.isNotNull("user.school_code"),
					Restrictions.eq("user.school_code", school_code));
			criteria.add(Restrictions.and(categroy, scode));
					
			criteria.setProjection(Projections.rowCount());
			Long rowCount = (Long) criteria.uniqueResult();
			return rowCount.intValue();
		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<CompetitionText> getAllTextEntriesByClient(String type, String comp_by) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(CompetitionText.class);
			Criterion category = Restrictions.eq("entry_type",
					type);
			Criterion comp_client = Restrictions.eq("comp_by", comp_by);
			Criterion status = Restrictions.eq("status", 1);
				
				Criterion criterion = Restrictions.and(category, status);

				criteria.add(Restrictions.and(criterion, comp_client));
			
				criteria.addOrder(Order.desc("submit_date"));
				//if (offset != 0)
					//criteria.setFirstResult(offset);

				//if (limit != 0)
					//criteria.setMaxResults(limit);
				List<CompetitionText> competitions = criteria.list();

			return competitions;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}

	}

	@Override
	public boolean disqualifyTextEntry(UserEntryDisqualify userEntryDisqualify) {
		
		Session session = sessionFactory.getCurrentSession();
		try {

			session.save(userEntryDisqualify);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	@Override
	public boolean reportUserTextEntry(int id) {
		Session session = sessionFactory.getCurrentSession();
		try {
			int status=2;
			Criteria criteria = session.createCriteria(CompetitionText.class);
			criteria.add(Restrictions.eq("id", id));
			CompetitionText text = (CompetitionText) criteria.uniqueResult();
			text.setStatus(status);
			session.merge(text);
			/*
			 * session.flush(); session.refresh(user);
			 */
			return true;
		} catch (HibernateException exception) {
			exception.printStackTrace();
			return false;
		}

	}
	
	@Override
	public boolean reportUserMSTEntry(int id) {
		Session session = sessionFactory.getCurrentSession();
		try {
			int status=2;
			Criteria criteria = session.createCriteria(MSTCompetition.class);
			criteria.add(Restrictions.eq("id", id));
			MSTCompetition mst = (MSTCompetition) criteria.uniqueResult();
			mst.setStatus(status);
			session.merge(mst);
			/*
			 * session.flush(); session.refresh(user);
			 */
			return true;
		} catch (HibernateException exception) {
			exception.printStackTrace();
			return false;
		}

	}
	
	@Override
	public List<MiloSession> getAllSessions() {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(MiloSession.class);
			
				criteria.addOrder(Order.asc("id"));
				//if (offset != 0)
					//criteria.setFirstResult(offset);

				//if (limit != 0)
					//criteria.setMaxResults(limit);
				List<MiloSession> sessions = criteria.list();

			return sessions;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}

	}

	@Override
	public int getTotalStudentsForSession(int sessionId) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(Attendance.class);
			
			criteria.add(Restrictions.eq("sessionId", sessionId));

			criteria.setProjection(Projections.rowCount());
			Long rowCount = (Long) criteria.uniqueResult();
			return rowCount.intValue();
		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public int getTotalSubmissionsForSession(int sessionId) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(MILOSubmission.class);
			
			criteria.add(Restrictions.eq("session_id", sessionId));

			criteria.setProjection(Projections.rowCount());
			Long rowCount = (Long) criteria.uniqueResult();
			return rowCount.intValue();
		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public List<MILOSubmission> getAllSessionEntries(int sessionId) {
		Session session = sessionFactory.getCurrentSession();
		
		try {
			Criteria criteria = session.createCriteria(MILOSubmission.class);
			
			Criterion sessionsId = Restrictions.eq("session_id",
					sessionId);
			
			Criterion status = Restrictions.eq("status", 1);
			criteria.add(Restrictions.and(sessionsId, status));
			
			criteria.addOrder(Order.desc("submit_date"));
				//if (offset != 0)
					//criteria.setFirstResult(offset);

				//if (limit != 0)
					//criteria.setMaxResults(limit);
			criteria.setFetchMode("competition", FetchMode.JOIN);
			List<MILOSubmission> competitions = criteria.list();

			return competitions;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List<MILOSubmission> getUserMiloSubmissions(String username) {
		Session session = sessionFactory.getCurrentSession();
		
		try {
			Criteria criteria = session.createCriteria(MILOSubmission.class);

			criteria.createCriteria("competition", "competition");
			
			Criterion user = Restrictions.eq("user_name",
					username);
			
			Criterion status = Restrictions.eq("status", 1);
			criteria.add(Restrictions.and(user, status));
			
			criteria.addOrder(Order.desc("submit_date"));
				//if (offset != 0)
					//criteria.setFirstResult(offset);

				//if (limit != 0)
					//criteria.setMaxResults(limit);
			criteria.setFetchMode("competition", FetchMode.JOIN);
			List<MILOSubmission> competitions = criteria.list();

			return competitions;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List<SchoolUser> getAllStudents(String client) {
		Session session = sessionFactory.getCurrentSession();
		
		try {
			Criteria criteria = session.createCriteria(SchoolUser.class);
			
			Criterion user = Restrictions.eq("client",
					client);
			
			Criterion status = Restrictions.eq("active", 1);
			criteria.add(Restrictions.and(user, status));
			
			criteria.addOrder(Order.asc("id"));
				//if (offset != 0)
					//criteria.setFirstResult(offset);

				//if (limit != 0)
					//criteria.setMaxResults(limit);
			//criteria.setFetchMode("competition", FetchMode.JOIN);
			List<SchoolUser> students = criteria.list();

			return students;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List<MiloPoints> getTopStudents(String client) {
		Session session = sessionFactory.getCurrentSession();
		
		try {
			Criteria criteria = session.createCriteria(MiloPoints.class);
			
			//Criterion user = Restrictions.eq("client",
					//client);
			//Criterion status = Restrictions.eq("active", 1);
			//criteria.add(Restrictions.and(user, status));
			criteria.addOrder(Order.desc("points"));
			criteria.setMaxResults(10);
			
			@SuppressWarnings("unchecked")
			List<MiloPoints> topstudents = criteria.list();

			return topstudents;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List<School> getAllSchools() {
		Session session = sessionFactory.getCurrentSession();
		
		try {
			Criteria criteria = session.createCriteria(School.class);
			
			criteria.addOrder(Order.asc("id"));
			
			List<School> schools = criteria.list();

			return schools;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List<SchoolUser> getTopStudentsOfSchool(String school) {
		Session session = sessionFactory.getCurrentSession();
		
		try {
			Criteria criteria = session.createCriteria(SchoolUser.class);
			
			Criterion user = Restrictions.eq("school_code",
					school);
			Criterion status = Restrictions.eq("active", 1);
			criteria.add(Restrictions.and(user, status));
			criteria.addOrder(Order.desc("points"));
			criteria.setMaxResults(10);
			
			@SuppressWarnings("unchecked")
			List<SchoolUser> topstudents = criteria.list();

			return topstudents;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List<TopSchoolsBean> getTopSchoolsList(String client) {
		Session session = sessionFactory.getCurrentSession();

		try {
			String query = "select u.school as school_name,s.school_code, s.id, s.strength,sum(u.points) as total from SCHOOL_USER u join "
					+ "SCHOOLS s ON u.school=s.SCHOOL_NAME where u.client='"+client+"' GROUP BY u.SCHOOL ORDER BY TOTAL DESC LIMIT 10";
			Query topSchoolsQuery = session
					.createSQLQuery(query)
					.addScalar("total", StandardBasicTypes.INTEGER)
					.addScalar("school_name")
					.addScalar("school_code")
					.addScalar("id")
					.addScalar("strength")
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

	@Override
	public List<MILOSubmission> getMILOSubmissionsOfSchool(String school_name,
			String school_code, int limit, int offset) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(MILOSubmission.class);
			criteria.createCriteria("user", "user");
			criteria.createCriteria("competition", "competition");

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
			List<MILOSubmission> competitions = criteria.list();

			return competitions;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List<SchoolUser> getSessionParticipants(int sessionId) {
		Session session = sessionFactory.getCurrentSession();
		
		try {
			
			String query = "select u.name as name, u.user_name as username, u.school as school, u.standard as standard, u.city as city, u.points as points from SCHOOL_USER u join "
					+ "ATTENDANCE s ON u.USER_NAME=s.USERNAME where s.SESSION_ID="+sessionId+" ORDER BY s.DATE ASC";
			Query topSchoolsQuery = session
					.createSQLQuery(query)
					//.addScalar("total", StandardBasicTypes.INTEGER)
					.addScalar("name")
					.addScalar("username")
					.addScalar("school")
					.addScalar("standard")
					.addScalar("city")
					.addScalar("points")
					.setResultTransformer(
							Transformers.aliasToBean(SchoolUser.class));

			@SuppressWarnings("unchecked")
			List<SchoolUser> participants = topSchoolsQuery.list();
			return participants;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}	
	
}
