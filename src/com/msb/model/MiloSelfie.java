package com.msb.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.msb.util.MsbUtil;

@Entity
@Table(name = "MILO_SELFIE")
public class MiloSelfie implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "USERNAME")
	private String username;

	@Column(name = "SUBMIT_DATE")
	private java.util.Date submit_date;

	@Column(name = "FILE_NAME")
	private String file_name;
	
	@ManyToOne(targetEntity = SchoolUser.class, fetch = FetchType.LAZY)
	@JoinColumn(name = "USER_NAME", referencedColumnName = "USER_NAME", insertable = false, updatable = false)
	private SchoolUser user;

	public SchoolUser getSchoolUser() {
		return user;
	}

	public void setSchoolUser(SchoolUser user) {
		this.user = user;
	}

	public MiloSelfie() {
		setSubmit_date(MsbUtil.getCurrentDate());
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public java.util.Date getSubmit_date() {
		return submit_date;
	}

	public void setSubmit_date(java.util.Date submit_date) {
		this.submit_date = submit_date;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

}
