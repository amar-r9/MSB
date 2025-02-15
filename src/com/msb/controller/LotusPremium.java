package com.msb.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.msb.model.SchoolUser;

@Controller
public class LotusPremium {

	@RequestMapping(value = "/lotus/premium", method = RequestMethod.GET)
	public ModelAndView premium(HttpSession session) {
		
		//SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		//if (userData != null) {
			ModelAndView modelAndView = new ModelAndView();
			
			//int isUserPremium = userData.getPremium();
			//if(isUserPremium==1) {
				//modelAndView.addObject("isPremium", true);
			//} else {
				//modelAndView.addObject("isPremium", false);
			//}
			modelAndView.setViewName("/lotus/premium");
			return modelAndView;
		//} else
			//return new ModelAndView("/lotus/login", "user", new SchoolUser());

	}

	@RequestMapping(value = "/lotus/user/premium/articles", method = RequestMethod.GET)
	public ModelAndView articles(HttpSession session) {
		
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null) {
			ModelAndView modelAndView = new ModelAndView();
			
			int isUserPremium = userData.getPremium();
			if(isUserPremium==1) {
				modelAndView.addObject("isPremium", true);
			} else {
				modelAndView.addObject("isPremium", false);
			}
			modelAndView.setViewName("/lotus/premium/articles");
			return modelAndView;
		} else
			return new ModelAndView("/lotus/login", "user", new SchoolUser());

	}
	
	@RequestMapping(value = "/lotus/user/premium/courses", method = RequestMethod.GET)
	public ModelAndView courses(HttpSession session) {

		
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null) {
			ModelAndView modelAndView = new ModelAndView();
			
			int isUserPremium = userData.getPremium();
			if(isUserPremium==1) {
				modelAndView.addObject("isPremium", true);
			} else {
				modelAndView.addObject("isPremium", false);
			}
			modelAndView.setViewName("/lotus/premium/courses");
			return modelAndView;
		} else
			return new ModelAndView("/lotus/login", "user", new SchoolUser());

	}

	@RequestMapping(value = "/lotus/user/write-article", method = RequestMethod.GET)
	public ModelAndView writeArticle(HttpSession session) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null) {
			ModelAndView modelAndView = new ModelAndView();
			
			int isUserPremium = userData.getPremium();
			if(isUserPremium==1) {
				modelAndView.addObject("isPremium", true);
			} else {
				modelAndView.addObject("isPremium", false);
			}
			modelAndView.setViewName("/lotus/premium/article-submit");
			return modelAndView;
		} else
			return new ModelAndView("/lotus/login", "user", new SchoolUser());

	}
	
	@RequestMapping(value = "/lotus/user/premium/artscrafts", method = RequestMethod.GET)
	public ModelAndView crafts(HttpSession session) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null) {
			ModelAndView modelAndView = new ModelAndView();
			
			int isUserPremium = userData.getPremium();
			if(isUserPremium==1) {
				modelAndView.addObject("isPremium", true);
			} else {
				modelAndView.addObject("isPremium", false);
			}
			modelAndView.setViewName("/lotus/premium/crafts");
			return modelAndView;
		} else
			return new ModelAndView("/lotus/login", "user", new SchoolUser());
	}
	
	@RequestMapping(value = "/lotus/user/premium/music", method = RequestMethod.GET)
	public ModelAndView music(HttpSession session) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null) {
			ModelAndView modelAndView = new ModelAndView();
			
			int isUserPremium = userData.getPremium();
			if(isUserPremium==1) {
				modelAndView.addObject("isPremium", true);
			} else {
				modelAndView.addObject("isPremium", false);
			}
			modelAndView.setViewName("/lotus/premium/music");
			return modelAndView;
		} else
			return new ModelAndView("/lotus/login", "user", new SchoolUser());
	}
	
	@RequestMapping(value = "/lotus/user/get-premium", method = RequestMethod.GET)
	public String getpremium(ModelMap map) {
		return "/lotus/premium/get-premium";
	}
	
}
