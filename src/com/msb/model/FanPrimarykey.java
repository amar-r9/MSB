package com.msb.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.msb.util.MsbUtil;

@Entity
@Table(name = "FANS_TABLE")
public class FanPrimarykey implements Serializable {

	private static final long serialVersionUID = 1L;

	private String username;
	private String fan;
	private Date fan_date;
	
	 public FanPrimarykey() {
		setFan_date(MsbUtil.getCurrentDate());
	}

	@Column(name = "USER_NAME")
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "FAN")
	public String getFan() {
		return fan;
	}

	public void setFan(String fan) {
		this.fan = fan;
	}

	@Column(name = "FAN_DATE")
	public Date getFan_date() {
		return fan_date;
	}

	public void setFan_date(Date fan_date) {
		this.fan_date = fan_date;
	}

	@Override
	public String toString() {
		return username + ":" + fan;
	}
	
	

}
