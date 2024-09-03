package com.msb.dao;

import java.util.List;

import com.msb.model.DrovakUser;
import com.msb.model.Expenses;
import com.msb.model.Feedback;
import com.msb.model.Other;
import com.msb.model.SchoolympicsSchool;
import com.msb.model.Vehicle;

public interface SchoolympicsDAO {

	public boolean saveSchoolympicsSchool(SchoolympicsSchool school);

	public List<SchoolympicsSchool> getSchoolsList();

	public Integer getSchoolympicsMaxID();

	
	
}
