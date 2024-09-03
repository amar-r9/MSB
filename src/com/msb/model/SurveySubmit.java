package com.msb.model;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "SURVEYSUBMIT")
public class SurveySubmit implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "SUBMITID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int submitid;

	@Column(name = "SURVEYID")
	private int survey_id;

	@Column(name = "USER_NAME")
	private String user_name;
	
	@Column(name = "Q1")
	private int q1;
	@Column(name = "Q2")
	private int q2;
	@Column(name = "Q3")
	private int q3;
	@Column(name = "Q4")
	private int q4;
	@Column(name = "Q5")
	private int q5;
	@Column(name = "Q6")
	private int q6;
	@Column(name = "Q7")
	private int q7;
	@Column(name = "Q8")
	private int q8;
	@Column(name = "Q9")
	private int q9;
	@Column(name = "Q10")
	private int q10;
	@Column(name = "Q11")
	private int q11;
	@Column(name = "Q12")
	private int q12;
	@Column(name = "Q13")
	private int q13;
	@Column(name = "Q14")
	private int q14;
	@Column(name = "Q15")
	private int q15;
	@Column(name = "Q16")
	private int q16;
	@Column(name = "Q17")
	private int q17;
	@Column(name = "Q18")
	private int q18;
	@Column(name = "Q19")
	private int q19;
	@Column(name = "Q20")
	private int q20;
	@Column(name = "Q21")
	private int q21;
	@Column(name = "Q22")
	private int q22;
	@Column(name = "Q23")
	private int q23;
	@Column(name = "Q24")
	private int q24;
	
	public int getQ1() {
		return q1;
	}
	public void setQ1(int q1) {
		this.q1 = q1;
	}
	public int getQ2() {
		return q2;
	}
	public void setQ2(int q2) {
		this.q2 = q2;
	}
	public int getQ3() {
		return q3;
	}
	public void setQ3(int q3) {
		this.q3 = q3;
	}
	public int getQ4() {
		return q4;
	}
	public void setQ4(int q4) {
		this.q4 = q4;
	}
	public int getQ5() {
		return q5;
	}
	public void setQ5(int q5) {
		this.q5 = q5;
	}
	public int getQ6() {
		return q6;
	}
	public void setQ6(int q6) {
		this.q6 = q6;
	}
	public int getQ7() {
		return q7;
	}
	public void setQ7(int q7) {
		this.q7 = q7;
	}
	public int getQ8() {
		return q8;
	}
	public void setQ8(int q8) {
		this.q8 = q8;
	}
	public int getQ9() {
		return q9;
	}
	public void setQ9(int q9) {
		this.q9 = q9;
	}
	public int getQ10() {
		return q10;
	}
	public void setQ10(int q10) {
		this.q10 = q10;
	}
	public int getQ11() {
		return q11;
	}
	public void setQ11(int q11) {
		this.q11 = q11;
	}
	public int getQ12() {
		return q12;
	}
	public void setQ12(int q12) {
		this.q12 = q12;
	}
	public int getQ13() {
		return q13;
	}
	public void setQ13(int q13) {
		this.q13 = q13;
	}
	public int getQ14() {
		return q14;
	}
	public void setQ14(int q14) {
		this.q14 = q14;
	}
	public int getQ15() {
		return q15;
	}
	public void setQ15(int q15) {
		this.q15 = q15;
	}
	public int getQ16() {
		return q16;
	}
	public void setQ16(int q16) {
		this.q16 = q16;
	}
	public int getQ17() {
		return q17;
	}
	public void setQ17(int q17) {
		this.q17 = q17;
	}
	public int getQ18() {
		return q18;
	}
	public void setQ18(int q18) {
		this.q18 = q18;
	}
	public int getQ19() {
		return q19;
	}
	public void setQ19(int q19) {
		this.q19 = q19;
	}
	public int getQ20() {
		return q20;
	}
	public void setQ20(int q20) {
		this.q20 = q20;
	}
	public int getQ21() {
		return q21;
	}
	public void setQ21(int q21) {
		this.q21 = q21;
	}
	public int getQ22() {
		return q22;
	}
	public void setQ22(int q22) {
		this.q22 = q22;
	}
	public int getQ23() {
		return q23;
	}
	public void setQ23(int q23) {
		this.q23 = q23;
	}
	public int getQ24() {
		return q24;
	}
	public void setQ24(int q24) {
		this.q24 = q24;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public int getSurvey_id() {
		return survey_id;
	}
	public void setSurvey_id(int survey_id) {
		this.survey_id = survey_id;
	}
	public int getSubmitid() {
		return submitid;
	}
	public void setSubmitid(int submitid) {
		this.submitid = submitid;
	}
	
}
