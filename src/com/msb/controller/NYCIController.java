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

import com.msb.model.Competition;
import com.msb.model.MSTCompetition;
import com.msb.model.MailSubscribe;
import com.msb.model.Quiz;
import com.msb.model.QuizPoints;
import com.msb.model.QuizScores;
import com.msb.model.SchoolUser;
import com.msb.model.SchoolUser.SaveUser;
import com.msb.service.CompetitionService;
import com.msb.service.MSBService;
import com.msb.service.QuizService;
import com.msb.service.SchoolService;
import com.msb.service.SchoolUserService;
import com.msb.util.MsbUtil;
import com.msb.validator.SchoolRegisterValidator;

@Controller
public class NYCIController {
	
	@Autowired
	private ServletContext servletContext;

	@Autowired
	SchoolRegisterValidator registerValidator;
	
	@Autowired
	private SchoolUserService userService;
	
	@Autowired
	private CompetitionService competitionService;
	
	@Autowired
	private MSBService msbService;
	
	@Autowired
	private SchoolService schoolService;
	
	@Autowired
	private QuizService quizService;

	@RequestMapping(value = "/nyci", method = RequestMethod.GET)
	public String home(ModelMap map) {
		return "/nyci/index";
	}
	
	@RequestMapping(value = "/nyci/index", method = RequestMethod.GET)
	public String index(ModelMap map) {
		return "/nyci/index";
	}
	
	@RequestMapping(value = "/nyci/studenthof", method = RequestMethod.GET)
	public String studentHOF(ModelMap map) {
		return "/nyci/hof";
	}
	
	@RequestMapping(value = "/nyci/schoolhof", method = RequestMethod.GET)
	public String schoolHOF(ModelMap map) {
		return "/nyci/shof";
	}
	
	@RequestMapping(value = "/nyci/register", method = RequestMethod.GET)
	public ModelAndView register(HttpSession session) {
		//SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null)
			return new ModelAndView("/nyci/index");
		else
			return new ModelAndView("/nyci/register", "user", new SchoolUser());
	}

	@RequestMapping(value = "/nyci/register-landing", method = RequestMethod.GET)
	public ModelAndView registerSuccess() {
		return new ModelAndView("/nyci/register-landing");
	}

	@RequestMapping(value = "/nyci/login", method = RequestMethod.GET)
	public ModelAndView login(HttpSession session) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		//Other otherData = (Other) session.getAttribute("Other");
		if (userData != null)
			return new ModelAndView("/nyci/index");
		else
			return new ModelAndView("/nyci/login", "user", new SchoolUser());
	}
	
	@RequestMapping(value = "/nyci/validateLogin", method = RequestMethod.GET)
	public ModelAndView validateLogin(HttpSession session) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		//Other otherData = (Other) session.getAttribute("Other");
		if (userData != null)
			return new ModelAndView("/nyci/index");
		else
			return new ModelAndView("/nyci/login", "user", new SchoolUser());

	}

	@RequestMapping(value = "/nyci/validateLogin", method = RequestMethod.POST)
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
						modelAndView.setViewName("redirect:/nyci");
					return modelAndView;
				} else {
					modelAndView.getModel().put("AuthError",
							"Please activate your account before login");
					modelAndView.setViewName("/nyci/login");
					return modelAndView;
				}
			} 
		} else {
			return new ModelAndView("/nyci/login");
		}
		return null;

	}
	
	@RequestMapping(value = "/nyci/validateGoogleLogin", method = RequestMethod.POST)
	public ModelAndView validateGoogleLogin(@RequestParam String username,
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
		userData.setSocialLogin(1);
		userData.setClient("CODINGSTAR");
		
		if (userService.isUserExist(username)) {
			SchoolUser userDetails = userService.getStudentDetails(username);
			if(userDetails.getSocialLogin()==1) {
				
				session.setAttribute("SchoolStudent", userDetails);
				System.out.println("User Exist" + username);
				if (next != null && !next.isEmpty())
					modelAndView.setViewName("redirect:" + next);
				else
					modelAndView.setViewName("redirect:/nyci");
					return modelAndView;
			
			} else {	
				modelAndView.addObject("registeredalready", true);
				return new ModelAndView("/nyci/login");
			}
			
		} else {
			
			userService.saveSchoolUser(userData);
			SchoolUser loginuserData = userService.getStudentDetails(username);
			session.setAttribute("SchoolStudent", loginuserData);
			if (next != null && !next.isEmpty())
				modelAndView.setViewName("redirect:" + next);
			else
				modelAndView.setViewName("redirect:/nyci");
				return modelAndView;
		}

	}
	
	@RequestMapping(value = "/nyci/googlelogout", method = RequestMethod.GET)
	public ModelAndView gLogout(HttpSession session) {

		session.removeAttribute("SchoolStudent");
		session.invalidate();
		return new ModelAndView("/nyci/login", "user", new SchoolUser());
	}
	
	/* Signup with mobile number/Otp starts */
	
	@RequestMapping(value = "/nyci/signup", method = RequestMethod.GET)
	public String signup(ModelMap map) {
		return "/nyci/signup";
	}
	
	@ResponseBody
	@RequestMapping(value = "/nyci/verify-otp", method = RequestMethod.POST)
	public ModelAndView sendOTP(@RequestParam String phone, HttpSession session) {

		ModelAndView modelAndView = new ModelAndView();
		if (phone != null) {

			if (msbService.isMobileExist(phone)) {
				modelAndView.addObject("phone", true);
				modelAndView.setViewName("/nyci/signup");
			} else {
				String mobile = ""+"91"+phone+"";
				System.out.println("mobile: "+mobile);
				Random rand = new Random();
				int otp = rand.nextInt(900000) + 100000;
				
				boolean send = msbService.sendSMS(mobile, otp);
				if (send) {
					modelAndView.addObject("phone", phone);
					modelAndView.addObject("otp", otp);
					modelAndView.setViewName("/nyci/verify-otp");
					return modelAndView;
				} else {
					modelAndView.addObject("success", false);
					modelAndView.setViewName("/nyci/signup");
					
				}
			}
		} else {
			modelAndView.addObject("phone", null);
			modelAndView.setViewName("/nyci/signup");
		}
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/nyci/update-password", method = RequestMethod.POST)
	public ModelAndView sendOTP(@RequestParam String phone, @RequestParam String verify, 
			@RequestParam String otp, HttpSession session) {

		ModelAndView modelAndView = new ModelAndView();
		if (verify != null) {

			if (verify.contentEquals(otp)) {
				modelAndView.addObject("phone", phone);
				modelAndView.setViewName("/nyci/update-password");
			} else {
				modelAndView.addObject("phone", phone);
				modelAndView.addObject("success", false);
				modelAndView.addObject("otp", otp);
				modelAndView.setViewName("/nyci/verify-otp");
			}
		} else {
			modelAndView.addObject("phone", phone);
			modelAndView.addObject("otp", otp);
			modelAndView.addObject("status", null);
			modelAndView.setViewName("/nyci/verify-otp");
		}
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/nyci/updatePassword", method = RequestMethod.POST)
	public ModelAndView updatePassword(@RequestParam String phone, @RequestParam String password,
			@RequestParam String cpassword, HttpSession session) {

		ModelAndView modelAndView = new ModelAndView();
		if (password != null && phone != null && cpassword != null) {

			SchoolUser user = new SchoolUser();
			user.setPhone(phone);
			user.setPassword(password);
			user.setUsername(phone);
			user.setClient("CODINGSTAR");
			if (password.equalsIgnoreCase(cpassword)) {
				if(msbService.updatePassword(user)) {
					modelAndView.addObject("success", true);
					modelAndView.setViewName("/nyci/login");
				} else {
					modelAndView.addObject("success", false);
					modelAndView.addObject("phone", phone);
					modelAndView.setViewName("/nyci/update-password");
				}
			} else {
				modelAndView.addObject("phone", phone);
				modelAndView.addObject("status", false);
				modelAndView.setViewName("/nyci/update-password");
			}
		} else {
			modelAndView.addObject("phone", phone);
			modelAndView.addObject("status", null);
			modelAndView.setViewName("/nyci/update-password");
		}
		return modelAndView;
	}
	
	@RequestMapping(value = "/nyci/user/profile", method = RequestMethod.GET)
	public ModelAndView getOtherProfile(HttpSession session) {

		SchoolUser user = (SchoolUser) session.getAttribute("SchoolStudent");

		if (user != null) {
			ModelAndView modelAndView = new ModelAndView();
			
			modelAndView.addObject("user", user);
			
			modelAndView.setViewName("/nyci/profile");
			return modelAndView;
		} else
			return new ModelAndView("/nyci/login", "user", new SchoolUser());

	}

	@RequestMapping(value = "/nyci/logout", method = RequestMethod.GET)
	public ModelAndView slogout(HttpSession session) {

		session.removeAttribute("SchoolStudent");
		session.invalidate();
		return new ModelAndView("/nyci/login", "user", new SchoolUser());
	}
	
	@RequestMapping(value = "/nyci/doregister", method = RequestMethod.POST)
	public ModelAndView register(
			@ModelAttribute("user") @Validated({ SaveUser.class }) SchoolUser user,
			BindingResult result, HttpSession session) throws IOException {
		registerValidator.validate(user, result);
		if (!result.hasErrors()) {
			System.out.println("NO ERRORS");
			user.setClient("NYCI");
			boolean isStudentSaved = userService.saveSchoolUser(user);
			System.out.println("student saved");
			if (isStudentSaved) {
					return new ModelAndView(
							"redirect:/nyci/register-landing?success=true");
			} else
				return new ModelAndView(
						"redirect:/nyci/register-landing?success=false");
		} else {
			return new ModelAndView("/nyci/register");
		}

	}
	
	
	
	@RequestMapping(value = "/nyci/user/upload_drawing/{id}", method = {
			RequestMethod.POST, RequestMethod.GET })
	public ModelAndView singingSubmissionForm(
			@PathVariable("id") String id, HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		Competition competition = competitionService
				.getCompetitionDetails(Integer.parseInt(id));
		if (competition != null) {
			SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
			//Other otherData = (Other) session.getAttribute("Other");
			if(userData!=null) {
			Integer user_total_competition_submissions = competitionService
					.getStudentTotalMSTSubmissionsOfACompetition(
							userData.getUsername(),
							competition.getComp_id());
			if (user_total_competition_submissions >= 3)
				modelAndView.addObject("submissions_exceeded", true);
			else
				modelAndView.addObject("submissions_exceeded", false);
			} 
			modelAndView.addObject("competition", competition);
			modelAndView.setViewName("/nyci/drawing");
			return modelAndView;
		} else
			return new ModelAndView("redirect:/nyci");
		//modelAndView.setViewName("/singer/upload_singing");
		//return modelAndView;

	}
	
	
	
	/*
	 * @RequestMapping(value = "/nyci/user/drawing/{id}", method = {
	 * RequestMethod.POST, RequestMethod.GET }) public ModelAndView
	 * mstCompetitionsSubmissionForm(
	 * 
	 * @PathVariable("id") String id,
	 * 
	 * @PathVariable("type") String type, HttpSession session) { ModelAndView
	 * modelAndView = new ModelAndView(); Competition competition =
	 * competitionService .getCompetitionDetails(Integer.parseInt(id)); if
	 * (competition != null) { SchoolUser userData = (SchoolUser)
	 * session.getAttribute("SchoolStudent");
	 * //competitionService.updateCompetitionVisits(competition); Integer
	 * user_total_competition_submissions = competitionService
	 * .getStudentTotalMSTSubmissionsOfACompetition( userData.getUsername(),
	 * competition.getComp_id()); if (user_total_competition_submissions > 2)
	 * modelAndView.addObject("submissions_exceeded", true); else
	 * modelAndView.addObject("submissions_exceeded", false);
	 * modelAndView.addObject("type", type); modelAndView.addObject("competition",
	 * competition); modelAndView.setViewName("/nyci/drawing"); return modelAndView;
	 * } else return new ModelAndView("redirect:/nyci"); }
	 */
	
	@RequestMapping(value = "/nyci/user/submit-drawing", method = RequestMethod.POST)
	public ModelAndView submitSinging(
			@ModelAttribute("mst") MSTCompetition mst,
			HttpSession session,
			@RequestParam(value = "mst_video", required = true) MultipartFile mst_video)
			throws IOException {
		
			SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");

			mst.setUser_name(userData.getUsername());

			String filename = userData.getUsername() + "_"
					+ competitionService.getMstMaxID() + "."
					+ mst_video.getOriginalFilename().split("\\.")[1];
			mst.setSubmission_file_name(filename);
			Integer id = competitionService.saveMSTCompetition(mst);

			if (id != 0) {
				uploadFile(filename, mst_video, mst.getSubmission_type());
				userData.setPoints(userData.getPoints()+20);
				userService.updateUserDetails(userData);
				return new ModelAndView(
						"redirect:/nyci/user/drawing_saved?success=true&id="
								+ id);
			} else
				return new ModelAndView(
						"redirect:/nyci/user/drawing_saved?success=false");
	}
	
	@RequestMapping(value = "/nyci/user/drawing_saved", method = RequestMethod.GET)
	public String paintingCompetitionSaved() {
		return "/nyci/drawing_saved";
	}
	
	private void uploadFile(String filename, MultipartFile image,
			String competition) {
		File image_path = new File(servletContext.getRealPath("/")
				+ "user_images/Comp_Sub/NYCI/" + filename);
		image_path.getParentFile().mkdirs();
		try {
			FileUtils.writeByteArrayToFile(image_path, image.getBytes());

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	@RequestMapping(value = "/nyci/view-drawing/{id}", method = RequestMethod.GET)
	public ModelAndView mstCompetitionEntryView(
			@PathVariable("id") String id) {
		ModelAndView modelAndView = new ModelAndView();
		MSTCompetition entry = competitionService
				.getMSTCompetitionSubmission(Integer.parseInt(id));
		
		//SchoolUser entryuser = otherService.getStudentDetails(entry.getUser_name());
		//modelAndView.addObject("entryuser", entryuser);
		modelAndView.addObject("entry", entry);
		
		int nextEntry=competitionService.getNextOrPreviousEntryId(entry.getId(), entry.getSubmission_type(), true, false);
		int previousEntry=competitionService.getNextOrPreviousEntryId(entry.getId(), entry.getSubmission_type(), false, true);	
		if(nextEntry!=0)
		modelAndView.addObject("nextEntry", nextEntry);
		if(previousEntry!=0)
		modelAndView.addObject("previousEntry", previousEntry);
		competitionService.saveEntryVisit(entry.getId());
		
		modelAndView.setViewName("/nyci/view_drawing");
		return modelAndView;

	}
	
	@RequestMapping(value = "/nyci/user/tests", method = RequestMethod.GET)
	public ModelAndView getCategoryTests() {
		ModelAndView modelAndView = new ModelAndView();
		List<Quiz> quizList = quizService.getQuizzesForClient("codingstar");
		modelAndView.addObject("quizList", quizList);
		modelAndView.setViewName("/nyci/user_tests");
	
		return modelAndView;
	}
	
	@RequestMapping(value = "/nyci/user/test/{id}", method = RequestMethod.GET)
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
			modelAndView.setViewName("/nyci/take-test");
		//} else {
			//modelAndView.setViewName("/codingstar/tests/test-count-exceeded");
		//}
		return modelAndView;
	}

	@RequestMapping(value = "/nyci/user/submittest/{id}", method = RequestMethod.POST)
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
		int studetnScore = (correctAnswers == quiz.getNoq()) ? ((correctAnswers * 2) + 5)
				: (correctAnswers * 2);

		/* Quiz Score */
		QuizScores quizScores = new QuizScores();
		quizScores.setQuiz_id(quiz.getId());
		quizScores.setUser_name(userData.getUsername());
		quizScores.setAnswers(studentAsnwersString.toString());
		quizScores.setMax_score(quiz.getNoq() * 2);
		quizScores.setScore(studetnScore);

		if (paramsMap.get("isTestTaken").equals("yes")) {
			quizService.saveQuizScores(quizScores);
		} else if (paramsMap.get("isUserCategory").equals("no")) {
			quizService.saveQuizScores(quizScores);
		} else if (paramsMap.get("isTestTaken").equals("no")
				&& paramsMap.get("isUserCategory").equals("yes")) {
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
		
		//if(!isStudentPremium(userData)){	
			//quizService.updateStudentDayQuizCount(userData.getUsername());
			//System.out.println("Update Day test count");
		//}
		return "redirect:/nyci/user/test-submission";

	}
	
	@RequestMapping(value = "/nyci/user/test-submission", method = RequestMethod.GET)
	public ModelAndView showSchoolTestSubmission(HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("/nyci/submit-test");
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/nyci/save-email", method = RequestMethod.POST)
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
	
	@RequestMapping(value = "/nyci/entries/{limit}/{offset}", method = RequestMethod.GET)
	public ModelAndView mstEntries(@PathVariable String type, @PathVariable int limit, 
			@PathVariable int offset) {
		ModelAndView modelAndView = new ModelAndView();
		String comp_by = "NYCI";

		List<MSTCompetition> entries = competitionService.getAllMSTEntriesByClient("painting", comp_by, limit, offset);

			modelAndView.addObject("entries", entries);
			modelAndView.addObject("type", type);
			modelAndView.addObject("limit", limit);
			modelAndView.addObject("offset", offset);
		
		modelAndView.setViewName("/nyci/entries");
		return modelAndView;
	}

}
