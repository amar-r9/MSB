package com.msb.service;

import java.util.List;

import com.msb.model.Challenge;
import com.msb.model.Postponeneetjee;
import com.msb.model.School;
import com.msb.model.SchoolUser;
import com.msb.model.Survey;
import com.msb.model.SurveyResult;
import com.msb.model.SurveySubmit;
import com.msb.model.TeachingForm;

public interface MSBService {

	public boolean saveSchool(School school);
	
	public boolean isMobileExist(String phone);
	
	public boolean sendSMS(String mobile, int otp);

	public boolean updatePassword(SchoolUser user);

	public boolean saveTeachingInterest(TeachingForm teacher);

	public boolean submitVote(Postponeneetjee postpone);

	public int getNoOfVotes(String vote);

	public boolean isAlreadyVoted(String mobile);

	public int saveSchoolPage(School school);

	public int getSchoolMaxId();

	public List<Survey> getSurvey(int id);
	
	public boolean saveSurveyResult(SurveySubmit surveySubmit);
	
	public boolean isStudenTakenSurvey(int id, String user_name);
	
	public boolean challengeFriend(Challenge challenge);
	
	public boolean isAlreadyChallenged(Challenge challenge);

	public Integer getUserFanCount(String usr);

}
