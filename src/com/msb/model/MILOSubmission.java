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
@Table(name = "MILO_SUBMISSION")
public class MILOSubmission implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "SUBMISSION_ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "USER_NAME")
	private String user_name;

	@Column(name = "ENTRY_SUMMARY")
	private String entry_summary;

	@Column(name = "SUBMIT_DATE")
	private java.util.Date submit_date;

	@Column(name = "POINTS")
	private int points;

	@Column(name = "STATUS")
	private int status;

	@Column(name = "SUBMISSION_FILE_NAME")
	private String submission_file_name;
	
	@Column(name = "VISITS")
	private int visits;
	
	@Column(name = "SESSION_ID")
	private int session_id;
	
	@Column(name = "USER_STANDARD")
	private int user_standard;
	
	@Column(name = "REPORTS")
	private int reports;

	
	@ManyToOne(targetEntity = MiloSession.class, fetch = FetchType.LAZY)
	@JoinColumn(name = "SESSION_ID", referencedColumnName = "ID", insertable = false, updatable = false)
	private MiloSession competition;

	public MiloSession getCompetition() {
		return competition;
	}

	public void setCompetition(MiloSession competition) {
		this.competition = competition;
	}
	
	@ManyToOne(targetEntity = SchoolUser.class, fetch = FetchType.LAZY)
	@JoinColumn(name = "USER_NAME", referencedColumnName = "USER_NAME", insertable = false, updatable = false)
	private SchoolUser user;

	public SchoolUser getSchoolUser() {
		return user;
	}

	public void setSchoolUser(SchoolUser user) {
		this.user = user;
	}

	public MILOSubmission() {
		setSubmit_date(MsbUtil.getCurrentDate());
		setPoints(20);
		setStatus(1);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public java.util.Date getSubmit_date() {
		return submit_date;
	}

	public void setSubmit_date(java.util.Date submit_date) {
		this.submit_date = submit_date;
	}

	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getEntry_summary() {
		return entry_summary;
	}

	public void setEntry_summary(String entry_summary) {
		this.entry_summary = entry_summary;
	}

	public String getSubmission_file_name() {
		return submission_file_name;
	}

	public void setSubmission_file_name(String submission_file_name) {
		this.submission_file_name = submission_file_name;
	}

	public int getVisits() {
		return visits;
	}

	public void setVisits(int visits) {
		this.visits = visits;
	}

	public int getReports() {
		return reports;
	}

	public void setReports(int reports) {
		this.reports = reports;
	}

	public int getComp_id() {
		return session_id;
	}

	public void setComp_id(int comp_id) {
		this.session_id = comp_id;
	}

	public int getUser_standard() {
		return user_standard;
	}

	public void setUser_standard(int user_standard) {
		this.user_standard = user_standard;
	}

}
