package com.msb.controller;

import javax.servlet.http.HttpSession;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.msb.model.CompetitionText;
import com.msb.model.MILOSubmission;
import com.msb.model.School;
import com.msb.model.SchoolPageDetails;
import com.msb.model.SchoolUser;
import com.msb.service.AdminService;
import com.msb.service.MiloService;
//import com.msb.model.SchoolUser;
//import com.msb.model.CompetitionText;
//import com.msb.model.SchoolPageDetails;
import com.msb.service.SchoolService;
import com.msb.service.SchoolUserService;

@Controller
public class SchoolPageController {

	@Autowired
	private SchoolService schoolService;

	@Autowired
	private AdminService adminService;
	
	@Autowired
	private SchoolUserService userService;

	@RequestMapping(value = "/school/narayana", method = RequestMethod.GET)
	public String home(ModelMap map) {
		return "/schoolpage/index";
	}
	
	/*
	 * @RequestMapping(value = "/school/{id}", method = RequestMethod.GET) public
	 * ModelAndView getTopSchools(@PathVariable int id) {
	 * 
	 * ModelAndView modelAndView = new ModelAndView(); School pageDetails =
	 * schoolService .getSchoolPageDeails(id);
	 * 
	 * if (pageDetails != null) { Integer participants =
	 * schoolService.getSchoolTotalParticipants(pageDetails.getSchool_name(),
	 * pageDetails.getSchool_code()); //List<SchoolUser> toppers =
	 * schoolService.getSchoolToppers(pageDetails.getSchool_name(),
	 * pageDetails.getSchool_code()); modelAndView.addObject("participants",
	 * participants); //modelAndView.addObject("toppers", toppers);
	 * List<CompetitionText> essays = schoolService.getSchoolTextEntries(
	 * pageDetails.getSchool_name(), pageDetails.getSchool_code(), 1, 2, 0);
	 * 
	 * modelAndView.addObject("essays", essays);
	 * 
	 * modelAndView.addObject("pageDetails", pageDetails); } else {
	 * modelAndView.addObject("invalidcode", true);
	 * modelAndView.addObject("pageDetails", new SchoolPageDetails()); }
	 * modelAndView.setViewName("/schoolpage/school-page"); return modelAndView; }
	 */
	
	@RequestMapping(value = "/milo/school/{id}", method = RequestMethod.GET)
	  public ModelAndView getSchoolPage(@PathVariable int id) {
		
		ModelAndView modelAndView = new ModelAndView();
		School pageDetails = schoolService .getSchoolPageDeails(id);
	  
		if (pageDetails != null) {
			//Integer points = schoolService.getSchoolTotalPoints(pageDetails.getSchool_name(), pageDetails.getSchool_code()); 
			//List<SchoolUser> toppers = schoolService.getSchoolToppers(pageDetails.getSchool_name(), pageDetails.getSchool_code());
			//modelAndView.addObject("points", points);
			//modelAndView.addObject("toppers", toppers);
			List<MILOSubmission> essays = adminService.getMILOSubmissionsOfSchool(pageDetails.getSchool_name(), pageDetails.getSchool_code(), 2, 0);
	  
			modelAndView.addObject("essays", essays);
	  
			modelAndView.addObject("pageDetails", pageDetails); 
		} else {
			modelAndView.addObject("invalidcode", true);
			modelAndView.addObject("pageDetails", new SchoolPageDetails());
		}
			modelAndView.setViewName("/milo/school/index");
			return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/school/points/{schoolname}/{schoolcode}", method = RequestMethod.GET)
	public String getSchoolPoints(@PathVariable String schoolcode,
			@PathVariable String schoolname) {

		Integer points = schoolService.getSchoolTotalPoints(schoolname, schoolcode);
		if(points>0){
			return points.toString();
		}else
			return"N/A";		
	}
	
	@ResponseBody
	@RequestMapping(value = "/school/toppers/{schoolname}/{schoolcode}", method = RequestMethod.GET)
	public String getTopStudentsOfSchool(@PathVariable String schoolcode,
			@PathVariable String schoolname) {

		List<SchoolUser> toppers = schoolService.getSchoolToppers(schoolname, schoolcode, 5);
		StringBuffer topBuffer=new StringBuffer();
		if(toppers.isEmpty()){
			return "N/A";
		}else{
			topBuffer.append("<ol>");
			for(SchoolUser user:toppers){
				topBuffer.append("<div class=\"p-2 d-flex flex-row align-items-center mb-2 border-bottom\">" + 
						"<img src=\"https://mysuperbrain.com/milo/profile/image/"+user.getUsername()+"\" width=\"40\" "
						+"onerror=\"this.onerror=null; this.src='https://mysuperbrain.com/img/profilepicture.png'\"class=\"rounded-circle\">" + 
						"<div class=\"d-flex flex-column ml-2\">" + 
						"<span class=\"d-block font-weight-bold\">"+user.getName()+"</span>" + 
						"<small class=\"text-muted\">Class "+user.getStandard()+" | Points " +user.getPoints()+"</small>" + 
						"</div>" + 
						"</div>");
									
			}
			return topBuffer.toString();
		}

	}
	
	@RequestMapping(value = "/milo/school/{schoolname}/{schoolcode}/toppers", method = RequestMethod.GET)
	  public ModelAndView getSchoolToppers(@PathVariable String schoolcode, @PathVariable String schoolname) {
		
		ModelAndView modelAndView = new ModelAndView();
		//School pageDetails = schoolService .getSchoolPageDeails(school_code);
	  
		List<SchoolUser> toppers = schoolService.getSchoolToppers(schoolname, schoolcode, 0);
		if (toppers != null) {
			modelAndView.addObject("toppers", toppers); 
		} else {
			modelAndView.addObject("invalidcode", true);
		}
			modelAndView.setViewName("/milo/school/hof");
			return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/school/add/{schoolname}/{schoolcode}", method = RequestMethod.GET)
	public String getUserToSchool(@PathVariable String schoolcode,
			@PathVariable String schoolname,HttpSession session) {
		SchoolUser user=(SchoolUser)session.getAttribute("SchoolStudent");
		if(null==user)
			return "Please login first";
		else{
			user.setSchool(schoolname);
			user.setSchool_code(schoolcode);
			userService.updateUserDetails(user);
			return "Added to school";
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/milo/school/submissions/{schoolname}/{schoolcode}", method = RequestMethod.GET)
	public ModelAndView getSchoolMiloSubmissions(@PathVariable String schoolcode,
			@PathVariable String schoolname) {
		
		ModelAndView modelAndView = new ModelAndView();
		List<MILOSubmission> miloSubmissions = adminService.getMILOSubmissionsOfSchool(
				schoolname, schoolcode, 0, 0);
		modelAndView.addObject("miloSubmissions", miloSubmissions);
		modelAndView.addObject("schoolname", schoolname);
		modelAndView.addObject("schoolcode", schoolcode);
		modelAndView.setViewName("/milo/school/entries");
		return modelAndView;
	}
	
	@RequestMapping(value = "/codingstar/school/{schoolname}/{schoolcode}/students", method = RequestMethod.GET)
	  public ModelAndView getSchoolStudents(@PathVariable String schoolname, @PathVariable String schoolcode) {
		
		ModelAndView modelAndView = new ModelAndView();
		//School pageDetails = schoolService .getSchoolPageDeails(school_code);
	  
		List<SchoolUser> students = schoolService.getSchoolStudents(schoolname, schoolcode);
		if (students != null) {
			modelAndView.addObject("students", students); 
		} else {
			modelAndView.addObject("invalidcode", true);
		}
			modelAndView.setViewName("/codingstar/school/students");
			return modelAndView;
	}
	
	@RequestMapping(value = "/milo/school/{schoolname}/{schoolcode}/students", method = RequestMethod.GET)
	  public ModelAndView getMiloSchoolStudents(@PathVariable String schoolname, @PathVariable String schoolcode) {
		
		ModelAndView modelAndView = new ModelAndView();
		//School pageDetails = schoolService .getSchoolPageDeails(school_code);
		modelAndView.addObject("schoolname", schoolname);
		modelAndView.addObject("schoolcode", schoolcode);
		List<SchoolUser> students = schoolService.getSchoolStudents(schoolname, schoolcode);
		if (students != null) {
			modelAndView.addObject("students", students); 
		} else {
			modelAndView.addObject("invalidcode", true);
		}
			modelAndView.setViewName("/milo/school/students");
			return modelAndView;
	}
	
	@RequestMapping(value = "/school/{school_code}", method = RequestMethod.GET)
	public ModelAndView getSchoolPageDetails(@PathVariable String school_code) {
		ModelAndView modelAndView = new ModelAndView();
		SchoolPageDetails pageDetails = schoolService
				.getSchoolPageDeails(school_code);
		System.out.println("School"+pageDetails+","+school_code+"");
		
		if (pageDetails != null) {
			//System.out.println("Not null");
			List<CompetitionText> essays = schoolService.getSchoolTextEntries(
					pageDetails.getSchool_name(), pageDetails.getSchool_code(),
					1, 2, 0);

			modelAndView.addObject("essays", essays);

			modelAndView.addObject("pageDetails", pageDetails);
		} else {
			modelAndView.addObject("invalidcode", true);
			modelAndView.addObject("pageDetails", new SchoolPageDetails());
		}
		modelAndView.setViewName("/schoolpage/school-page");
		return modelAndView;
	}
	
	@RequestMapping(value = "/school/{schoolname}/{schoolcode}/toppers", method = RequestMethod.GET)
	  public ModelAndView getToppers(@PathVariable String schoolcode, @PathVariable String schoolname) {
		
		ModelAndView modelAndView = new ModelAndView();
		//School pageDetails = schoolService .getSchoolPageDeails(school_code);
	  
		List<SchoolUser> toppers = schoolService.getSchoolToppers(schoolname, schoolcode, 0);
		modelAndView.addObject("schoolname", schoolname);
		if (toppers != null) {
			modelAndView.addObject("toppers", toppers); 
		} else {
			modelAndView.addObject("invalidcode", true);
		}
			modelAndView.setViewName("/schoolpage/hof");
			return modelAndView;
	}

}
