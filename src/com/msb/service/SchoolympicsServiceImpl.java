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

import com.msb.dao.SchoolympicsDAO;
import com.msb.dao.MSBDAO;
import com.msb.dao.SchoolUserDAO;
import com.msb.model.Attendance;
import com.msb.model.BlogArticle;
import com.msb.model.Challenge;
import com.msb.model.DrovakUser;
import com.msb.model.Expenses;
import com.msb.model.Feedback;
import com.msb.model.Other;
import com.msb.model.Postponeneetjee;
import com.msb.model.School;
import com.msb.model.SchoolUser;
import com.msb.model.SchoolympicsSchool;
import com.msb.model.Survey;
import com.msb.model.SurveyResult;
import com.msb.model.SurveySubmit;
import com.msb.model.TeachingForm;
import com.msb.model.Vehicle;

@Service
public class SchoolympicsServiceImpl implements SchoolympicsService {

	@Autowired
	private SchoolympicsDAO schoolDao;

	@Override
	public boolean saveSchoolympicsSchool(SchoolympicsSchool school) {
		return schoolDao.saveSchoolympicsSchool(school);
	}

	@Override
	public List<SchoolympicsSchool> getSchoolsList() {
		return schoolDao.getSchoolsList();
	}

	@Override
	public Integer getSchoolympicsMaxID() {
		return schoolDao.getSchoolympicsMaxID();
	}
	
	

}
