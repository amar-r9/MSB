package com.msb.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "VEHICLE")
public class Vehicle implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column(name = "VEHICLE_USER")
	private String vehicle_user;

	@Column(name = "REGISTRATION")
	private String registration;

	@Column(name = "BRAND")
	private String brand;
	
	@Column(name = "MODEL")
	private String model;
	
	@Column(name = "YEAR")
	private String year;
	
	@Column(name = "FUEL_TYPE")
	private String fuel_type;
	
	@Column(name = "BOUGHT_ON")
	private Date bought_on;
	
	@Column(name = "INSURANCE_DATE")
	private Date insurance_date;
	
	@Column(name = "POLLUTION_DATE")
	private Date pollution_date;
	
	@Column(name = "TYPE")
	private String type;
	
	@Column(name = "FILENAME")
	private String filename;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRegistration() {
		return registration;
	}

	public void setRegistration(String registration) {
		this.registration = registration;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getFuel_type() {
		return fuel_type;
	}

	public void setFuel_type(String fuel_type) {
		this.fuel_type = fuel_type;
	}

	public Date getBought_on() {
		return bought_on;
	}

	public void setBought_on(Date bought_on) {
		this.bought_on = bought_on;
	}

	public Date getInsurance_date() {
		return insurance_date;
	}

	public void setInsurance_date(Date insurance_date) {
		this.insurance_date = insurance_date;
	}

	public Date getPollution_date() {
		return pollution_date;
	}

	public void setPollution_date(Date pollution_date) {
		this.pollution_date = pollution_date;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getVehicle_user() {
		return vehicle_user;
	}

	public void setVehicle_user(String vehicle_user) {
		this.vehicle_user = vehicle_user;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

}
