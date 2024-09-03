package com.msb.service;

import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.msb.bean.TopSchoolsBean;
import com.msb.constants.MsbConstants;
import com.msb.dao.AdminDAO;
import com.msb.dao.CompetitionDAO;
import com.msb.dao.OtherDAO;
import com.msb.dao.SchoolUserDAO;
import com.msb.model.Admin;
import com.msb.model.Attendance;
import com.msb.model.Competition;
import com.msb.model.CompetitionText;
import com.msb.model.MILOSubmission;
import com.msb.model.MSTCompetition;
import com.msb.model.MiloPoints;
import com.msb.model.MiloSession;
import com.msb.model.UploadATalent;
import com.msb.model.UserEntryDisqualify;
import com.msb.model.Other;
import com.msb.model.School;
import com.msb.model.SchoolUser;
import com.msb.util.MsbUtil;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	CompetitionDAO competitiondao;
	
	@Autowired
	SchoolUserDAO userDao;
	
	@Autowired
	AdminDAO adminDao;
	
	@Override
	public Admin validateUser(String username, String password) {
		return adminDao.validateUser(username, password);
	}

	@Override
	public int getTotalStudentsCount(String client) {
		
		return adminDao.getTotalStudentsCount(client);
	}
	
	@Override
	public List<MiloPoints> getTopStudents(String client) {
		
		return adminDao.getTopStudents(client);
	}

	@Override
	public int getClientMSTEntriesCount(int school_code, String type) {
		
		return adminDao.getClientMSTEntriesCount(school_code, type);
	}

	@Override
	public List<CompetitionText> getAllTextEntriesByClient(String type, String comp_by) {
		
		return adminDao.getAllTextEntriesByClient(type, comp_by);
	}

	@Override
	public boolean disqualifyTextEntry(UserEntryDisqualify userEntrDisqualify) {
		
		return adminDao.disqualifyTextEntry(userEntrDisqualify);
	}

	@Override
	public boolean reportUserTextEntry(int id) {
		
		return adminDao.reportUserTextEntry(id);
		
	}
	
	@Override
	public boolean reportUserMSTEntry(int id) {
		
		return adminDao.reportUserMSTEntry(id);
		
	}

	@Override
	public int getTotalStudentsForSession(int sessionId) {
		return adminDao.getTotalStudentsForSession(sessionId);
	}
	
	@Override
	public int getTotalSubmissionsForSession(int sessionId) {
		return adminDao.getTotalSubmissionsForSession(sessionId);
	}

	@Override
	public List<MILOSubmission> getAllSessionEntries(int sessionId) {
		return adminDao.getAllSessionEntries(sessionId);
	}

	@Override
	public List<MiloSession> getAllSessions() {
		return adminDao.getAllSessions();
	}

	@Override
	public List<MILOSubmission> getUserMiloSubmissions(String username) {
		return adminDao.getUserMiloSubmissions(username);
	}

	@Override
	public List<SchoolUser> getAllStudents(String client) {
		return adminDao.getAllStudents(client);
	}

	@Override
	public List<School> getAllSchools() {
		// TODO Auto-generated method stub
		return adminDao.getAllSchools();
	}

	@Override
	public List<SchoolUser> getTopStudentsOfSchool(String school) {
		// TODO Auto-generated method stub
		return adminDao.getTopStudentsOfSchool(school);
	}

	@Override
	public List<TopSchoolsBean> getTopSchoolsList(String client) {
		// TODO Auto-generated method stub
		return adminDao.getTopSchoolsList(client);
	}

	@Override
	public List<MILOSubmission> getMILOSubmissionsOfSchool(String school_name, String school_code, int limit, int offset) {
		return adminDao.getMILOSubmissionsOfSchool(school_name, school_code, limit, offset);
	}

	@Override
	public List<SchoolUser> getSessionParticipants(int sessionId) {
		return adminDao.getSessionParticipants(sessionId);
	}
	
}
