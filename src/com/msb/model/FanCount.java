package com.msb.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "FAN_COUNT")
public class FanCount implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "USER_NAME")
	private String user_name;

	@Column(name = "COUNT")
	private int count;


	public FanCount(){
		//setSubmit_date(MsbUtil.getCurrentDate());
		//setPoints(20);
		//setStatus(1);
	}	
	

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

}
