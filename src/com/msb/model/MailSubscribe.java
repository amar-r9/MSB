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
@Table(name = "MAIL_SUBSCRIBE")
public class MailSubscribe implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "EMAIL")
	private String mail;

	@Column(name = "SUBMIT_DATE")
	private java.util.Date submit_date;
	
	public MailSubscribe(){
		submit_date=MsbUtil.getCurrentDate();
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public java.util.Date getSubmit_date() {
		return submit_date;
	}

	public void setSubmit_date(java.util.Date submit_date) {
		this.submit_date = submit_date;
	}

}
