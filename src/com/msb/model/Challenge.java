package com.msb.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.msb.util.MsbUtil;

@Entity
@Table(name = "CHALLENGE")
public class Challenge implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "MOBILE")
	private String mobile;
	
	@Column(name = "NAME")
	private String name;
	
	@Column(name = "LINK")
	private String link;
	
	@Column(name = "FRIEND_NAME")
	private String frndname;
	
	@Column(name = "SCORE")
	private int score;

	@Column(name = "SUBMIT_DATE")
	private java.util.Date submit_date;
	
	public Challenge(){
		submit_date=MsbUtil.getCurrentDate();
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public java.util.Date getSubmit_date() {
		return submit_date;
	}

	public void setSubmit_date(java.util.Date submit_date) {
		this.submit_date = submit_date;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getFrndname() {
		return frndname;
	}

	public void setFrndname(String frndname) {
		this.frndname = frndname;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

}
