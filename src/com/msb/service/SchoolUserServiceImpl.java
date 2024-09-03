package com.msb.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.msb.constants.MsbConstants;
import com.msb.dao.SchoolUserDAO;
import com.msb.model.AskAnExpert;
import com.msb.model.CompetitionText;
import com.msb.model.FanTable;
import com.msb.model.MSTCompetition;
import com.msb.model.SchoolUser;
import com.msb.model.UploadATalent;
import com.msb.model.UserLikeValidation;
import com.msb.util.MsbUtil;

@Service
public class SchoolUserServiceImpl implements SchoolUserService {

	@Autowired
	SchoolUserDAO userDao;

	@Override
	public SchoolUser validateUser(String username, String password) {
		return userDao.validateUser(username, password);
	}

	@Override
	public Map<String, String> getStudentPassword(String userNameOrMail) {

		return userDao.getStudentPassword(userNameOrMail);
	}

	@Override
	public boolean saveSchoolUser(SchoolUser other) {

		return userDao.saveSchoolUser(other);
	}

	@Override
	public boolean activateRegisteredUser(String activationCode) {

		return userDao.activateRegisteredUser(activationCode);
	}

	@Override
	public boolean isUserExist(String username) {

		return userDao.isUserExist(username);
	}

	@Override
	public boolean changePassword(SchoolUser other) {
		return userDao.updateUser(other);
	}

	@Override
	public boolean updateProfilePicture(SchoolUser other) {
		return userDao.updateUser(other);
	}

	@Override
	public boolean updateUserDetails(SchoolUser other) {
		return userDao.updateUser(other);
	}

	@Override
	public boolean updateUserPoints(String username, int points) {
		return userDao.updateUserPoints(username, points);
	}

	@Override
	public SchoolUser getStudentDetails(String username) {

		return userDao.getStudentDetails(username);
	}

	@Override
	public SchoolUser getStudentDetailsById(int id) {
		return userDao.getStudentDetailsById(id);
	}
	
	public int getTopStudentsCount() {		
		return userDao.getTopStudentsCount();
	}
	
	@Override
	public List<SchoolUser> getTopStudents() {
		return userDao.getTopStudents();
	}

	@Override
	public boolean saveStudentLike(UserLikeValidation userLikeValidation) {
		
		return userDao.saveStudentLike(userLikeValidation);
	}

	@Override
	public boolean isStudentLiked(UserLikeValidation userLikeValidation) {
		
		UserLikeValidation userLikeValidation1 = userDao
				.checkStudentLike(userLikeValidation);
		if (userLikeValidation1 != null) {
			return MsbUtil.isDateIsToday(String.valueOf(userLikeValidation1
					.getLikeDate()));

		} else
			return false;

	}
	
	@Override
	public List<CompetitionText> getUserRecentTextEntries(String username) {
		// TODO Auto-generated method stub
		return userDao.getUserTextEntries(username, 1);
	}

	@Override
	public List<CompetitionText> getUserTextEntries(String username) {
		// TODO Auto-generated method stub
		return userDao.getUserTextEntries(username, 0);
	}

	@Override
	public List<MSTCompetition> getUserRecentMSTEntries(String username, String type) {
		// TODO Auto-generated method stub
		return userDao.getUserMSTEntries(username, type, 1);
	}

	@Override
	public List<MSTCompetition> getUserMSTEntries(String username, String type) {
		// TODO Auto-generated method stub
		return userDao.getUserMSTEntries(username, type, 0);
	}

	@Override
	public boolean updateLoginCount(String username) {
		
		return userDao.updateLoginCount(username);
	}

	@Override
	public boolean isFan(String username, String fan, String usertype) {

		return userDao.isFan(username, fan, usertype);
	}

	@Override
	public boolean saveFan(FanTable fan) {

		return userDao.saveFan(fan);
	}

	@Override
	public boolean updateUserFanCount(String username) {
		
		return userDao.updateUserFanCount(username);
	}

	public boolean updateCountInFanCountTable(String username) {
		return userDao.updateCountInFanCountTable(username);
	}

	@Override
	public List<UploadATalent> getUserRecentUATEntries(String username) {
		return userDao.getUserUATEntries(username, 1);
	}

	@Override
	public List<UploadATalent> getUserUATEntries(String username) {
		return userDao.getUserUATEntries(username, 0);
	}
}
