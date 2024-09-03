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
@Table(name = "MILO_POINTS")
public class MiloPoints implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "USER_NAME")
	private String username;

	@Column(name = "POINTS")
	private int points;
	
	@Column(name = "NAME")
	private String name;
	
	@Column(name = "STANDARD")
	private Integer standard;
	
	@Column(name = "SCHOOL")
	private String school;
	
	@Column(name = "CITY")
	private String city;
	
	@ManyToOne(targetEntity = SchoolUser.class, fetch = FetchType.LAZY)
	@JoinColumn(name = "USER_NAME", referencedColumnName = "USER_NAME", insertable = false, updatable = false)
	private SchoolUser user;

	public SchoolUser getSchoolUser() {
		return user;
	}

	public void setSchoolUser(SchoolUser user) {
		this.user = user;
	}

	public MiloPoints() {
		//setSubmit_date(MsbUtil.getCurrentDate());
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

	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getStandard() {
		return standard;
	}

	public void setStandard(Integer standard) {
		this.standard = standard;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

}
