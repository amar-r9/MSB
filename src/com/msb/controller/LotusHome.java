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
public class LotusHome {
	
	@Autowired
	private QuizService quizService;
	
	@Autowired
	private CompetitionService competitionService;

	@RequestMapping(value = "/lotus", method = RequestMethod.GET)
	public String home(ModelMap map) {
		return "/lotus/index";
	}

	@RequestMapping(value = "/lotus/index", method = RequestMethod.GET)
	public String index(ModelMap map) {
		return "/lotus/index";
	}	
	
	
	@RequestMapping(value = "/lotus/login", method = RequestMethod.GET)
	public ModelAndView login(HttpSession session) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null)
			return new ModelAndView("/lotus/index");
		else
			return new ModelAndView("/lotus/login", "user", new Other());
	}

	@RequestMapping(value = "/lotus/forgot", method = RequestMethod.GET)
	public ModelAndView forgotpwd(HttpSession session) {
		CollegeUser userData = (CollegeUser) session.getAttribute("CollegeStudent");
		if (userData != null)
			return new ModelAndView("/lotus/index");
		else
			return new ModelAndView("/lotus/frgtpwd");

	}
	
	@RequestMapping(value = "/lotus/viewentries", method = RequestMethod.GET)
	public ModelAndView viewEntries() {
		return new ModelAndView("/lotus/entries/view_entries");
	}
	
	@RequestMapping(value = "/lotus/guidelines", method = RequestMethod.GET)
	public String guidelines(ModelMap map) {
		return "/lotus/guidelines";
	}
	
	@RequestMapping(value = "/lotus/aboutus", method = RequestMethod.GET)
	public ModelAndView aboutUs() {
		return new ModelAndView("/lotus/aboutus");
	}
	
	@RequestMapping(value = "/lotus/contactus", method = RequestMethod.GET)
	public ModelAndView contactUs() {
		return new ModelAndView("/lotus/contactus");
	}
	
	/*
	 * @RequestMapping(value = "/lotus/upload-a-talent", method =
	 * RequestMethod.GET) public ModelAndView uploadTalent() { return new
	 * ModelAndView("/lotus/competitions/competitions"); }
	 */
	
}
