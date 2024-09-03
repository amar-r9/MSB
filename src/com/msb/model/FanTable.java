package com.msb.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.msb.util.MsbUtil;

@Entity
@Table(name = "FANS_TABLE")
public class FanTable implements Serializable {

	private static final long serialVersionUID = 1L;

	private String user_name;
	private String fan;
	private String user_type;

	@Id
	@AttributeOverrides({
			@AttributeOverride(name = "user_name", column = @Column(name = "USER_NAME")),
			@AttributeOverride(name = "fan", column = @Column(name = "FAN")),
			@AttributeOverride(name = "user_type", column = @Column(name = "USER_TYPE"))})
	@Column(name = "FAN_DATE")
	private Date fan_date;
	
	public FanTable() {
		setFan_date(MsbUtil.getCurrentDate());
		//setCount(userService.getnoOfFans(getUser_name()));
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getFan() {
		return fan;
	}

	public void setFan(String fan) {
		this.fan = fan;
	}

	public Date getFan_date() {
		return fan_date;
	}

	public void setFan_date(Date fan_date) {
		this.fan_date = fan_date;
	}

	@Override
	public String toString() {
		return user_name + ":" + fan;
	}

	public String getUser_type() {
		return user_type;
	}

	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}
}
