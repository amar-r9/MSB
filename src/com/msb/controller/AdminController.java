package com.msb.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.msb.model.BlogArticle;
import com.msb.model.CollegeUser;
import com.msb.model.CompetitionText;
import com.msb.model.MSTCompetition;
import com.msb.model.Other;
import com.msb.model.SchoolUser;
import com.msb.model.UserLikeValidation;
import com.msb.model.SchoolUser.SaveUser;
import com.msb.model.UserEntryDisqualify;
import com.msb.service.AdminService;
import com.msb.service.CompetitionService;
import com.msb.service.QuizService;
import com.msb.service.SchoolUserService;
import com.msb.util.MsbUtil;
import com.msb.validator.SchoolRegisterValidator;

@Controller
public class AdminController {
	
	@Autowired
	private QuizService quizService;
	
	@Autowired
	SchoolRegisterValidator registerValidator;
	
	@Autowired
	private SchoolUserService userService;
	
	@Autowired
	private CompetitionService competitionService;
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value = "/{client}/admin/hof", method = RequestMethod.GET)
	public String halloffame(ModelMap map, @PathVariable("client") String client) {
		return "/"+client+"/admin/hof";
	}
	
	@RequestMapping(value = "/{client}/admin/topbranches", method = RequestMethod.GET)
	public String topBranches(ModelMap map, @PathVariable("client") String client) {
		return "/"+client+"/admin/topbranches";
	}
	
	@RequestMapping(value = "/{client}/admin", method = RequestMethod.GET)
	public ModelAndView srichaitanyaAdmin(@PathVariable("client") String client) {
		ModelAndView modelAndView=new ModelAndView();
		//int noOfStudents = adminService.getTotalStudentsCount(client);
		//modelAndView.addObject("noOfStudents", noOfStudents);
		//int paintCount = adminService.getClientMSTEntriesCount(client, "painting");
		//int musicCount = adminService.getClientMSTEntriesCount(client, "music");
		//int danceCount = adminService.getClientMSTEntriesCount(client, "dance");
		//int speakCount = adminService.getClientMSTEntriesCount(client, "speaking");
		//modelAndView.addObject("paintCount", paintCount);
		//modelAndView.addObject("musicCount", musicCount);
		//modelAndView.addObject("danceCount", danceCount);
		//modelAndView.addObject("speakCount", speakCount);
		modelAndView.setViewName("/"+client+"/admin/index");
		return modelAndView;
	}	

	@RequestMapping(value = "/{client}/admin/add-student", method = RequestMethod.GET)
	public String home(ModelMap map, @PathVariable("client") String client) {
		return "/"+client+"/admin/add-student";
	}

	
	@RequestMapping(value = "/{client}/add-student", method = RequestMethod.POST)
	public String submitArticle(@ModelAttribute("user") SchoolUser other, @PathVariable("client") String client,
			HttpSession session, BindingResult result) {
			other.setPassword(other.getUsername());
			boolean isStudentSaved = userService.saveSchoolUser(other);
			if (isStudentSaved) {
				return "redirect:/"+client+"/admin/add-student?success=true";
			} else
				return "redirect:/"+client+"/admin/add-student?success=false";
	}
	
	@RequestMapping(value = "/{client}/admin/text_entries", method = RequestMethod.GET)
	public ModelAndView texttEntries(@PathVariable String client) {
		ModelAndView modelAndView = new ModelAndView();
		String comp_by = "SC";
		String type = "writing";

		List<CompetitionText> entries = adminService.getAllTextEntriesByClient(type, comp_by);

			modelAndView.addObject("entries", entries);
			modelAndView.addObject("type", type);
		
		modelAndView.setViewName("/"+client+"/admin/text_entries");
		return modelAndView;
	}
	
	@RequestMapping(value = "/{client}/admin/mst_entries/{type}/{limit}/{offset}", method = RequestMethod.GET)
	public ModelAndView mstEntries(@PathVariable String type, @PathVariable int limit, @PathVariable String client,
			@PathVariable int offset) {
		ModelAndView modelAndView = new ModelAndView();
		String comp_by = "SC";

		List<MSTCompetition> entries = competitionService.getAllMSTEntriesByClient(type, comp_by, limit, offset);

			modelAndView.addObject("entries", entries);
			modelAndView.addObject("type", type);
			modelAndView.addObject("limit", limit);
			modelAndView.addObject("offset", offset);
		
		modelAndView.setViewName("/"+client+"/admin/mst_entries");
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/{client}/admin/disqualify-textentry", method = RequestMethod.POST)
	public String disqualiftTextEntry(
			@ModelAttribute UserEntryDisqualify userEntrDisqualify, @PathVariable String client) {

				userEntrDisqualify.setReportDate(MsbUtil.getCurrentDate());
				if (adminService.disqualifyTextEntry(userEntrDisqualify)) {
					adminService.reportUserTextEntry(userEntrDisqualify.getEntry_id());
					return "reported";
				}
		return null;

	}
	
	@ResponseBody
	@RequestMapping(value = "/{client}/admin/disqualify-mstentry", method = RequestMethod.POST)
	public String disqualiftMSTEntry(
			@ModelAttribute UserEntryDisqualify userEntrDisqualify, @PathVariable String client) {

				userEntrDisqualify.setReportDate(MsbUtil.getCurrentDate());
				if (adminService.disqualifyTextEntry(userEntrDisqualify)) {
					adminService.reportUserMSTEntry(userEntrDisqualify.getEntry_id());
					return "reported";
				}
		return null;

	}
	
}
