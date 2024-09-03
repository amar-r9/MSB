package com.msb.service;

import java.util.List;

import com.msb.bean.TopSchoolsBean;
import com.msb.model.Admin;
import com.msb.model.Attendance;
import com.msb.model.Circle;
import com.msb.model.CompetitionText;
import com.msb.model.MILOSubmission;
import com.msb.model.MiloPoints;
import com.msb.model.MiloSession;
import com.msb.model.School;
import com.msb.model.SchoolUser;
import com.msb.model.UserEntryDisqualify;

public interface CircleService {

	public boolean isStudentJoinedAnyCircle(String username);
	
	public boolean addStudentToCircle(Circle circle);

	public Circle getStudentCircle(String username);

}
