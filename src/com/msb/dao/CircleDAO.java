package com.msb.dao;

import com.msb.model.Circle;

public interface CircleDAO {

	public boolean isStudentJoinedAnyCircle(String username);

	public boolean addStudentToCircle(Circle circle);

	public Circle getStudentCircle(String username);
	
}
