package com.msb.dao;

import java.util.List;

import com.msb.model.Attendance;
import com.msb.model.Challenge;
import com.msb.model.Postponeneetjee;
import com.msb.model.School;
import com.msb.model.Survey;
import com.msb.model.SurveyResult;
import com.msb.model.SurveySubmit;
import com.msb.model.TeachingForm;

public interface MSBDAO {

	public boolean saveSchool(School school);

	public boolean isMobileExist(String phone);

	public boolean saveTeachingInterest(TeachingForm teacher);

	public boolean submitVote(Postponeneetjee postpone);

	public int getNoOfVotes(String vote);

	public boolean isAlreadyVoted(String phone);

	public int saveSchoolPage(School school);

	public int getSchoolMaxId();

	public List<Survey> getSurvey(int id);

	public boolean isStudenTakenSurvey(int id, String user_name);

	public boolean saveSurveyResult(SurveySubmit surveyResult);

	public boolean challengeFriend(Challenge challenge);
	
	public boolean isAlreadyChallenged(Challenge challenge);

	public Integer getUserFanCount(String usr);
	
}
