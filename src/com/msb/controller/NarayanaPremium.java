package com.msb.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.msb.model.SchoolUser;

@Controller
public class NarayanaPremium {

	@RequestMapping(value = "/{schoolcode}/premium", method = RequestMethod.GET)
	public ModelAndView premium(HttpSession session, @PathVariable String schoolcode) {
		
		//SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		//if (userData != null) {
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("client", schoolcode);
			
			//int isUserPremium = userData.getPremium();
			//if(isUserPremium==1) {
				//modelAndView.addObject("isPremium", true);
			//} else {
				//modelAndView.addObject("isPremium", false);
			//}
			modelAndView.setViewName("/school/premium");
			return modelAndView;
		//} else
			//return new ModelAndView("/narayana/login", "user", new SchoolUser());

	}

	@RequestMapping(value = "/{schoolcode}/user/premium/articles", method = RequestMethod.GET)
	public ModelAndView articles(HttpSession session, @PathVariable String schoolcode) {
		
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null) {
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("client", schoolcode);
			
			int isUserPremium = userData.getPremium();
			if(isUserPremium==1) {
				modelAndView.addObject("isPremium", true);
			} else {
				modelAndView.addObject("isPremium", false);
			}
			modelAndView.setViewName("/school/premium/articles");
			return modelAndView;
		} else
			return new ModelAndView("/school/login", "user", new SchoolUser());

	}
	
	@RequestMapping(value = "/{schoolcode}/user/premium/courses", method = RequestMethod.GET)
	public ModelAndView courses(HttpSession session, @PathVariable String schoolcode) {

		
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null) {
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("client", schoolcode);
			
			int isUserPremium = userData.getPremium();
			if(isUserPremium==1) {
				modelAndView.addObject("isPremium", true);
			} else {
				modelAndView.addObject("isPremium", false);
			}
			modelAndView.setViewName("/school/premium/courses");
			return modelAndView;
		} else
			return new ModelAndView("/school/login", "user", new SchoolUser());

	}

	@RequestMapping(value = "/{schoolcode}/user/write-article", method = RequestMethod.GET)
	public ModelAndView writeArticle(HttpSession session, @PathVariable String schoolcode) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null) {
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("client", schoolcode);
			
			int isUserPremium = userData.getPremium();
			if(isUserPremium==1) {
				modelAndView.addObject("isPremium", true);
			} else {
				modelAndView.addObject("isPremium", false);
			}
			modelAndView.setViewName("/school/premium/article-submit");
			return modelAndView;
		} else
			return new ModelAndView("/school/login", "user", new SchoolUser());

	}
	
	@RequestMapping(value = "/{schoolcode}/user/premium/artscrafts", method = RequestMethod.GET)
	public ModelAndView crafts(HttpSession session, @PathVariable String schoolcode) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null) {
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("client", schoolcode);
			
			int isUserPremium = userData.getPremium();
			if(isUserPremium==1) {
				modelAndView.addObject("isPremium", true);
			} else {
				modelAndView.addObject("isPremium", false);
			}
			modelAndView.setViewName("/school/premium/crafts");
			return modelAndView;
		} else
			return new ModelAndView("/school/login", "user", new SchoolUser());
	}
	
	@RequestMapping(value = "/{schoolcode}/user/premium/music", method = RequestMethod.GET)
	public ModelAndView music(HttpSession session, @PathVariable String schoolcode) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null) {
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("client", schoolcode);
			
			int isUserPremium = userData.getPremium();
			if(isUserPremium==1) {
				modelAndView.addObject("isPremium", true);
			} else {
				modelAndView.addObject("isPremium", false);
			}
			modelAndView.setViewName("/school/premium/music");
			return modelAndView;
		} else
			return new ModelAndView("/school/login", "user", new SchoolUser());
	}
	
	@RequestMapping(value = "/{schoolcode}/user/get-premium", method = RequestMethod.GET)
	public String getpremium(ModelMap map, @PathVariable String schoolcode) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("client", schoolcode);
		return "/school/premium/get-premium";
	}
	
}
