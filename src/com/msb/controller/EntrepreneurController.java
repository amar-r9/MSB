package com.msb.controller;

import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.msb.model.BlogArticle;
import com.msb.model.Enquiry;
import com.msb.model.Other;
import com.msb.model.Quiz;
import com.msb.model.QuizGenre;
import com.msb.model.QuizPoints;
import com.msb.model.QuizScores;
import com.msb.model.SchoolUser;
import com.msb.model.SchoolUser.SaveUser;
import com.msb.service.ArticleService;
import com.msb.service.EntrepreneurService;
import com.msb.service.OtherService;
import com.msb.service.QuizService;
import com.msb.service.SchoolUserService;
import com.msb.util.MsbUtil;
import com.msb.validator.RegisterValidator;

@Controller
public class EntrepreneurController {
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private ArticleService articleService;
	
	@Autowired
	private EntrepreneurService entrepreneurService;

	@Autowired
	RegisterValidator registerValidator;
	
	@Autowired
	private SchoolUserService userService;
	
	@Autowired
	private OtherService otherService;
	
	@Autowired
	private QuizService quizService;

	
	@RequestMapping(value = "/entrepreneur", method = RequestMethod.GET)
	public String entrepreneur(ModelMap map) {
		return "/entrepreneur/index";
	}
	
	@RequestMapping(value = "/entrepreneur/index", method = RequestMethod.GET)
	public String entrepreneurIndex(ModelMap map) {
		return "/entrepreneur/index";
	}
	
	@RequestMapping(value = "/entrepreneur/register", method = RequestMethod.GET)
	public ModelAndView register(HttpSession session) {
		//SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		Other otherData = (Other) session.getAttribute("Other");
		if (otherData != null)
			return new ModelAndView("/entrepreneur/index");
		else
			return new ModelAndView("/entrepreneur/register", "user", new Other());
	}

	@RequestMapping(value = "/entrepreneur/register-landing", method = RequestMethod.GET)
	public ModelAndView registerSuccess() {

		return new ModelAndView("/entrepreneur/register-landing");

	}
	
	@RequestMapping(value = "/entrepreneur/gift-register", method = RequestMethod.GET)
	public ModelAndView giftRegister() {

		return new ModelAndView("/entrepreneur/gift-register");

	}
	
	@RequestMapping(value = "/entrepreneur/enquiry", method = RequestMethod.GET)
	public ModelAndView enquiry() {

		return new ModelAndView("/entrepreneur/enquiry");

	}
	
	@ResponseBody
	@RequestMapping(value = "/entrepreneur/enquiry-submit", method = RequestMethod.POST)
	public String submitEnquiry(@ModelAttribute Enquiry enquiry) {
		
			if (entrepreneurService.saveEnquiry(enquiry)) {
					return "submitted";
			} else {
			return "errorsubmitting";
			}
	}
	
	
	
	@RequestMapping(value = "/entrepreneur/cpreneur", method = RequestMethod.GET)
	public ModelAndView cPreneur() {

		return new ModelAndView("/entrepreneur/cpreneur");

	}
	
	@RequestMapping(value = "/entrepreneur/spreneur", method = RequestMethod.GET)
	public ModelAndView sPreneur() {

		return new ModelAndView("/entrepreneur/spreneur");

	}

	@RequestMapping(value = "/entrepreneur/login", method = RequestMethod.GET)
	public ModelAndView login(HttpSession session) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		Other otherData = (Other) session.getAttribute("Other");
		if (userData != null || otherData != null)
			return new ModelAndView("/entrepreneur/index");
		else
			return new ModelAndView("/entrepreneur/login", "user", new Other());
	}
	
	@RequestMapping(value = "/entrepreneur/validateLogin", method = RequestMethod.GET)
	public ModelAndView validateLogin(HttpSession session) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		Other otherData = (Other) session.getAttribute("Other");
		if (userData != null || otherData != null)
			return new ModelAndView("/entrepreneur/index");
		else
			return new ModelAndView("/entrepreneur/login", "user", new SchoolUser());

	}

	@RequestMapping(value = "/entrepreneur/validateLogin", method = RequestMethod.POST)
	public ModelAndView validate(@ModelAttribute("user") SchoolUser user, //@ModelAttribute("user") Other other,
			BindingResult result, RedirectAttributes redirectAttributes,
			HttpSession session,
			@RequestParam(value = "next", required = false) String next) {
		// userValidator.validate(user, result);
			Other other = new Other();
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
						modelAndView.setViewName("redirect:/entrepreneur");
					return modelAndView;
				} else {
					modelAndView.getModel().put("AuthError",
							"Please activate your account before login");
					modelAndView.setViewName("/entrepreneur/login");
					return modelAndView;
				}
			} else {
				Other otherData = otherService.validateUser(username, password);
				
				  if (otherData != null) {
				  
				  if (otherData.getActive() == 1) { session.setAttribute("Other", otherData);
				  if (next != null && !next.isEmpty()) modelAndView.setViewName("redirect:" +
				  next); else modelAndView.setViewName("redirect:/entrepreneur"); return
				  modelAndView; } else { modelAndView.getModel().put("AuthError",
				  "Please activate your account before login");
				  modelAndView.setViewName("/entrepreneur/login"); 
				  return modelAndView; 
				  } 
			}
				 
				modelAndView.getModel().put("AuthError",
						"Invalid UserName / Password");
				modelAndView.setViewName("/entrepreneur/login");
				return modelAndView;
			}
		} else {
			return new ModelAndView("/entrepreneur/login");
		}

	}

	@RequestMapping(value = "/entrepreneur/slogout", method = RequestMethod.GET)
	public ModelAndView slogout(HttpSession session) {

		session.removeAttribute("SchoolStudent");
		session.invalidate();
		return new ModelAndView("/entrepreneur/login", "user", new SchoolUser());
	}
	
	@RequestMapping(value = "/entrepreneur/ologout", method = RequestMethod.GET)
	public ModelAndView ologout(HttpSession session) {

		session.removeAttribute("Other");
		session.invalidate();
		return new ModelAndView("/entrepreneur/login", "user", new Other());
	}
	
	@RequestMapping(value = "/entrepreneur/doregister", method = RequestMethod.POST)
	public ModelAndView register(
			@ModelAttribute("user") @Validated({ SaveUser.class }) Other other,
			BindingResult result, HttpSession session) throws IOException {
		registerValidator.validate(other, result);
		if (!result.hasErrors()) {
			System.out.println("NO ERRORS");
			boolean isStudentSaved = otherService.saveOther(other);
			System.out.println("student saved");
			if (isStudentSaved) {
					return new ModelAndView(
							"redirect:/entrepreneur/register-landing?success=true");
			} else
				return new ModelAndView(
						"redirect:/entrepreneur/register-landing?success=false");
		} else {
			return new ModelAndView("/entrepreneur/register");
		}

	}
	
	@RequestMapping(value="/entrepreneur/user/blog",method=RequestMethod.GET)
	public ModelAndView showUserArticles(HttpSession session){
		ModelAndView modelAndView=new ModelAndView();
		
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		Other otherData = (Other) session.getAttribute("Other");
		if (userData != null) {
			int isUserPremium = userData.getPremium();
			if(isUserPremium==1) {
				modelAndView.addObject("isPremium", true);
			} else {
				modelAndView.addObject("isPremium", false);
			}
		} else if(otherData != null) {
			int isUserPremium = otherData.getPremium();
			if(isUserPremium==1) {
				modelAndView.addObject("isPremium", true);
			} else {
				modelAndView.addObject("isPremium", false);
			}
		}
			
		List<BlogArticle> articles=articleService.getUserBlogArtciles("fec", 10, 0);
		modelAndView.addObject("articles", articles);
		//List<BlogArticle> recentArticles=articleService.getRecentBlogArtciles(5);
		//modelAndView.addObject("recentArticles", recentArticles);
		//List<String> categories=articleService.getBlogArticleCategoryList();
		//modelAndView.addObject("categories", categories);
		modelAndView.setViewName("/entrepreneur/blog");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/entrepreneur/user/article/{id}",method=RequestMethod.GET)
	public ModelAndView showFullArticle(@PathVariable int id, HttpSession session){
		ModelAndView modelAndView=new ModelAndView();
		
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		Other otherData = (Other) session.getAttribute("Other");
		if (userData != null) {
			int isUserPremium = userData.getPremium();
			if(isUserPremium==1) {
				modelAndView.addObject("isPremium", true);
			} else {
				modelAndView.addObject("isPremium", false);
			}
		} else if(otherData != null) {
			int isUserPremium = otherData.getPremium();
			if(isUserPremium==1) {
				modelAndView.addObject("isPremium", true);
			} else {
				modelAndView.addObject("isPremium", false);
			}
		}
			
		BlogArticle article=articleService.getBlogArticle(id);
		modelAndView.addObject("article", article);
		modelAndView.setViewName("/entrepreneur/article");
		int nextArticle=articleService.getNextOrPreviousBlogArticleCode(article.getArticle_category(),article.getArticle_id(), true, false);
		int previousArticle=articleService.getNextOrPreviousBlogArticleCode(article.getArticle_category(),article.getArticle_id(), false, true);	
		if(nextArticle!=0)
		modelAndView.addObject("nextArticle", nextArticle);
		if(previousArticle!=0)
		modelAndView.addObject("previousArticle", previousArticle);
		modelAndView.setViewName("/entrepreneur/article");
		return modelAndView;
	}
	
	/* test controller */
	
	@RequestMapping(value = "/entrepreneur/user/taketest/{id}", method = RequestMethod.GET)
	public ModelAndView takeSchoolTest(@PathVariable int id, HttpSession session) {
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		Other otherData = (Other) session.getAttribute("Other");
		ModelAndView modelAndView = new ModelAndView();
		
		Quiz quiz = quizService.getQuiz(id);
		LinkedHashMap<String, List<String>> quizBuild = MsbUtil.buildQuiz(
			quiz.getQuestions(), quiz.getKeyset());
		
		String username = null;
		if (userData != null) {
			username = userData.getUsername();
		} else if(otherData != null) {
			username = otherData.getUsername();
		}
		
		boolean isTestTaken = quizService.isStudenTakentest(quiz.getId(),
				username);

			modelAndView.addObject("isTestTaken", isTestTaken);
			modelAndView.addObject("quizBuild", quizBuild);
			modelAndView.addObject("quiz", quiz);
			modelAndView.setViewName("/entrepreneur/tests/take-test");
		
		return modelAndView;
	}

	@RequestMapping(value = "/entrepreneur/user/submittest/{id}", method = RequestMethod.POST)
	public String submitSchoolTest(@PathVariable int id,
			@RequestParam Map<String, String> paramsMap,
			RedirectAttributes redirectAttributes, HttpSession session) {
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		Other otherData = (Other) session.getAttribute("Other");
		
		String username = null;
		if (userData != null) {
			username = userData.getUsername();
		} else if(otherData != null) {
			username = otherData.getUsername();
		}
		
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
		redirectAttributes.addFlashAttribute("correct", correctAnswers);
		redirectAttributes.addFlashAttribute("attempted",
				totalQuestionsAttempted);

		int studetnScore = (correctAnswers == quiz.getNoq()) ? ((correctAnswers * 2) + 5)
				: (correctAnswers * 2);

		QuizScores quizScores = new QuizScores();
		quizScores.setQuiz_id(quiz.getId());
		quizScores.setUser_name(username);
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
			quizPoints.setUser_name(username);
			quizPoints.setCompleted_time(MsbUtil.getSqlTimeDiff(totalTime,
					paramsMap.get("completedTime")));
			quizService.saveQuizScores(quizScores);
			quizService.saveQuizPoints(quizPoints);
			userData.setPoints(userData.getPoints()+studetnScore);
			userService.updateUserPoints(username, studetnScore);
			

		}
		return "redirect:/entrepreneur/user/test-submission";

	}
	
	@RequestMapping(value = "/entrepreneur/user/test-submission", method = RequestMethod.GET)
	public ModelAndView showNTestSubmission(HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("/entrepreneur/tests/submit-test");
		return modelAndView;
	}
	
}
