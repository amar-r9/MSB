package com.msb.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "SCHOOL_PAGE")
public class SchoolPageDetails implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ID")
	private int id;

	@Column(name = "SCHOOL_CODE")
	private String school_code;

	@Column(name = "SCHOOL_NAME")
	private String school_name;

	@Column(name = "GOOGLE_LOCATION")
	private String google_location;

	@Column(name = "PRINCIPAL")
	private String principal;

	@Column(name = "EMAIL")
	private String email;

	@Column(name = "PHONE")
	private String phone;

	@Column(name = "WEBSITE")
	private String website;

	@Column(name = "SCHOOL_LOGO")
	private String school_logo;

	@Column(name = "SCHOOL_IMAGE")
	private String school_image;

	@Column(name = "DATE_REGISTERED")
	private Date date_registered;
	
	@Column(name = "DESCRIPTION" )
	private String description;
	
	@Column(name = "STRENGTH")
	private int strength;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSchool_code() {
		return school_code;
	}

	public void setSchool_code(String school_code) {
		this.school_code = school_code;
	}

	public String getSchool_name() {
		return school_name;
	}

	public void setSchool_name(String school_name) {
		this.school_name = school_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getDate_registered() {
		return date_registered;
	}

	public void setDate_registered(Date date_registered) {
		this.date_registered = date_registered;
	}

	public String getGoogle_location() {
		return google_location;
	}

	public void setGoogle_location(String google_location) {
		this.google_location = google_location;
	}

	public String getPrincipal() {
		return principal;
	}

	public void setPrincipal(String principal) {
		this.principal = principal;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getSchool_logo() {
		return school_logo;
	}

	public void setSchool_logo(String school_logo) {
		this.school_logo = school_logo;
	}

	public String getSchool_image() {
		return school_image;
	}

	public void setSchool_image(String school_image) {
		this.school_image = school_image;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getStrength() {
		return strength;
	}

	public void setStrength(int strength) {
		this.strength = strength;
	}

}