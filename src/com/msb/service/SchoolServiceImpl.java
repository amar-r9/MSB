package com.msb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.msb.bean.TopSchoolsBean;
import com.msb.dao.SchoolDAO;
import com.msb.model.CompetitionText;
import com.msb.model.MSTCompetition;
import com.msb.model.School;
import com.msb.model.SchoolPageDetails;
import com.msb.model.SchoolUser;

@Service
public class SchoolServiceImpl implements SchoolService {

	@Autowired
	private SchoolDAO schoolDao;

	@Override
	public List<TopSchoolsBean> getTopSchoolsList() {
		return schoolDao.getTopSchoolsList();
	}

	@Override
	public List<School> getSchoolList() {

		return schoolDao.getSchoolList();
	}

	@Override
	public School getSchoolPageDeails(int school_code) {

		return schoolDao.getSchoolPageDeails(school_code);
	}

	@Override
	public String getSchoolImage(int school_code) {
		return schoolDao.getSchoolImage(school_code);
	}

	@Override
	public String getSchoolLogo(int school_code) {
		return schoolDao.getSchoolLogo(school_code);
	}

	@Override
	public Integer getSchoolTotalPoints(String school_name, String school_code) {

		return schoolDao.getSchoolTotalPoints(school_name, school_code);
	}

	@Override
	public List<SchoolUser> getSchoolToppers(String school_name, String school_code, int limit) {

		return schoolDao.getSchoolToppers(school_name, school_code, limit);
	}

	@Override
	public List<CompetitionText> getSchoolTextEntries(String school_name,
			String school_code, int textCategory, int limit, int offset) {

		return schoolDao.getSchoolTextEntries(school_name, school_code,
				textCategory, limit, offset);
	}

	@Override
	public List<MSTCompetition> getSchoolMSTEntries(
			String school_name, String school_code, String comp_tye, int limit, int offset) {

		return schoolDao.getSchoolMSTEntries(school_name, school_code, comp_tye,
				limit, offset);
	}

	@Override
	public boolean saveSchool(School school) {
		return schoolDao.saveSchool(school);
	}
	
	@Override
	public List<CompetitionText> getSchoolAllTextEntries(String school_name,
			String school_code, int textCategory, int offset) {

		return schoolDao.getSchoolAllTextEntries(school_name, school_code,
				textCategory, offset);
	}
	
	@Override
	public Integer getSchoolTotalPointsByClient(String school_name, String school_code, String client) {

		return schoolDao.getSchoolTotalPointsByClient(school_name, school_code, client);
	}
	
	@Override
	public List<TopSchoolsBean> getPinnacleTopSchoolsList() {
		return schoolDao.getPinnalceTopSchoolsList();
	}
	
	@Override
	public List<SchoolUser> getSchoolStudents(String school_name, String school_code) {

		return schoolDao.getSchoolStudents(school_name, school_code);
	}
	
	@Override
	public Integer getSchoolTotalParticipants(String school_name, String school_code) {

		return schoolDao.getSchoolTotalParticipants(school_name, school_code);
	}

	@Override
	public SchoolPageDetails getSchoolPageDeails(String school_code) {
		return schoolDao.getSchoolPageDeails(school_code);
	}

}
