package com.msb.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.msb.model.CollegeUser;
import com.msb.model.Other;
import com.msb.model.SchoolUser;
import com.msb.service.CompetitionService;
import com.msb.service.QuizService;

@Controller
public class SchoolHome {
	
	@Autowired
	private QuizService quizService;
	
	@Autowired
	private CompetitionService competitionService;

	@RequestMapping(value = "/school", method = RequestMethod.GET)
	public String home(ModelMap map) {
		return "/school/index";
	}

	@RequestMapping(value = "/school/index", method = RequestMethod.GET)
	public String index(ModelMap map) {
		return "/school/index";
	}	
	
	
	@RequestMapping(value = "/school/login", method = RequestMethod.GET)
	public ModelAndView login(HttpSession session) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null)
			return new ModelAndView("/welcome");
		else
			return new ModelAndView("/school/login", "user", new Other());
	}

	@RequestMapping(value = "/school/register", method = RequestMethod.GET)
	public ModelAndView register(HttpSession session) {
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null)
			return new ModelAndView("/school/index");
		else
			return new ModelAndView("/school/register", "user", new SchoolUser());
	}
	
	@RequestMapping(value = "/school/register/{refText}", method = RequestMethod.GET)
	public ModelAndView registerWithReferrence(HttpSession session, @PathVariable String refText) {
		CollegeUser userData = (CollegeUser) session.getAttribute("Student");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("refText", refText);
		if (userData != null)
			return new ModelAndView("/school/index");
		else
			return new ModelAndView("/school/register", "user", new Other());
	}

	@RequestMapping(value = "/school/forgot", method = RequestMethod.GET)
	public ModelAndView forgotpwd(HttpSession session) {
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null)
			return new ModelAndView("/school/index");
		else
			return new ModelAndView("/school/frgtpwd");

	}

	@RequestMapping(value = "/school/register-landing", method = RequestMethod.GET)
	public ModelAndView registerSuccess() {

		return new ModelAndView("/school/register-landing");

	}
	
	@RequestMapping(value = "/school/viewentries", method = RequestMethod.GET)
	public ModelAndView viewEntries() {
		return new ModelAndView("/school/entries/view_entries");
	}
	
	/*
	 * @RequestMapping(value = "/school/upload-a-talent", method =
	 * RequestMethod.GET) public ModelAndView uploadTalent() { return new
	 * ModelAndView("/school/competitions/competitions"); }
	 */
	
	@RequestMapping(value = "/school/login-otp", method = RequestMethod.GET)
	public String otp(ModelMap map) {
		return "/school/login-otp";
	}
	
	@RequestMapping(value = "/superbrainoftheyear", method = RequestMethod.GET)
	public String SuperBrainOfTheYear(ModelMap map) {
		return "/school/superbrainoftheyear";
	}
	
	@RequestMapping(value = "/privacy-policy", method = RequestMethod.GET)
	public String privacyPolicy(ModelMap map) {
		return "/privacy-policy";
	}
	
	@RequestMapping(value = "/terms-conditions", method = RequestMethod.GET)
	public String termsConditions(ModelMap map) {
		return "/terms-conditions";
	}
	
}
