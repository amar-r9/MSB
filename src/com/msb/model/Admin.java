package com.msb.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.SecondaryTable;
import javax.persistence.SecondaryTables;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.beans.factory.annotation.Required;

import com.msb.util.MsbUtil;
import com.msb.validator.SchoolUsernameExistConstraint;

@Entity
@Table(name = "ADMIN")
@SecondaryTables({
		@SecondaryTable(name = "SCHOOLUSER_IMAGE", pkJoinColumns = { @PrimaryKeyJoinColumn(name = "id", referencedColumnName = "id") }),
		@SecondaryTable(name = "SCHOOLUSER_ACTIVATION", pkJoinColumns = { @PrimaryKeyJoinColumn(name = "user_id", referencedColumnName = "id") }), })
public class Admin implements Serializable {

	public interface SaveUser {
	};

	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	//private String mail;
	private String name;
	private int id;
	private String branch;
	private String zone;
	private int access_level;
	//private String phone;
	//@Temporal(TemporalType.DATE)
	//private String city;
	//private String state;
	//private Date reg_date;
	//private int points;
	//private int active;
	//private String cpassword;
	//private String school;
	//private int standard;
	//private int premium;
	// private UserProfileImage userProfileImage;
	// private UserActivation userActivation;
	private byte[] image;
	//private String activation_code;
	//private String branch;
	//private String school_code;
	private int login_count;

	public Admin() {
		//setReg_date(MsbUtil.getCurrentDate());
		//setPoints(250);
		//setActive(1);
	}

	/*
	 * @OneToOne(cascade = CascadeType.ALL, mappedBy = "user") public
	 * UserActivation getUserActivation() { return userActivation; }
	 * 
	 * public void setUserActivation(UserActivation userActivation) {
	 * this.userActivation = userActivation; }
	 */

	/*
	 * @OneToOne(cascade = CascadeType.ALL, mappedBy = "user") public
	 * UserProfileImage getUserProfileImage() { return userProfileImage; }
	 * 
	 * public void setUserProfileImage(UserProfileImage userProfileImage) {
	 * this.userProfileImage = userProfileImage; }
	 */

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "PASSWORD")
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	@Column(name = "USER_NAME")
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "NAME")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(table = "SCHOOLUSER_IMAGE")
	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "LoginModel{" + "userName=" + username + ", name=" + password + '}';
	}

	public int getRandomNumber(int min, int max) {
		return ((int) Math.floor(Math.random() * (max - min + 1)) + min);
	}

	@Column(name = "BRANCH")
	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	@Column(name = "ZONE")
	public String getZone() {
		return zone;
	}

	public void setZone(String zone) {
		this.zone = zone;
	}

	@Column(name = "ACCESS_LEVEL")
	public int getAccess_level() {
		return access_level;
	}

	public void setAccess_level(int access_level) {
		this.access_level = access_level;
	}

	@Column(name = "LOGIN_COUNT")
	public int getLogin_count() {
		return login_count;
	}

	public void setLogin_count(int login_count) {
		this.login_count = login_count;
	}

}
