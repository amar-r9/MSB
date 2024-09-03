package com.msb.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.Date;
import java.sql.SQLException;

import javax.net.ssl.HttpsURLConnection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.msb.dao.MSBDAO;
import com.msb.dao.MiloDAO;
import com.msb.dao.SchoolUserDAO;
import com.msb.model.Attendance;
import com.msb.model.BlogArticle;
import com.msb.model.MILOSubmission;
import com.msb.model.MSTCompetition;
import com.msb.model.MailSubscribe;
import com.msb.model.MiloPoints;
import com.msb.model.MiloSelfie;
import com.msb.model.School;
import com.msb.model.SchoolUser;
import com.msb.model.MiloSession;
import com.msb.model.TeachingForm;

@Service
public class MiloServiceImpl implements MiloService {

	@Autowired
	private MiloDAO msbDao;
	
	@Autowired
	private SchoolUserDAO userDao;
	
	@Override
	public boolean isAttendenceAdded(String username, int sessionId) {
		return msbDao.isAttendenceAdded(username, sessionId);
	}
	
	@Override
	public boolean addAttendancePoints(Attendance attendance) {
		return msbDao.addAttendancePoints(attendance);
	}
	
	@Override
	public int getMiloMaxID() {

		return msbDao.getMiloMaxID();
	}
	
	@Override
	public Integer saveMILOSubmission(MILOSubmission milo) {
		// TODO Auto-generated method stub
		return msbDao.saveMILOSubmission(milo);
	}
	
	@Override
	public MILOSubmission getMILOSubmission(int id) {
		return msbDao.getMILOSubmission(id);
	}
	
	@Override
	public boolean saveEntryVisit(int id) {		
			return msbDao.saveEntryVisit(id);
	}
	
	@Override
	public boolean updateMILOSubmissionPoints(Integer id, int points) {
		return msbDao.updateMILOSubmissionPoints(id, points);
	}
	
	@Override
	public boolean saveMILOSelfie(MiloSelfie milo) {
		return msbDao.saveMILOSelfie(milo);
	}
	
	@Override
	public MiloSession getMiloSessionDetails(int id) {
		return msbDao.getMiloSession(id);
	}

	@Override
	public boolean updateSessionAttendance(String username, int sessionId) {
		return msbDao.updateSessionAttendance(username, sessionId);
	}

	@Override
	public Attendance getAttendanceDetails(String username, int sessionId) {
		return msbDao.getAttendanceDetails(username, sessionId);
	}

	@Override
	public int getNoOfSessionsAttended(String username) {
		return msbDao.getNoOfSessionsAttended(username);
	}
	
	@Override
	public int getNoOfUploads(String username) {
		return msbDao.getNoOfUploads(username);
	}
	
	@Override
	public boolean saveEmail(MailSubscribe mailSubscribe) {
		return msbDao.saveEmail(mailSubscribe);
	}
	
	@Override
	public boolean isAlreadySubscribed(String mail) {
		return msbDao.isAlreadySubscribed(mail);
	}
	
	@Override
	public boolean saveMiloUser(MiloPoints miloPoints) {
		return msbDao.saveMiloUser(miloPoints);
	}
	
	@Override
	public boolean updateMiloPoints(String username, int points) {
		return msbDao.updateMiloPoints(username, points);
	}
	
	@Override
	public boolean isUserExistInMiloPoints(String username) {
		return msbDao.isUserExistInMiloPoints(username);
	}
	
	@Override
	public boolean updateMiloUser(MiloPoints miloPoints) {
		return msbDao.updateMiloUser(miloPoints);
	}

	@Override
	public Integer getUserMiloPoints(String username) {
		return msbDao.getUserMiloPoints(username);
	}
	
}
