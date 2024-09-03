package com.msb.dao;

import java.util.List;

import com.msb.bean.TopSchoolsBean;
import com.msb.model.CompetitionText;
import com.msb.model.MSTCompetition;
import com.msb.model.School;
import com.msb.model.SchoolPageDetails;
import com.msb.model.SchoolUser;

public interface SchoolDAO {

	public List<TopSchoolsBean> getTopSchoolsList();

	public List<School> getSchoolList();

	public School getSchoolPageDeails(int school_code);

	public String getSchoolImage(int school_code);

	public String getSchoolLogo(int school_code);

	public Integer getSchoolTotalPoints(String school_name, String school_code);

	public List<SchoolUser> getSchoolToppers(String school_name, String school_code, int limit);

	public List<CompetitionText> getSchoolTextEntries(String school_name,
			String school_code, int textCategory, int limit, int offset);
	
	public List<MSTCompetition> getSchoolMSTEntries(
			String school_name, String school_code,String comp_tye, int limit, int offset);

	boolean saveSchool(School school);

	public List<CompetitionText> getSchoolAllTextEntries(String school_name,
			String school_code, int textCategory, int offset);

	public Integer getSchoolTotalPointsByClient(String school_name,
			String school_code, String client);

	public List<TopSchoolsBean> getPinnalceTopSchoolsList();

	public List<SchoolUser> getSchoolStudents(String school_name, String school_code);

	public Integer getSchoolTotalParticipants(String school_name, String school_code);

	public SchoolPageDetails getSchoolPageDeails(String school_code);

}
