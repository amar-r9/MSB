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
import com.msb.validator.UsernameExistConstraint;

@Entity
@Table(name = "OTHERS_USER")
@SecondaryTables({
		@SecondaryTable(name = "OTHERS_IMAGE", pkJoinColumns = { @PrimaryKeyJoinColumn(name = "id", referencedColumnName = "id") }),
		@SecondaryTable(name = "OTHERS_ACTIVATION", pkJoinColumns = { @PrimaryKeyJoinColumn(name = "others_id", referencedColumnName = "id") }), })
public class Other implements Serializable {

	public interface SaveOther {
	};

	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private String mail;
	private String name;
	private int id;
	private String phone;
	@Temporal(TemporalType.DATE)
	private String city;
	private String state;
	private String country;
	private Date reg_date;
	private int points;
	private int active;
	private String cpassword;
	private int premium;
	// private OthersProfileImage userProfileImage;
	// private UserActivation userActivation;
	private byte[] image;
	private String activation_code;
	private String gender;

	public Other() {
		setReg_date(MsbUtil.getCurrentDate());
		setPoints(250);
		setActive(1);
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
	 * OthersProfileImage getUserProfileImage() { return userProfileImage; }
	 * 
	 * public void setUserProfileImage(OthersProfileImage userProfileImage) {
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

	@Required
	//@PasswordEqualConstraint(groups = { SaveOther.class }, message="Password and Confirm password must be same")
	@NotNull(message = "Password can not be blank", groups = { SaveOther.class })
	@NotBlank(message = "Password can not be blank", groups = { SaveOther.class })
	@Size(min = 8, max = 15, groups = { SaveOther.class })
	@Column(name = "PASSWORD")
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Required
	@UsernameExistConstraint(groups = { SaveOther.class }, message = "UserName Exist.Please choose another")
	@NotNull(message = "Username can not be blank", groups = { SaveOther.class })
	@NotBlank(message = "Username can not be blank", groups = { SaveOther.class })
	@Size(min = 8, max = 20, groups = { SaveOther.class })
	@Pattern(regexp = "^[a-zA-Z][a-zA-Z0-9._]+$")
	@Column(name = "USER_NAME")
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Required
	@NotNull(message = "Mail can not be blank", groups = { SaveOther.class })
	@NotBlank(message = "Mail can not be blank", groups = { SaveOther.class })
	@Email(groups = { SaveOther.class })
	@Column(name = "MAIL")
	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	@Required
	@NotNull(message = "Name can not be blank", groups = { SaveOther.class })
	@NotBlank(message = "Name can not be blank", groups = { SaveOther.class })
	@Size(min = 0, max = 30, groups = { SaveOther.class })
	@Pattern(regexp = "^[A-z ]+$", groups = { SaveOther.class })
	@Column(name = "NAME")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@NotNull(message = "Mobile Number can not be blank", groups = { SaveOther.class })
	@NotBlank(message = "Mobile Number can not be blank", groups = { SaveOther.class })
	@Size(min = 10, max = 10, groups = { SaveOther.class })
	@Pattern(regexp = "^[0-9]+$", groups = { SaveOther.class })
	@Column(name = "PHONE")
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	//@NotNull(message = "City can not be blank", groups = { SaveOther.class })
	//@NotBlank(message = "City can not be blank", groups = { SaveOther.class })
	@Size(min = 3, max = 30, groups = { SaveOther.class })
	@Pattern(regexp = "^[A-z]+$", groups = { SaveOther.class })
	@Column(name = "CITY")
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	//@NotNull(message = "State can not be blank", groups = { SaveOther.class })
	//@NotBlank(message = "State can not be blank", groups = { SaveOther.class })
	@Column(name = "STATE")
	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@Column(name = "REG_DATE")
	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	@Column(name = "POINTS")
	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}

	@Column(name = "ACTIVE")
	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}

	@Required
	@NotNull(message = "Confirm Password can not be blank", groups = { SaveOther.class })
	@NotBlank(message = "Confirm Password can not be blank", groups = { SaveOther.class })
	@Transient
	public String getCpassword() {
		return cpassword;
	}

	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}

	@Column(table = "OTHERS_ACTIVATION",insertable=true,updatable=false)
	public String getActivation_code() {
		return activation_code;
	}

	public void setActivation_code(String activation_code) {
		this.activation_code = activation_code;
	}

	@Column(table = "OTHERS_IMAGE")
	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}
	
	@Column(name = "PREMIUM")
	public int getPremium() {
		return premium;
	}

	public void setPremium(int premium) {
		this.premium = premium;
	}

	@Override
	public String toString() {
		return "LoginModel{" + "userName=" + username + ", name=" + name + '}';
	}

	public int getRandomNumber(int min, int max) {
		return ((int) Math.floor(Math.random() * (max - min + 1)) + min);
	}

	@Column(name = "COUNTRY")
	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	@Column(name = "GENDER")
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

}
