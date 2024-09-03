package com.msb.service;

import com.msb.model.Attendance;
import com.msb.model.MILOSubmission;
import com.msb.model.MailSubscribe;
import com.msb.model.MiloPoints;
import com.msb.model.MiloSelfie;
import com.msb.model.School;
import com.msb.model.SchoolUser;
import com.msb.model.MiloSession;
import com.msb.model.TeachingForm;

public interface MiloService {

	public boolean isAttendenceAdded(String username, int sessionId);

	public boolean addAttendancePoints(Attendance attendance);

	public int getMiloMaxID();

	public Integer saveMILOSubmission(MILOSubmission milo);

	public MILOSubmission getMILOSubmission(int parseInt);

	public boolean saveEntryVisit(int id);

	public boolean updateMILOSubmissionPoints(Integer id, int points);

	public boolean saveMILOSelfie(MiloSelfie milo);

	public MiloSession getMiloSessionDetails(int id);

	public boolean updateSessionAttendance(String username, int sessionId);

	public Attendance getAttendanceDetails(String username, int sessionId);

	public int getNoOfSessionsAttended(String username);

	public int getNoOfUploads(String username);

	public boolean saveEmail(MailSubscribe mailSubscribe);

	public boolean isAlreadySubscribed(String mail);

	public boolean saveMiloUser(MiloPoints miloPoints);

	public boolean updateMiloPoints(String username, int points);
	
	public boolean isUserExistInMiloPoints(String username);

	public boolean updateMiloUser(MiloPoints miloPoints);

	public Integer getUserMiloPoints(String username);

}
