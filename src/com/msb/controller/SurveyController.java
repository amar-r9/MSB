package com.msb.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.msb.model.SchoolUser;
import com.msb.model.Survey;
import com.msb.model.SurveyResult;
import com.msb.model.SurveySubmit;
import com.msb.service.MSBService;
import com.msb.validator.SchoolRegisterValidator;

@Controller
public class SurveyController {

	@Autowired
	SchoolRegisterValidator registerValidator;
	
	@Autowired
	MSBService msbService;

	@RequestMapping(value = "/school/user/survey/{id}", method = RequestMethod.GET)
	public ModelAndView takeSchoolTest(@PathVariable int id, HttpSession session) {
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		//boolean isPremium = isStudentPremium(userData);
		ModelAndView modelAndView = new ModelAndView();
		List<Survey> survey = msbService.getSurvey(id);
		boolean isTestTaken = msbService.isStudenTakenSurvey(id, userData.getId());
		modelAndView.addObject("isTestTaken", isTestTaken);
		modelAndView.addObject("survey", survey);
		modelAndView.setViewName("/school/survey");		
		return modelAndView;
	}
	
	@RequestMapping(value = "/school/user/submitsurvey", method = RequestMethod.POST)
	public ModelAndView submitTest(@ModelAttribute("surveySubmit") SurveyResult surveySubmit, 
			HttpSession session, BindingResult result) {
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		//List<Survey> survey = msbService.getSurvey(1);
		ModelAndView modelAndView = new ModelAndView();
		if (msbService.isStudenTakenSurvey(surveySubmit.getSurvey_id(), userData.getId())) {
			modelAndView.addObject("attempted", true);
		} else {
			msbService.saveSurveyResult(surveySubmit);
		
		}
		
		modelAndView.setViewName("/school/survey-submission");
		return modelAndView;
	}

}
