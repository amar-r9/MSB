package com.msb.service;

import java.util.List;

import com.msb.bean.TopSchoolsBean;
import com.msb.model.Admin;
import com.msb.model.Attendance;
import com.msb.model.CompetitionText;
import com.msb.model.MILOSubmission;
import com.msb.model.MiloPoints;
import com.msb.model.MiloSession;
import com.msb.model.School;
import com.msb.model.SchoolUser;
import com.msb.model.UserEntryDisqualify;

public interface AdminService {

	public Admin validateUser(String username, String password);
	
	public int getTotalStudentsCount(String client);

	public int getClientMSTEntriesCount(int schoolcode, String string);

	public List<CompetitionText> getAllTextEntriesByClient(String type, String comp_by);

	public boolean disqualifyTextEntry(UserEntryDisqualify userEntrDisqualify);

	public boolean reportUserTextEntry(int entry_id);

	public boolean reportUserMSTEntry(int entry_id);

	public int getTotalStudentsForSession(int sessionId);

	public List<MILOSubmission> getAllSessionEntries(int sessionId);

	public List<MiloSession> getAllSessions();

	public List<MILOSubmission> getUserMiloSubmissions(String username);

	public List<SchoolUser> getAllStudents(String client);

	public List<School> getAllSchools();

	public int getTotalSubmissionsForSession(int sessionId);

	public List<MiloPoints> getTopStudents(String client);

	public List<SchoolUser> getTopStudentsOfSchool(String school);

	public List<TopSchoolsBean> getTopSchoolsList(String client);

	public List<MILOSubmission> getMILOSubmissionsOfSchool(String school_name, String school_code, int limit, int offset);

	public List<SchoolUser> getSessionParticipants(int sessionId);

}
