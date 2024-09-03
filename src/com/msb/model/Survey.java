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
@Table(name = "SURVEY")
public class Survey implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "SURVEY_ID")
	private int survey_id;

	@Column(name = "CATEGORY")
	private String category;

	@Column(name = "NAME")
	private String name;

	@Column(name = "QUESTION")
	private String question;

	/*
	 * @ManyToOne(fetch=FetchType.LAZY)
	 * 
	 * @JoinColumn(name = "genre",insertable=false, nullable = false, updatable
	 * = false) private QuizGenre quizGenre;
	 * 
	 * public QuizGenre getQuizGenre() { return quizGenre; }
	 * 
	 * public void setQuizGenre(QuizGenre quizGenre) { this.quizGenre =
	 * quizGenre; }
	 */

	public int getSurvey_id() {
		return survey_id;
	}

	public void setSurvey_id(int survey_id) {
		this.survey_id = survey_id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

}
