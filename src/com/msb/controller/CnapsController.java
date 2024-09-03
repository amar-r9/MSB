package com.msb.controller;

import java.io.File;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.msb.model.BlogArticle;
import com.msb.model.CollegeUser;
import com.msb.model.Competition;
import com.msb.model.MILOSubmission;
import com.msb.model.MSTCompetition;
import com.msb.model.MailSubscribe;
import com.msb.model.Other;
import com.msb.model.Quiz;
import com.msb.model.QuizPoints;
import com.msb.model.QuizScores;
import com.msb.model.School;
import com.msb.model.SchoolPageDetails;
import com.msb.model.SchoolUser;
import com.msb.model.UserLikeValidation;
import com.msb.model.SchoolUser.SaveUser;
import com.msb.service.AdminService;
import com.msb.service.CompetitionService;
import com.msb.service.MSBService;
import com.msb.service.OtherService;
import com.msb.service.QuizService;
import com.msb.service.SchoolService;
import com.msb.service.SchoolUserService;
import com.msb.util.MsbUtil;
import com.msb.validator.RegisterValidator;
import com.msb.validator.SchoolRegisterValidator;

@Controller
public class CnapsController {
	
	@Autowired
	private ServletContext servletContext;

	@Autowired
	SchoolRegisterValidator registerValidator;
	
	@Autowired
	private SchoolUserService userService;
	
	@Autowired
	private OtherService otherService;
	
	@Autowired
	private MSBService msbService;
	
	@Autowired
	private SchoolService schoolService;
	
	@Autowired
	private QuizService quizService;
	
	@Autowired
	private AdminService adminService;

	@RequestMapping(value = "/cnaps", method = RequestMethod.GET)
	public String home(ModelMap map) {
		return "/cnaps/index";
	}

}
