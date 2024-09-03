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
public class UrbaneController {
	
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

	@RequestMapping(value = "/urbane", method = RequestMethod.GET)
	public String home(ModelMap map) {
		return "/urbane/index";
	}
	
	@RequestMapping(value = "/urbane/index", method = RequestMethod.GET)
	public String index(ModelMap map) {
		return "/urbane/index";
	}
	
	@RequestMapping(value = "/urbane/studenthof", method = RequestMethod.GET)
	public String studentHOF(ModelMap map) {
		return "/urbane/hof";
	}
	
	@RequestMapping(value = "/urbane/schoolhof", method = RequestMethod.GET)
	public String schoolHOF(ModelMap map) {
		return "/urbane/shof";
	}
	
	@RequestMapping(value = "/urbane/registerschool", method = RequestMethod.GET)
	public String registerSchool(ModelMap map) {
		return "/urbane/sregister";
	}
	
	@RequestMapping(value = "/urbane/enrolschool", method = RequestMethod.POST)
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
			return new ModelAndView("redirect:/urbane/registerschool?success=true&id="+maxId+"");	
		} else
			return new ModelAndView("redirect:/urbane/registerschool?success=false");

	}
	
	@RequestMapping(value = "/urbane/school/{id}", method = RequestMethod.GET)
	  public ModelAndView getSchoolPage(@PathVariable int id) {
		
		ModelAndView modelAndView = new ModelAndView();
		School pageDetails = schoolService.getSchoolPageDeails(id);
	  
		if (pageDetails != null) {
			//Integer points = schoolService.getSchoolTotalPoints(pageDetails.getSchool_name(), pageDetails.getSchool_code()); 
			//List<SchoolUser> toppers = schoolService.getSchoolToppers(pageDetails.getSchool_name(), pageDetails.getSchool_code());
			//modelAndView.addObject("points", points);
			//modelAndView.addObject("toppers", toppers);
			//List<MILOSubmission> essays = adminService.getMILOSubmissionsOfSchool(pageDetails.getSchool_name(), pageDetails.getSchool_code(), 2, 0);
			//modelAndView.addObject("essays", essays);
			modelAndView.addObject("pageDetails", pageDetails); 
		} else {
			modelAndView.addObject("invalidcode", true);
			modelAndView.addObject("pageDetails", new SchoolPageDetails());
		}
			modelAndView.setViewName("/urbane/school/index");
			return modelAndView;
	}
	
	@RequestMapping(value = "/urbane/register", method = RequestMethod.GET)
	public ModelAndView register(HttpSession session) {
		//SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null)
			return new ModelAndView("/urbane/index");
		else
			return new ModelAndView("/urbane/register", "user", new SchoolUser());
	}

	@RequestMapping(value = "/urbane/register-landing", method = RequestMethod.GET)
	public ModelAndView registerSuccess() {
		return new ModelAndView("/urbane/register-landing");
	}

	@RequestMapping(value = "/urbane/login", method = RequestMethod.GET)
	public ModelAndView login(HttpSession session) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		//Other otherData = (Other) session.getAttribute("Other");
		if (userData != null)
			return new ModelAndView("/urbane/index");
		else
			return new ModelAndView("/urbane/login", "user", new SchoolUser());
	}
	
	@RequestMapping(value = "/urbane/validateLogin", method = RequestMethod.GET)
	public ModelAndView validateLogin(HttpSession session) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		//Other otherData = (Other) session.getAttribute("Other");
		if (userData != null)
			return new ModelAndView("/urbane/index");
		else
			return new ModelAndView("/urbane/login", "user", new SchoolUser());

	}

	@RequestMapping(value = "/urbane/validateLogin", method = RequestMethod.POST)
	public ModelAndView validate(@ModelAttribute("user") SchoolUser user,
			BindingResult result, RedirectAttributes redirectAttributes,
			HttpSession session,
			@RequestParam(value = "next", required = false) String next) {
		// userValidator.validate(user, result);
			//Other other = new Other();
		if (user.getUsername() != null && !user.getUsername().isEmpty()
				&& user.getPassword() != null && !user.getPassword().isEmpty()) {
			ModelAndView modelAndView = new ModelAndView();
			System.out.println("in submit" + user);
			String username = user.getUsername();
			String password = user.getPassword();
			SchoolUser userData = userService.validateUser(username, password);

			if (userData != null) {

				if (userData.getActive() == 1) {
					session.setAttribute("SchoolStudent", userData);
					if (next != null && !next.isEmpty())
						modelAndView.setViewName("redirect:" + next);
					else
						modelAndView.setViewName("redirect:/urbane");
					return modelAndView;
				} else {
					modelAndView.getModel().put("AuthError",
							"Please activate your account before login");
					modelAndView.setViewName("/urbane/login");
					return modelAndView;
				}
			} 
		} else {
			return new ModelAndView("/urbane/login");
		}
		return null;

	}
	
	@RequestMapping(value = "/urbane/validateGoogleLogin", method = RequestMethod.POST)
	public ModelAndView validateGoogleLogin(@RequestParam String username, @RequestParam String school_code,
			@RequestParam String mail, @RequestParam String name, HttpSession session,
			@RequestParam(value = "next", required = false) String next) {

		ModelAndView modelAndView = new ModelAndView();
		String password = "password";
		SchoolUser userData = new SchoolUser();
		userData.setName(name);
		userData.setUsername(username);
		userData.setPassword(password);
		userData.setMail(mail);
		userData.setActive(1);
		userData.setSchool_code(school_code);
		userData.setSocialLogin(1);
		userData.setClient("NAC");
		
		if (userService.isUserExist(username)) {
			SchoolUser userDetails = userService.getStudentDetails(username);
			if(userDetails.getSocialLogin()==1) {
				
				session.setAttribute("SchoolStudent", userDetails);
				System.out.println("User Exist" + username);
				if (next != null && !next.isEmpty())
					modelAndView.setViewName("redirect:" + next);
				else
					modelAndView.setViewName("redirect:/urbane");
					return modelAndView;
			
			} else {	
				modelAndView.addObject("registeredalready", true);
				return new ModelAndView("/urbane/register");
			}
			
		} else {
			
			userService.saveSchoolUser(userData);
			SchoolUser loginuserData = userService.getStudentDetails(username);
			session.setAttribute("SchoolStudent", loginuserData);
			if (next != null && !next.isEmpty())
				modelAndView.setViewName("redirect:" + next);
			else
				modelAndView.setViewName("redirect:/urbane");
				return modelAndView;
		}

	}
	
	@RequestMapping(value = "/urbane/googlelogout", method = RequestMethod.GET)
	public ModelAndView gLogout(HttpSession session) {

		session.removeAttribute("SchoolStudent");
		session.invalidate();
		return new ModelAndView("/urbane/register", "user", new SchoolUser());
	}
	
	/* Signup with mobile number/Otp starts */
	
	@RequestMapping(value = "/urbane/signup", method = RequestMethod.GET)
	public String signup(ModelMap map) {
		return "/urbane/signup";
	}
	
	@ResponseBody
	@RequestMapping(value = "/urbane/verify-otp", method = RequestMethod.POST)
	public ModelAndView sendOTP(@RequestParam String phone, @RequestParam String school_code, HttpSession session) {

		ModelAndView modelAndView = new ModelAndView();
		if (phone != null) {

			if (msbService.isMobileExist(phone)) {
				modelAndView.addObject("phone", true);
				modelAndView.setViewName("/urbane/register");
			} else {
				String mobile = ""+"91"+phone+"";
				System.out.println("mobile: "+mobile);
				Random rand = new Random();
				int otp = rand.nextInt(900000) + 100000;
				
				boolean send = msbService.sendSMS(mobile, otp);
				if (send) {
					modelAndView.addObject("phone", phone);
					modelAndView.addObject("otp", otp);
					modelAndView.addObject("school_code", school_code);
					modelAndView.setViewName("/urbane/verify-otp");
					return modelAndView;
				} else {
					modelAndView.addObject("success", false);
					modelAndView.setViewName("/urbane/register");
					
				}
			}
		} else {
			modelAndView.addObject("phone", null);
			modelAndView.setViewName("/urbane/register");
		}
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/urbane/update-password", method = RequestMethod.POST)
	public ModelAndView sendOTP(@RequestParam String phone, @RequestParam String verify, 
			@RequestParam String otp, @RequestParam String school_code, HttpSession session) {

		ModelAndView modelAndView = new ModelAndView();
		if (verify != null) {

			if (verify.contentEquals(otp)) {
				modelAndView.addObject("phone", phone);
				modelAndView.addObject("school_code", school_code);
				modelAndView.setViewName("/urbane/update-password");
			} else {
				modelAndView.addObject("phone", phone);
				modelAndView.addObject("success", false);
				modelAndView.addObject("otp", otp);
				modelAndView.setViewName("/urbane/verify-otp");
			}
		} else {
			modelAndView.addObject("phone", phone);
			modelAndView.addObject("otp", otp);
			modelAndView.addObject("status", null);
			modelAndView.setViewName("/urbane/verify-otp");
		}
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/urbane/updatePassword", method = RequestMethod.POST)
	public ModelAndView updatePassword(@RequestParam String phone, @RequestParam String password,
			@RequestParam String cpassword, @RequestParam String school_code, HttpSession session) {

		ModelAndView modelAndView = new ModelAndView();
		if (password != null && phone != null && cpassword != null) {

			SchoolUser user = new SchoolUser();
			user.setPhone(phone);
			user.setPassword(password);
			user.setUsername(phone);
			user.setSchool_code(school_code);
			user.setClient("NAC");
			if (password.equalsIgnoreCase(cpassword)) {
				if(msbService.updatePassword(user)) {
					modelAndView.addObject("success", true);
					modelAndView.setViewName("/urbane/login");
				} else {
					modelAndView.addObject("success", false);
					modelAndView.addObject("phone", phone);
					modelAndView.setViewName("/urbane/update-password");
				}
			} else {
				modelAndView.addObject("phone", phone);
				modelAndView.addObject("status", false);
				modelAndView.setViewName("/urbane/update-password");
			}
		} else {
			modelAndView.addObject("phone", phone);
			modelAndView.addObject("status", null);
			modelAndView.setViewName("/urbane/update-password");
		}
		return modelAndView;
	}
	
	@RequestMapping(value = "/urbane/user/profile", method = RequestMethod.GET)
	public ModelAndView getOtherProfile(HttpSession session) {

		SchoolUser user = (SchoolUser) session.getAttribute("SchoolStudent");

		if (user != null) {
			ModelAndView modelAndView = new ModelAndView();
			
			modelAndView.addObject("user", user);
			
			modelAndView.setViewName("/urbane/profile");
			return modelAndView;
		} else
			return new ModelAndView("/urbane/login", "user", new SchoolUser());

	}

	@RequestMapping(value = "/urbane/logout", method = RequestMethod.GET)
	public ModelAndView slogout(HttpSession session) {

		session.removeAttribute("SchoolStudent");
		session.invalidate();
		return new ModelAndView("/urbane/register", "user", new SchoolUser());
	}
	
	@RequestMapping(value = "/urbane/doregister", method = RequestMethod.POST)
	public ModelAndView register(
			@ModelAttribute("user") @Validated({ SaveUser.class }) SchoolUser user,
			BindingResult result, HttpSession session) throws IOException {
		registerValidator.validate(user, result);
		if (!result.hasErrors()) {
			System.out.println("NO ERRORS");
			user.setClient("NAC");
			boolean isStudentSaved = userService.saveSchoolUser(user);
			System.out.println("student saved");
			if (isStudentSaved) {
					return new ModelAndView(
							"redirect:/urbane/register-landing?success=true");
			} else
				return new ModelAndView(
						"redirect:/urbane/register-landing?success=false");
		} else {
			return new ModelAndView("/urbane/register");
		}

	}
	
	@RequestMapping(value = "/urbane/user/tests", method = RequestMethod.GET)
	public ModelAndView getCategoryTests() {
		ModelAndView modelAndView = new ModelAndView();
		List<Quiz> quizList = quizService.getQuizzesForClient("nac");
		modelAndView.addObject("quizList", quizList);
		modelAndView.setViewName("/urbane/user_tests");
	
		return modelAndView;
	}
	
	@RequestMapping(value = "/urbane/user/test/{id}", method = RequestMethod.GET)
	public ModelAndView takeTest(@PathVariable int id, HttpSession session) {
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		//boolean isPremium = isStudentPremium(userData);
		ModelAndView modelAndView = new ModelAndView();
		//int testsCount=quizService.getStudentDayQuizCount(userData.getUsername());
		//System.out.println("testsCount"+testsCount);
		//if (isPremium ||  testsCount< 3) {
			Quiz quiz = quizService.getQuiz(id);
			LinkedHashMap<String, List<String>> quizBuild = MsbUtil.buildQuiz(
					quiz.getQuestions(), quiz.getKeyset());

			/* check whether user taken the test or not */
			boolean isTestTaken = quizService.isStudenTakentest(quiz.getId(),
					userData.getUsername());

			/* get user segment */
			//String user_segment = MsbUtil
					//.getUserSegmentBasedOnClassStudyingForTests(userData
							//.getStandard());

			/* check whether user segment and quiz category is same or not */
			//boolean testAndUserSegmentSame = MsbUtil
					//.isUserSegmentSameAsTestCategory(user_segment,
							//quiz.getCategory());

			//modelAndView.addObject("isUserCategory", testAndUserSegmentSame);
			modelAndView.addObject("isTestTaken", isTestTaken);
			modelAndView.addObject("quizBuild", quizBuild);
			modelAndView.addObject("quiz", quiz);
			modelAndView.setViewName("/urbane/take-test");
		//} else {
			//modelAndView.setViewName("/codingstar/tests/test-count-exceeded");
		//}
		return modelAndView;
	}

	@RequestMapping(value = "/urbane/user/submittest/{id}", method = RequestMethod.POST)
	public String submitTest(@PathVariable int id,
			@RequestParam Map<String, String> paramsMap,
			RedirectAttributes redirectAttributes, HttpSession session) {
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		Quiz quiz = quizService.getQuiz(id);
		int totalQuestionsAttempted = 0;
		int correctAnswers = 0;
		StringBuffer studentAsnwersString = new StringBuffer();
		char[] answers = quiz.getResult().toCharArray();
		// System.out.println("answer string length"+quiz.getResult().length());
		for (int i = 0; i < answers.length; i++) {
			String answer;
			if ((answer = paramsMap.get("qno" + (i + 1))) != null) {
				totalQuestionsAttempted++;
				studentAsnwersString.append(answer);
				if (answer.equals(String.valueOf(answers[i]))) {
					correctAnswers++;
				}
			} else {
				studentAsnwersString.append("X");
			}
		}
		/*
		 * for (Entry<String, String> entry : paramsMap.entrySet()) {
		 * System.out.println(entry.getKey() + "::" + entry.getValue()); }
		 */
		/* To display on test submission jsp page */
		redirectAttributes.addFlashAttribute("correct", correctAnswers);
		redirectAttributes.addFlashAttribute("attempted",
				totalQuestionsAttempted);

		/*
		 * if all answers are correct 5 bonus points other wise 2 points for
		 * each question
		 */
		//int studetnScore = (correctAnswers == quiz.getNoq()) ? ((correctAnswers * 2) + 5)
				//: (correctAnswers * 2);
		int studetnScore = (correctAnswers * 2);

		/* Quiz Score */
		QuizScores quizScores = new QuizScores();
		quizScores.setQuiz_id(quiz.getId());
		quizScores.setUser_name(userData.getUsername());
		quizScores.setAnswers(studentAsnwersString.toString());
		quizScores.setMax_score(quiz.getNoq() * 2);
		quizScores.setScore(studetnScore);

		if (paramsMap.get("isTestTaken").equals("yes")) {
			//quizService.saveQuizScores(quizScores);
			return "redirect:/urbane/user/test-submission?usr="+userData.getUsername()+"&qid="+quiz.getId()+"";
			
		} else if (paramsMap.get("isTestTaken").equals("no")) {
			
			String totalTime = "00:"
					+ String.format("%02d", quiz.getDuration()) + ":00";

			/* Quiz Points */
			QuizPoints quizPoints = new QuizPoints();
			quizPoints.setQuiz_id(quiz.getId());
			quizPoints.setSubmission_date(MsbUtil.getCurrentDate());
			quizPoints.setAnswers(studentAsnwersString.toString());
			quizPoints.setPoints(studetnScore);
			quizPoints.setUser_name(userData.getUsername());
			quizPoints.setCompleted_time(MsbUtil.getSqlTimeDiff(totalTime,
					paramsMap.get("completedTime")));
			quizService.saveQuizScores(quizScores);
			quizService.saveQuizPoints(quizPoints);
			userData.setPoints(userData.getPoints()+studetnScore);
			userService.updateUserPoints(userData.getUsername(), studetnScore);

		}
		
		return "redirect:/urbane/user/test-submission?usr="+userData.getUsername()+"&qid="+quiz.getId()+"";

	}
	
	@RequestMapping(value = "/urbane/user/test-submission", method = RequestMethod.GET)
	public ModelAndView showSchoolTestSubmission(HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("/urbane/submit-test");
		return modelAndView;
	}
	
	@RequestMapping(value = "/urbane/test-result/{id}/{user}", method = RequestMethod.GET)
	public ModelAndView shareTestResult(@PathVariable String id, @PathVariable String user, HttpSession session) {
		//SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		ModelAndView modelAndView = new ModelAndView();
			QuizScores quizScore = quizService.getQuizResult(id, user);
			
			modelAndView.addObject("quizScore", quizScore);
			modelAndView.setViewName("/urbane/testresult");
		
			return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/urbane/save-email", method = RequestMethod.POST)
	public String saveEmail(
		HttpSession session, @RequestParam("mail") String mail) {
		MailSubscribe mailSubscribe = new MailSubscribe();
		if (mail != null) {
			//String mobile = ""+"91"+phone+"";
			//System.out.println("mobile: "+mobile);
			//Random rand = new Random();
			//int otp = rand.nextInt(900000) + 100000;
			//if(miloService.isAlreadySubscribed(mail)) {
				//return "subscribed";
			//} else {
				//mailSubscribe.setEmail(mail);
				//boolean save = miloService.saveEmail(mailSubscribe);
				//if (save) {
					return "success";
				//} else {
					//return "error";
				//}
			//}
		} else {
			return "empty";
		}
		//return null;
	}
	
	@RequestMapping(value = "/urbane/schools", method = RequestMethod.GET)
	public ModelAndView allSchools(HttpSession session) {
		ModelAndView modelAndView=new ModelAndView();
		//String client = "NAC";

		List<School> schools = adminService.getAllSchools();
			
		modelAndView.addObject("schools", schools);
		
		modelAndView.setViewName("/urbane/admin");
		return modelAndView;
		
	}

}
