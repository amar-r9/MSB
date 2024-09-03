package com.msb.dao;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.msb.model.Attendance;
import com.msb.model.CompetitionText;
import com.msb.model.MILOSubmission;
import com.msb.model.MailSubscribe;
import com.msb.model.MiloPoints;
import com.msb.model.MiloSelfie;
import com.msb.model.MiloSession;
import com.msb.model.SchoolUser;

@Repository
@Transactional
public class MiloDAOImpl implements MiloDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Attendance getAttendanceDetails(String username, int sessionId) {
		Session session = sessionFactory.getCurrentSession();
		
		try {
			Criteria criteria = session.createCriteria(Attendance.class);
			Criterion user = Restrictions.eq("username", username);
			Criterion sessionsId = Restrictions.eq("sessionId", sessionId);
			criteria.add(Restrictions.and(user, sessionsId));

			Attendance attendance = (Attendance) criteria.uniqueResult();
			return attendance;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public boolean isAttendenceAdded(String username, int sessionId) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(Attendance.class);

			Criterion user = Restrictions.eq("username", username);

			Criterion sessionsId = Restrictions.eq("sessionId", sessionId);
			
			Criterion startSession = Restrictions.eq("startSession", 1);

			criteria.add(Restrictions.and(user, sessionsId, startSession));

			Attendance isFan = (Attendance) criteria.uniqueResult();

			if (isFan != null)
				return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
		return false;
	}

	@Override
	public boolean addAttendancePoints(Attendance attendance) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.save(attendance);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	@Override
	public boolean updateSessionAttendance(String username, int sessionId) {
		Session session = sessionFactory.getCurrentSession();
		try {
			Criteria criteria = session.createCriteria(Attendance.class);
			
			Criterion user = Restrictions.eq("username", username);
			Criterion sessionsId = Restrictions.eq("sessionId", sessionId);
			Criterion startSession = Restrictions.eq("startSession", 1);
			criteria.add(Restrictions.and(user, sessionsId, startSession));
			
			Attendance attendances = (Attendance) criteria
					.uniqueResult();
			attendances.setEndSession(attendances.getEndSession()+1);
			session.update(attendances);

			return true;
		} catch (HibernateException exception) {
			exception.printStackTrace();
			return false;
		}
	}
	
	@Override
	public int getMiloMaxID() {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(MILOSubmission.class);
			criteria.setProjection(Projections.max("id"));
			Integer id = (Integer) criteria.uniqueResult();
			if (id != null)
				return id + 1;
			else
				return 1;
		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public Integer saveMILOSubmission(MILOSubmission milo) {
		Session session = sessionFactory.getCurrentSession();

		try {
			return (Integer) session.save(milo);

		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public MILOSubmission getMILOSubmission(Integer id) {
		Session session = sessionFactory.getCurrentSession();

		try {
			return (MILOSubmission) session.get(MILOSubmission.class, id);
			//MSTCompetition competition= (MSTCompetition) session.get(MSTCompetition.class, id);
			//Hibernate.initialize(competition.getCompetition());
			//return competition;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public boolean saveEntryVisit(int id) {
		Session session = sessionFactory.getCurrentSession();
		try {
			
			Criteria criteria = session.createCriteria(MILOSubmission.class);
			criteria.add(Restrictions.eq("id", id));
			MILOSubmission entry = (MILOSubmission) criteria
					.uniqueResult();
			entry.setVisits(entry.getVisits() + 1);
			session.update(entry);
			 
			return true;
		} catch (HibernateException exception) {
			exception.printStackTrace();
			return false;
		}
	}
	
	@Override
	public boolean updateMILOSubmissionPoints(Integer id, int points) {
		Session session = sessionFactory.getCurrentSession();
		try {
			Criteria criteria = session.createCriteria(MILOSubmission.class);
			criteria.add(Restrictions.eq("id", id));
			MILOSubmission pmdCompetition = (MILOSubmission) criteria
					.uniqueResult();
			pmdCompetition.setPoints(pmdCompetition.getPoints() + points);
			session.update(pmdCompetition);

			return true;
		} catch (HibernateException exception) {
			exception.printStackTrace();
			return false;
		}
	}
	
	@Override
	public boolean saveMILOSelfie(MiloSelfie milo) {
		Session session = sessionFactory.getCurrentSession();

		try {
			/*
			 * System.out.println("photo size" + photo.available()); if (photo
			 * != null && photo.available() > 0) { // UserProfileImage
			 * profileImage = new UserProfileImage(); byte[] image =
			 * IOUtils.toByteArray(photo); user.setImage(image); }
			 */
			//other.setTxnref("MSBU00" + (getStudentMaxID() + 1));

			session.save(milo);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	@Override
	public MiloSession getMiloSession(int id) {
		Session session = sessionFactory.getCurrentSession();

		try {
			return (MiloSession) session.get(MiloSession.class, id);
			//MSTCompetition competition= (MSTCompetition) session.get(MSTCompetition.class, id);
			//Hibernate.initialize(competition.getCompetition());
			//return competition;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public int getNoOfSessionsAttended(String username) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(Attendance.class);
			
			Criterion user = Restrictions.eq("username", username);
			Criterion startSession = Restrictions.eq("startSession", 1);
			Criterion endSession = Restrictions.eq("endSession", 1);
			criteria.add(Restrictions.and(user, startSession, endSession));
			
			
			criteria.setProjection(Projections.rowCount());
			Long rowCount = (Long) criteria.uniqueResult();
			return rowCount.intValue();
		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public int getNoOfUploads(String username) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(MILOSubmission.class);
			
			criteria.add(Restrictions.eq("user_name", username));

			criteria.setProjection(Projections.rowCount());
			Long rowCount = (Long) criteria.uniqueResult();
			return rowCount.intValue();
		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public boolean saveEmail(MailSubscribe mail) {
		Session session = sessionFactory.getCurrentSession();

		try {
			/*
			 * System.out.println("photo size" + photo.available()); if (photo
			 * != null && photo.available() > 0) { // UserProfileImage
			 * profileImage = new UserProfileImage(); byte[] image =
			 * IOUtils.toByteArray(photo); user.setImage(image); }
			 */
			//other.setTxnref("MSBU00" + (getStudentMaxID() + 1));

			session.save(mail);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	@Override
	public boolean isAlreadySubscribed(String mail) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(MailSubscribe.class);

			criteria.add(Restrictions.eq("mail", mail));

			MailSubscribe subscribed = (MailSubscribe) criteria.uniqueResult();

			if (subscribed != null)
				return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
		return false;
	}
	
	@Override
	public boolean saveMiloUser(MiloPoints miloPoints) {
		Session session = sessionFactory.getCurrentSession();

		try {
			/*
			 * System.out.println("photo size" + photo.available()); if (photo
			 * != null && photo.available() > 0) { // UserProfileImage
			 * profileImage = new UserProfileImage(); byte[] image =
			 * IOUtils.toByteArray(photo); user.setImage(image); }
			 */
			//other.setTxnref("MSBU00" + (getStudentMaxID() + 1));

			session.save(miloPoints);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	@Override
	public boolean updateMiloPoints(String username, int points) {
		Session session = sessionFactory.getCurrentSession();
		try {
			Criteria criteria = session.createCriteria(MILOSubmission.class);
			criteria.add(Restrictions.eq("username", username));
			MiloPoints pmdCompetition = (MiloPoints) criteria
					.uniqueResult();
			pmdCompetition.setPoints(pmdCompetition.getPoints() + points);
			session.update(pmdCompetition);

			return true;
		} catch (HibernateException exception) {
			exception.printStackTrace();
			return false;
		}
	}
	
	@Override
	public boolean isUserExistInMiloPoints(String username) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(MiloPoints.class);

			criteria.add(Restrictions.eq("username", username));

			MiloPoints exist = (MiloPoints) criteria.uniqueResult();

			if (exist != null)
				return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
		return false;
	}
	
	@Override
	public boolean updateMiloUser(MiloPoints miloPoints) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(MiloPoints.class);
			criteria.add(Restrictions.eq("username", miloPoints.getUsername()));
			System.out.println("User is:" +miloPoints.getUsername());
			MiloPoints pmdCompetition = (MiloPoints) criteria
					.uniqueResult();
			pmdCompetition.setName(miloPoints.getName());
			pmdCompetition.setStandard(miloPoints.getStandard());
			pmdCompetition.setCity(miloPoints.getCity());
			pmdCompetition.setSchool(miloPoints.getSchool());
			session.update(pmdCompetition);
			//session.flush();
			//session.refresh(miloPoints);
			return true;
		} catch (HibernateException exception) {
			exception.printStackTrace();
			return false;
		}
	}
	
	@Override
	public Integer getUserMiloPoints(String username) {
		Session session = sessionFactory.getCurrentSession();

		try {

			Criteria criteria = session.createCriteria(MiloPoints.class);
			
			Criterion sname = Restrictions.and(
					Restrictions.isNotNull("username"),
					Restrictions.like("username", username));
			//Criterion scode = Restrictions.and(
					//Restrictions.isNotNull("school_code"),
					//Restrictions.eq("school_code", school_code));
			
			Criterion name_code = Restrictions.or(sname);
			//Criterion pointsCriterion = Restrictions.ge("points", 0);
			criteria.add(Restrictions.and(name_code));
			criteria.setProjection(Projections.sum("points"));
			
			Long points = (Long) criteria.uniqueResult();

			return points.intValue();

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

}
