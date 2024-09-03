package com.msb.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.Date;
import java.util.List;

import javax.net.ssl.HttpsURLConnection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.msb.dao.MSBDAO;
import com.msb.dao.SchoolUserDAO;
import com.msb.model.Attendance;
import com.msb.model.BlogArticle;
import com.msb.model.Challenge;
import com.msb.model.Postponeneetjee;
import com.msb.model.School;
import com.msb.model.SchoolUser;
import com.msb.model.Survey;
import com.msb.model.SurveyResult;
import com.msb.model.SurveySubmit;
import com.msb.model.TeachingForm;

@Service
public class MSBServiceImpl implements MSBService {

	@Autowired
	private MSBDAO msbDao;
	
	@Autowired
	private SchoolUserDAO userDao;
	
	@Override
	public boolean saveSchool(School school) {
		return msbDao.saveSchool(school);
	}
	
	public int saveSchoolPage(School school) {
		return msbDao.saveSchoolPage(school);
	}
	
	public boolean isMobileExist(String phone) {
		return msbDao.isMobileExist(phone);
	}
	
	public boolean sendSMS(String mobile, int otp) {
		
		try {
			String message = "Dear "+mobile+", Your OTP for Drovak registration is "+otp+".";
			String requestUrl = "https://smsapi.24x7sms.com/api_2.0/SendSMS.aspx?" +
			"APIKEY=" + "zkpwwwufKbl" +
			"&MobileNo=" + mobile +
			"&SenderID=" + "DROVAK" +
			"&Message=" + URLEncoder.encode(message, "UTF-8") +
			"&ServiceName=" + "TEMPLATE_BASED";
			
			URL url = new URL(requestUrl);
			HttpsURLConnection httpsCon = (HttpsURLConnection) url.openConnection();
			httpsCon.setRequestMethod("GET");
			httpsCon.setConnectTimeout(10000);
			int intresult = httpsCon.getResponseCode();
			String strresult = httpsCon.getResponseMessage();
			BufferedReader in = new BufferedReader(new InputStreamReader(httpsCon.getInputStream()));
			String inputLine;
			StringBuffer response = new StringBuffer();
			
			while ((inputLine = in.readLine()) != null)
			{
			response.append(inputLine);
			System.out.println("inputLine"+strresult);
			}
			System.out.println("Sent"+strresult);
			in.close();
			httpsCon.disconnect();
			return true;
			
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
				return false;
			} catch (MalformedURLException e) {
				e.printStackTrace();
				return false;
			} catch (IOException e) {
				e.printStackTrace();
				return false;
			}
		
	}
	
	@Override
	public boolean updatePassword(SchoolUser user) {
		return userDao.saveSchoolUser(user);
	}

	@Override
	public boolean saveTeachingInterest(TeachingForm teacher) {
		return msbDao.saveTeachingInterest(teacher);
	}
	
	public boolean isAlreadyVoted(String phone) {
		return msbDao.isAlreadyVoted(phone);
	}
	
	public boolean submitVote(Postponeneetjee postpone) {
		return msbDao.submitVote(postpone);
	}
	
	public int getNoOfVotes(String vote) {
		return msbDao.getNoOfVotes(vote);
	}
	
	public int getSchoolMaxId() {
		return msbDao.getSchoolMaxId();
	}
	
	public List<Survey> getSurvey(int id) {
		return msbDao.getSurvey(id);
	}
	
	public boolean saveSurveyResult(SurveySubmit surveyResult) {
		return msbDao.saveSurveyResult(surveyResult);
	}
	
	public boolean isStudenTakenSurvey(int id, String user_name) {
		return msbDao.isStudenTakenSurvey(id, user_name);
	}
	
	public boolean challengeFriend(Challenge challenge) {
		return msbDao.challengeFriend(challenge);
	}
	
	@Override
	public boolean isAlreadyChallenged(Challenge challenge) {
		return msbDao.isAlreadyChallenged(challenge);
	}
	
	public Integer getUserFanCount(String usr) {
		return msbDao.getUserFanCount(usr);
	}

}
