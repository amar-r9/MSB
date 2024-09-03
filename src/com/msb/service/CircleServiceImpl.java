package com.msb.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.msb.dao.CircleDAO;
import com.msb.model.Circle;

@Service
public class CircleServiceImpl implements CircleService {
	
	@Autowired
	CircleDAO circleDao;
	
	@Override
	public boolean isStudentJoinedAnyCircle(String username) {
		return circleDao.isStudentJoinedAnyCircle(username);
	}
	
	@Override
	public boolean addStudentToCircle(Circle circle) {
		return circleDao.addStudentToCircle(circle);
	}
	
	@Override
	public Circle getStudentCircle(String username) {
		return circleDao.getStudentCircle(username);
	}
	
}
