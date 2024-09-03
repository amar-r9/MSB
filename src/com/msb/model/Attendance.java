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
@Table(name = "ATTENDANCE")
public class Attendance implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "USERNAME")
	private String username;

	@Column(name = "DATE")
	private Date attendDate;
	
	@Column(name = "TIME")
	private Time attendTime;
	
	@Column(name = "SESSION_ID")
	private int sessionId;
	
	@Column(name = "START")
	private int startSession;
	
	@Column(name = "END")
	private int endSession;
	
	public Attendance(){
		setAttendDate(MsbUtil.getCurrentDate());
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

	public Date getAttendDate() {
		return attendDate;
	}
	public void setAttendDate(Date attendDate) {
		this.attendDate = attendDate;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public Time getAttendTime() {
		return attendTime;
	}

	public void setAttendTime(Time attendTime) {
		this.attendTime = attendTime;
	}

	public int getSessionId() {
		return sessionId;
	}

	public void setSessionId(int sessionId) {
		this.sessionId = sessionId;
	}

	public int getStartSession() {
		return startSession;
	}

	public void setStartSession(int startSession) {
		this.startSession = startSession;
	}

	public int getEndSession() {
		return endSession;
	}

	public void setEndSession(int endSession) {
		this.endSession = endSession;
	}

}
