package com.msb.model;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Time;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.msb.util.MsbUtil;

@Entity
@Table(name = "CIRCLE")
public class Circle implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "USERNAME")
	private String username;

	@Column(name = "DATE")
	private Date circleDate;
	
	@Column(name = "CIRCLE")
	private String circle;
	
	public Circle(){
		setCircleDate(MsbUtil.getCurrentDate());
	}
	
	@ManyToOne(targetEntity = SchoolUser.class, fetch = FetchType.LAZY)
	@JoinColumn(name = "USERNAME", referencedColumnName = "USER_NAME", insertable = false, updatable = false)
	private SchoolUser user;

	public SchoolUser getSchoolUser() {
		return user;
	}

	public void setSchoolUser(SchoolUser user) {
		this.user = user;
	}
		
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}

	public Date getCircleDate() {
		return circleDate;
	}
	public void setCircleDate(Date circleDate) {
		this.circleDate = circleDate;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

}
