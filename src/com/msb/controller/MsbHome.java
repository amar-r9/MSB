package com.msb.controller;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.jboss.logging.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.msb.model.Postponeneetjee;
import com.msb.model.School;
import com.msb.model.TeachingForm;
import com.msb.service.MSBService;

@Controller
public class MsbHome {
	
	@Autowired
	private MSBService msbService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(ModelMap map) {
		return "/index";
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(ModelMap map) {
		return "/index";
	}
	
	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String wlcome(ModelMap map) {
		return "/welcome";
	}
	
	@RequestMapping(value = "/schoolregister", method = RequestMethod.GET)
	public String registerSchool(ModelMap map) {
		return "/schoolregister";
	}
	
	@RequestMapping(value = "/milo/user/selfiewithmilo1", method = RequestMethod.GET)
	public String miloSelfie(ModelMap map) {
		return "/milo/milo_selfie1";
	}
	
	@RequestMapping(value = "/enrolschool", method = RequestMethod.POST)
	public ModelAndView submitArticle(@ModelAttribute("school") School school,
			HttpSession session, BindingResult result) {

		ModelAndView modelAndView = new ModelAndView();
		int maxId = msbService.getSchoolMaxId();
		String schoolcode = maxId+"school";
		school.setSchool_code(schoolcode);

		//int id = msbService
				//.saveSchoolPage(school);
		boolean saved = msbService.saveSchool(school);
		if (saved) {
			return new ModelAndView("redirect:/schoolregister?success=true&id="+maxId+"");	
		} else
			return new ModelAndView("redirect:/schoolregister?success=false");

	}
	
	@RequestMapping(value = "/school/teaching-form", method = RequestMethod.GET)
	public String teachingForm(ModelMap map) {
		return "/school/teaching-form";
	}
	
	@RequestMapping(value = "/school/teaching-interest", method = RequestMethod.POST)
	public ModelAndView submitArticle(@ModelAttribute("teacher") TeachingForm teacher,
			HttpSession session, BindingResult result) {

		ModelAndView modelAndView = new ModelAndView();
		boolean saved = msbService.saveTeachingInterest(teacher);
		if (saved)
			return new ModelAndView("redirect:/school/teaching-form?success=true");
		else
			return new ModelAndView("redirect:/school/teaching-form?success=false");

	}
	
	@RequestMapping(value = "/postponeneetjee", method = RequestMethod.GET)
	public ModelAndView postponeJee(ModelMap map) {
		
		ModelAndView modelAndView = new ModelAndView();
		
		int yesVotes = msbService.getNoOfVotes("YES");
		int noVotes = msbService.getNoOfVotes("NO");
		int total = yesVotes+noVotes;
		int yesAvg = (yesVotes/total)*100;
		int noAvg = (noVotes/total)*100;
		modelAndView.addObject("yesAvg", yesAvg);
		modelAndView.addObject("yesVotes", yesVotes);
		modelAndView.addObject("noVotes", noAvg);
		modelAndView.addObject("total", total);
		modelAndView.setViewName("/postponeneetjee");
		
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/send-otp", method = RequestMethod.POST)
	public ModelAndView sendMobile(@RequestParam String phone, HttpSession session) {

		ModelAndView modelAndView = new ModelAndView();
			//System.out.println("Vote: "+radio1);
		if (phone != null) {
				String mobile = ""+"91"+phone+"";
				System.out.println("mobile: "+mobile);
				Random rand = new Random();
				int otp = rand.nextInt(900000) + 100000;
				
				boolean send = msbService.sendSMS(mobile, otp);
				if (send) {
					modelAndView.addObject("success", true);
					modelAndView.addObject("phone", phone);
					modelAndView.addObject("otp", otp);
					modelAndView.setViewName("/postponeneetjee");
				} else {
					modelAndView.addObject("error", true);
					modelAndView.setViewName("/postponeneetjee");
				}
		} else {
			modelAndView.addObject("phone", null);
			modelAndView.setViewName("/postponeneetjee");
		}
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/verify-otp", method = RequestMethod.GET)
	public String validateUserLike(
			HttpSession session, @RequestParam("otp") String otp, @RequestParam("verify") String verify) {

		
		if (verify != null) {
			
			if (verify.contentEquals(otp)) {
				return "success";
			} else {
				return "error";
				
			}

		} else 
			return "empty";
		//return null;
	}
	
	@ResponseBody
	@RequestMapping(value = "/submit-vote", method = RequestMethod.POST)
	public ModelAndView validateUserLike(
			@ModelAttribute Postponeneetjee postpone,
			HttpSession session) {
		
		ModelAndView modelAndView = new ModelAndView();
		if (msbService.isAlreadyVoted(postpone.getMobile())) {
		//int yesVotes = msbService.getNoOfVotes("YES");
		//int noVotes = msbService.getNoOfVotes("NO");
		//int total = yesVotes+noVotes;
		//double yesAvg = yesVotes/total;
		//double noAvg = noVotes/total;
		} else {
			if (msbService.submitVote(postpone)) {
				modelAndView.addObject("voted", true);
				//modelAndView.addObject("yesVotes", yesAvg);
				//modelAndView.addObject("noVotes", noAvg);
				//modelAndView.addObject("total", total);
				modelAndView.setViewName("/postponeneetjee");
			} else {
				modelAndView.addObject("voted", false);
				modelAndView.setViewName("/postponeneetjee");
			}
			//return modelAndView;
		}
		return modelAndView;
	}
	
	/*
	 * @RequestMapping(value = "/school/user/survey/{id}", method =
	 * RequestMethod.GET) public ModelAndView viewSurvey(@PathVariable int id,
	 * HttpSession session) {
	 * 
	 * ModelAndView modelAndView = new ModelAndView(); SchoolUser user =
	 * (SchoolUser) session.getAttribute("SchoolStudent");
	 * if(msbService.isStudenTakenSurvey(id, user.getUsername())) {
	 * modelAndView.addObject("taken", "yes"); } else { List<Survey> survey =
	 * msbService.getSurvey(id); modelAndView.addObject("survey", survey); }
	 * modelAndView.setViewName("/school/survey"); return modelAndView;
	 * 
	 * }
	 */
	
	@RequestMapping(value = "/aboutus", method = RequestMethod.GET)
	public String aboutUs(ModelMap map) {
		return "/aboutus";
	}
	
	@RequestMapping(value = "/contactus", method = RequestMethod.GET)
	public String contactUs(ModelMap map) {
		return "/contactus";
	}
	
	@RequestMapping(value = "/team", method = RequestMethod.GET)
	public String team(ModelMap map) {
		return "/team";
	}
	
	@RequestMapping(value = "/bhanu", method = RequestMethod.GET) 
	public String bhanu(ModelMap map) {
		return "/bhanu";
	}
	
	@RequestMapping(value = "/vineet", method = RequestMethod.GET) 
	public String vineet(ModelMap map) {
		return "/vineet";
	}
	
	@ResponseBody
	@RequestMapping(value = "/school/fanscount", method = RequestMethod.GET)
	public String getMiloPoints(@Param String usr) {
		System.out.println("Fans User:" +usr);
		Integer fans = msbService.getUserFanCount(usr);
		System.out.println("User Fans:" +fans);
		if(fans>0){
			return fans.toString();
		}else
			return fans.toString();	
	}
	
	@RequestMapping(value = "/comedystars", method = RequestMethod.GET) 
	public String comedystars(ModelMap map) {
		return "/comedystars";
	}
	
}
