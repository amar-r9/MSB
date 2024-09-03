package com.msb.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Scanner;
import java.util.Map.Entry;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.FileUtils;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.msb.bean.TopSchoolsBean;
import com.msb.model.Attendance;
import com.msb.model.Competition;
import com.msb.model.CompetitionText;
import com.msb.model.FanTable;
import com.msb.model.MILOSubmission;
import com.msb.model.MSTCompetition;
import com.msb.model.MailSubscribe;
import com.msb.model.MiloPoints;
import com.msb.model.MiloSelfie;
import com.msb.model.Other;
import com.msb.model.Quiz;
import com.msb.model.QuizPoints;
import com.msb.model.QuizScores;
import com.msb.model.School;
import com.msb.model.SchoolUser;
import com.msb.model.UploadATalent;
import com.msb.model.UserLikeValidation;
import com.msb.model.SchoolUser.SaveUser;
import com.msb.model.MiloSession;
import com.msb.service.AdminService;
import com.msb.service.CompetitionService;
import com.msb.service.MSBService;
import com.msb.service.MiloService;
import com.msb.service.OtherService;
import com.msb.service.QuizService;
import com.msb.service.SchoolUserService;
import com.msb.util.MsbUtil;
import com.msb.validator.SchoolRegisterValidator;
import com.restfb.Parameter;

@Controller
public class MiloHomeController {
	
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
	private MiloService miloService;
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private CompetitionService competitionService;
	
	@Autowired
	private QuizService quizService;

	@RequestMapping(value = "/milo", method = RequestMethod.GET)
	public String home(ModelMap map) {
		return "/milo/index";
	}
	
	@RequestMapping(value = "/milo/index", method = RequestMethod.GET)
	public String index(ModelMap map) {
		return "/milo/index";
	}
	
	@RequestMapping(value = "/milo/faq", method = RequestMethod.GET)
	public String faq(ModelMap map) {
		return "/milo/faq";
	}
	
	@RequestMapping(value = "/milo/termsandconditions", method = RequestMethod.GET)
	public String termsAndConditions(ModelMap map) {
		return "/milo/tandc";
	}
	
	@RequestMapping(value = "/milo/contactus", method = RequestMethod.GET)
	public String contactUs(ModelMap map) {
		return "/milo/contactus";
	}
	
	@RequestMapping(value = "/milo/privacy", method = RequestMethod.GET)
	public String privacy(ModelMap map) {
		return "/milo/privacy";
	}
	
	@RequestMapping(value = "/milo/anju", method = RequestMethod.GET)
	public String anju(ModelMap map) {
		return "/milo/anju";
	}
	
	@RequestMapping(value = "/milo/Rushab", method = RequestMethod.GET)
	public String rushab(ModelMap map) {
		return "/milo/rushab";
	}
	
	@RequestMapping(value = "/milo/timtimsharma", method = RequestMethod.GET)
	public String timtimsharma(ModelMap map) {
		return "/milo/timtimsharma";
	}
	
	@RequestMapping(value = "/milo/tutorial", method = RequestMethod.GET)
	public String tutorial(ModelMap map) {
		return "/milo/tutorial";
	}
	
	@RequestMapping(value = "/milo/nourishing", method = RequestMethod.GET)
	public String nourishing(ModelMap map) {
		return "/milo/nourishing";
	}
	
	@RequestMapping(value = "/milo/milostory", method = RequestMethod.GET)
	public String miloStory(ModelMap map) {
		return "/milo/milostory";
	}
	
	@RequestMapping(value = "/milo/index1", method = RequestMethod.GET)
	public String index1(ModelMap map) {
		return "/milo/index1";
	}
	
	@RequestMapping(value = "/milo/user/reportcard", method = RequestMethod.GET)
	public String reportCard(ModelMap map) {
		return "/milo/reportcard";
	}
	
	@RequestMapping(value = "/milo/user/profile", method = RequestMethod.GET)
	public ModelAndView getOtherProfile(HttpSession session) {

		SchoolUser user = (SchoolUser) session.getAttribute("SchoolStudent");

		if (user != null) {
			ModelAndView modelAndView = new ModelAndView();
			
			modelAndView.addObject("user", user);
			
			modelAndView.setViewName("/milo/profile");
			return modelAndView;
		} else
			return new ModelAndView("/milo/login", "user", new SchoolUser());

	}
	
	@RequestMapping(value = "/milo/fb_login", method = RequestMethod.GET)
	public String fbLogin() {
		return "/milo/fb_login";
	}
	
	@RequestMapping(value = "/milo/studenthof", method = RequestMethod.GET)
	public ModelAndView studentHOF(ModelMap map) {
		String client = "MILO";
		ModelAndView modelAndView=new ModelAndView();
		List<MiloPoints> topstudents = adminService.getTopStudents(client);
		modelAndView.addObject("topstudents", topstudents);
		List<TopSchoolsBean> topSchools = adminService.getTopSchoolsList(client);
		modelAndView.addObject("topSchools", topSchools);
		modelAndView.setViewName("/milo/hof");
		return modelAndView;
	}
	
	@RequestMapping(value = "/milo/schoolhof", method = RequestMethod.GET)
	public String schoolHOF(ModelMap map) {
		return "/milo/shof";
	}
	
	@RequestMapping(value = "/milo/jointhelive", method = RequestMethod.GET)
	public String joinTheLive(ModelMap map) {
		return "/milo/jointhelive";
	}
	
	@RequestMapping(value = "/milo/homeground", method = RequestMethod.GET)
	public String homeground(ModelMap map) {
		return "/milo/homeground";
	}
	
	@RequestMapping(value = "/milo/nidjam", method = RequestMethod.GET)
	public String nidjam(ModelMap map) {
		return "/milo/nidjam";
	}
	
	@RequestMapping(value = "/milo/nestle", method = RequestMethod.GET)
	public String nestle(ModelMap map) {
		return "/milo/nestle";
	}
	
	@RequestMapping(value = "/milo/afi", method = RequestMethod.GET)
	public String afi(ModelMap map) {
		return "/milo/afi";
	}
	
	@RequestMapping(value = "/milo/allsessions", method = RequestMethod.GET)
	public ModelAndView allSessions(HttpSession session) {
		ModelAndView modelAndView=new ModelAndView();

		List<MiloSession> sessions = adminService.getAllSessions();
			
		modelAndView.addObject("sessions", sessions);
		
		modelAndView.setViewName("/milo/sessions");
		return modelAndView;
		
	}
	
	@RequestMapping(value = "/milo/user/session/{id}", method = RequestMethod.GET)
	public ModelAndView viewSession(@PathVariable("id") int id, HttpSession session) {
		
		ModelAndView modelAndView = new ModelAndView();
		MiloSession sessionDetails = miloService.getMiloSessionDetails(id);
		
		if (sessionDetails != null) {
			//SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
			//Other otherData = (Other) session.getAttribute("Other") 
			modelAndView.addObject("sessionDetails", sessionDetails);
			modelAndView.setViewName("/milo/session");
			return modelAndView;
		} else {
			modelAndView.addObject("sessionDetails", null);
			modelAndView.setViewName("/milo/session");
			return modelAndView;
		}
	}
	
	@RequestMapping(value = "/milo/registerschool", method = RequestMethod.GET)
	public String registerSchool(ModelMap map) {
		return "/milo/sregister";
	}
	
	@RequestMapping(value = "/milo/user/uploadvideo", method = RequestMethod.GET)
	public String uploadVideo(ModelMap map) {
		return "/milo/upload";
	}
	
	@RequestMapping(value = "/milo/user/dashboard", method = RequestMethod.GET)
	public ModelAndView dashboard(HttpSession session) {

		SchoolUser user = (SchoolUser) session.getAttribute("SchoolStudent");
		Scanner sc = new Scanner(System.in);
		if (user != null) {
			ModelAndView modelAndView = new ModelAndView();
			int attendedSessions = miloService.getNoOfSessionsAttended(user.getUsername());
			modelAndView.addObject("attendedSessions", attendedSessions);
			int noOfUploads = miloService.getNoOfUploads(user.getUsername());
			int pointsScored = attendedSessions*20; 
			float remaining = 12-attendedSessions;
			float attendPerc = (float)(((float)attendedSessions / 12) * 100);
			float uploadPerc = (float)(((float)noOfUploads / 12) * 100);
			modelAndView.addObject("attendPerc", attendPerc);
			modelAndView.addObject("uploadPerc", uploadPerc);
			
			List<MiloSession> sessions = adminService.getAllSessions();
			modelAndView.addObject("sessions", sessions);
			
			modelAndView.addObject("remaining", remaining);
			modelAndView.addObject("pointsScored", pointsScored);
			modelAndView.addObject("user", user);
			modelAndView.addObject("noOfUploads", noOfUploads);
			
			modelAndView.setViewName("/milo/dashboard");
			return modelAndView;
		} else
			return new ModelAndView("/milo/login", "user", new SchoolUser());

	}
	
	@ResponseBody
	@RequestMapping(value = "/milo/session/status/{username}/{sessionId}", method = RequestMethod.GET)
	public String getUserSessionStatus(@PathVariable String username, @PathVariable int sessionId) {
		
		int preSession = sessionId - 1;
		Attendance  attend = miloService.getAttendanceDetails(username, preSession);
		if(sessionId == 1) {
			return "unlock";//"fa fa-unlock icon-gradient bg-arielle-smile";
		} else {
			if(attend!=null) {
				if(attend.getStartSession()==1 && attend.getEndSession()==1) {
					return "unlock";//"fa fa-unlock icon-gradient bg-arielle-smile";
				} else {
					return "lock";//"fa fa-lock icon-gradient bg-love-kiss";
				}
			} else {
				return "lock";//"fa fa-lock icon-gradient bg-love-kiss";
			}
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/milo/session/statusforwv/{username}/{sessionId}", method = RequestMethod.GET)
	public String getUserSessionStatusForWV(@PathVariable String username, @PathVariable int sessionId) {
		
		int preSession = sessionId;
		Attendance  attend = miloService.getAttendanceDetails(username, preSession);
		//if(sessionId == 1) {
			//return "unlock";//"fa fa-unlock icon-gradient bg-arielle-smile";
		//} else {
			if(attend!=null) {
				if(attend.getStartSession()==1 && attend.getEndSession()==1) {
					return "unlock";//"fa fa-unlock icon-gradient bg-arielle-smile";
				} else {
					return "lock";//"fa fa-lock icon-gradient bg-love-kiss";
				}
			} else {
				return "lock";//"fa fa-lock icon-gradient bg-love-kiss";
			}
		//}
	}
	
	@RequestMapping(value = "/milo/report/{username}", method = RequestMethod.GET)
	public ModelAndView report(HttpSession session, @PathVariable("username") String username) {

		SchoolUser userData = userService.getStudentDetails(username);

		if (userData != null) {
			ModelAndView modelAndView = new ModelAndView();
			int attendedSessions = miloService.getNoOfSessionsAttended(userData.getUsername());
			modelAndView.addObject("attendedSessions", attendedSessions);
			int noOfUploads = miloService.getNoOfUploads(userData.getUsername());
			int pointsScored = attendedSessions*20; 
			int remaining = 12-attendedSessions;
			
			List<MiloSession> sessions = adminService.getAllSessions();
			modelAndView.addObject("sessions", sessions);
			
			modelAndView.addObject("remaining", remaining);
			modelAndView.addObject("pointsScored", pointsScored);
			modelAndView.addObject("userData", userData);
			modelAndView.addObject("noOfUploads", noOfUploads);
			
			modelAndView.setViewName("/milo/report");
			return modelAndView;
		} else
			return new ModelAndView("/milo/report");

	}
	
	@RequestMapping(value = "/milo/register", method = RequestMethod.GET)
	public ModelAndView register(HttpSession session) {
		//SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null)
			return new ModelAndView("/milo/index");
		else
			return new ModelAndView("/milo/register", "user", new SchoolUser());
	}

	@RequestMapping(value = "/milo/register-landing", method = RequestMethod.GET)
	public ModelAndView registerSuccess() {
		return new ModelAndView("/milo/register-landing");
	}

	@RequestMapping(value = "/milo/login", method = RequestMethod.GET)
	public ModelAndView login(HttpSession session) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		//Other otherData = (Other) session.getAttribute("Other");
		if (userData != null)
			return new ModelAndView("/milo/index");
		else
			return new ModelAndView("/milo/login", "user", new SchoolUser());
	}
	
	@RequestMapping(value = "/milo/validateLogin", method = RequestMethod.GET)
	public ModelAndView validateLogin(HttpSession session) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		//Other otherData = (Other) session.getAttribute("Other");
		if (userData != null)
			return new ModelAndView("/milo/index");
		else
			return new ModelAndView("/milo/login", "user", new SchoolUser());

	}

	@RequestMapping(value = "/milo/validateLogin", method = RequestMethod.POST)
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
						modelAndView.setViewName("redirect:/milo");
					return modelAndView;
				} else {
					modelAndView.getModel().put("AuthError",
							"Please activate your account before login");
					modelAndView.setViewName("/milo/login");
					return modelAndView;
				}
			} 
		} else {
			return new ModelAndView("/milo/login");
		}
		return null;

	}
	
	@RequestMapping(value = "/milo/validateFBLogin", method = RequestMethod.POST)
	public ModelAndView validateFbLogin(@ModelAttribute("user") SchoolUser user,
			BindingResult result, RedirectAttributes redirectAttributes,
			HttpSession session,
			@RequestParam(value = "next", required = false) String next) {
		
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
						modelAndView.setViewName("redirect:/milo");
					return modelAndView;
				} else {
					modelAndView.getModel().put("AuthError",
							"Please activate your account before login");
					modelAndView.setViewName("/milo/login");
					return modelAndView;
				}
			} 
		} else {
			return new ModelAndView("/milo/login");
		}
		return null;
	}
	
	@RequestMapping(value = "/milo/validateGoogleLogin", method = RequestMethod.POST)
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
		userData.setClient("MILO");
		//userData.setPoints(20);
		MiloPoints miloPoints = new MiloPoints();
		miloPoints.setUsername(username);
		miloPoints.setName(name);
		miloPoints.setPoints(10);
		
		if (userService.isUserExist(username)) {
			SchoolUser userDetails = userService.getStudentDetails(username);
			if(userDetails.getSocialLogin()==1) {
				
				session.setAttribute("SchoolStudent", userDetails);
				System.out.println("User Exist" + username);
				if (next != null && !next.isEmpty())
					modelAndView.setViewName("redirect:" + next);
				else
					modelAndView.setViewName("redirect:/milo");
					return modelAndView;
			
			} else {	
				modelAndView.addObject("registeredalready", true);
				return new ModelAndView("/milo/login");
			}
			
		} else {
			userService.saveSchoolUser(userData);
			SchoolUser loginuserData = userService.getStudentDetails(username);
			session.setAttribute("SchoolStudent", loginuserData);
			
			miloService.saveMiloUser(miloPoints);
			if (next != null && !next.isEmpty())
				modelAndView.setViewName("redirect:" + next);
			else
				modelAndView.setViewName("redirect:/milo");
				return modelAndView;
		}

	}

	@RequestMapping(value = "/milo/logout", method = RequestMethod.GET)
	public ModelAndView slogout(HttpSession session) {

		session.removeAttribute("SchoolStudent");
		session.invalidate();
		return new ModelAndView("/milo/login", "user", new SchoolUser());
	}
	
	@RequestMapping(value = "/milo/googlelogout", method = RequestMethod.GET)
	public ModelAndView gLogout(HttpSession session) {

		session.removeAttribute("SchoolStudent");
		session.invalidate();
		return new ModelAndView("/milo/login", "user", new SchoolUser());
	}
	
	/* Signup with mobile number/Otp starts */
	
	@RequestMapping(value = "/milo/signup", method = RequestMethod.GET)
	public String signup(ModelMap map) {
		return "/milo/signup";
	}
	
	@ResponseBody
	@RequestMapping(value = "/milo/verify-otp", method = RequestMethod.POST)
	public ModelAndView sendOTP(@RequestParam String phone, HttpSession session) {

		ModelAndView modelAndView = new ModelAndView();
		if (phone != null) {

			if (msbService.isMobileExist(phone)) {
				modelAndView.addObject("phone", true);
				modelAndView.setViewName("/milo/signup");
			} else {
				String mobile = ""+"91"+phone+"";
				System.out.println("mobile: "+mobile);
				Random rand = new Random();
				int otp = rand.nextInt(900000) + 100000;
				
				boolean send = msbService.sendSMS(mobile, otp);
				if (send) {
					modelAndView.addObject("phone", phone);
					modelAndView.addObject("otp", otp);
					modelAndView.setViewName("/milo/verify-otp");
					return modelAndView;
				} else {
					modelAndView.addObject("success", false);
					modelAndView.setViewName("/milo/signup");
					
				}
			}
		} else {
			modelAndView.addObject("phone", null);
			modelAndView.setViewName("/milo/signup");
		}
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/milo/update-password", method = RequestMethod.POST)
	public ModelAndView sendOTP(@RequestParam String phone, @RequestParam String verify, 
			@RequestParam String otp, HttpSession session) {

		ModelAndView modelAndView = new ModelAndView();
		if (verify != null) {

			if (verify.contentEquals(otp)) {
				modelAndView.addObject("phone", phone);
				modelAndView.setViewName("/milo/update-password");
			} else {
				modelAndView.addObject("phone", phone);
				modelAndView.addObject("success", false);
				modelAndView.addObject("otp", otp);
				modelAndView.setViewName("/milo/verify-otp");
			}
		} else {
			modelAndView.addObject("phone", phone);
			modelAndView.addObject("otp", otp);
			modelAndView.addObject("status", null);
			modelAndView.setViewName("/milo/verify-otp");
		}
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/milo/updatePassword", method = RequestMethod.POST)
	public ModelAndView updatePassword(@RequestParam String phone, @RequestParam String password,
			@RequestParam String cpassword, HttpSession session) {

		ModelAndView modelAndView = new ModelAndView();
		if (password != null && phone != null && cpassword != null) {

			SchoolUser user = new SchoolUser();
			user.setPhone(phone);
			user.setPassword(password);
			user.setUsername(phone);
			user.setClient("MILO");
			//user.setPoints(20);
			MiloPoints miloPoints = new MiloPoints();
			miloPoints.setUsername(phone);
			miloPoints.setPoints(10);
			if (password.equalsIgnoreCase(cpassword)) {
				miloService.saveMiloUser(miloPoints);
				if(msbService.updatePassword(user)) {
					modelAndView.addObject("success", true);
					modelAndView.setViewName("/milo/login");
				} else {
					modelAndView.addObject("success", false);
					modelAndView.addObject("phone", phone);
					modelAndView.setViewName("/milo/update-password");
				}
			} else {
				modelAndView.addObject("phone", phone);
				modelAndView.addObject("status", false);
				modelAndView.setViewName("/milo/update-password");
			}
		} else {
			modelAndView.addObject("phone", phone);
			modelAndView.addObject("status", null);
			modelAndView.setViewName("/milo/update-password");
		}
		return modelAndView;
	}
	
	
	/* Signup with mobile number/Otp ends*/
	
	@RequestMapping(value = "/milo/doregister", method = RequestMethod.POST)
	public ModelAndView register(
			@ModelAttribute("user") @Validated({ SaveUser.class }) SchoolUser user,
			BindingResult result, HttpSession session) throws IOException {
		registerValidator.validate(user, result);
		if (!result.hasErrors()) {
			System.out.println("NO ERRORS");
			user.setClient("MILO");
			//user.setPoints(20);
			MiloPoints miloPoints = new MiloPoints();
			miloPoints.setUsername(user.getUsername());
			miloPoints.setName(user.getName());
			miloPoints.setSchool(user.getSchool());
			miloPoints.setStandard(user.getStandard());
			miloPoints.setCity(user.getCity());
			miloPoints.setPoints(10);
			boolean isStudentSaved = userService.saveSchoolUser(user);
			miloService.saveMiloUser(miloPoints);
			System.out.println("student saved");
			if (isStudentSaved) {
					return new ModelAndView(
							"redirect:/milo/register-landing?success=true");
			} else
				return new ModelAndView(
						"redirect:/milo/register-landing?success=false");
		} else {
			return new ModelAndView("/milo/register");
		}

	}
	
	@RequestMapping(value = "/milo/user/upload_video/{id}", method = {
			RequestMethod.POST, RequestMethod.GET })
	public ModelAndView singingSubmissionForm(
			@PathVariable("id") int id, HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		MiloSession miloSession = miloService
				.getMiloSessionDetails(id);
		if (miloSession != null) {
			//SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
			//Other otherData = (Other) session.getAttribute("Other");
			//if(userData!=null) {
			//Integer user_total_competition_submissions = competitionService
					//.getStudentTotalMSTSubmissionsOfACompetition(
							//userData.getUsername(),
							//competition.getComp_id());
			//if (user_total_competition_submissions >= 3)
				//modelAndView.addObject("submissions_exceeded", true);
			//else
				//modelAndView.addObject("submissions_exceeded", false);
			//} 
			modelAndView.addObject("miloSession", miloSession);
			modelAndView.setViewName("/milo/upload_video");
			return modelAndView;
		} else
			return new ModelAndView("redirect:/milo");
		//modelAndView.setViewName("/milo/upload_singing");
		//return modelAndView;

	}
	
	@RequestMapping(value = "/milo/user/upload_video1/{id}", method = {
			RequestMethod.POST, RequestMethod.GET })
	public ModelAndView uploadVideoForm(
			@PathVariable("id") int id, HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		MiloSession miloSession = miloService
				.getMiloSessionDetails(id);
		if (miloSession != null) {
			modelAndView.addObject("miloSession", miloSession);
			modelAndView.setViewName("/milo/upload_video1");
			return modelAndView;
		} else
			return new ModelAndView("redirect:/milo");
		

	}

	@RequestMapping(value = "/milo/user/submit-video", method = RequestMethod.POST)
	public ModelAndView submitEntry(
			@ModelAttribute("mst") MILOSubmission milo,
			HttpSession session,
			@RequestParam(value = "mst_video", required = true) MultipartFile mst_video)
			throws IOException {
		
			ModelAndView modelAndView = new ModelAndView();
			SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");

			milo.setUser_name(userData.getUsername());

			String filename = userData.getUsername() + "_"
					+ miloService.getMiloMaxID() + "."
					+ mst_video.getOriginalFilename().split("\\.")[1];
			milo.setSubmission_file_name(filename);
			Integer id = miloService.saveMILOSubmission(milo);

			if (id != 0) {
				uploadFile(filename, mst_video, "MILO");
				//userData.setPoints(userData.getPoints()+10);
				//userService.updateUserDetails(userData);
				userService.updateUserPoints(userData.getUsername(),15);
				if(miloService.isUserExistInMiloPoints(userData.getUsername())) {
					miloService.updateMiloPoints(userData.getUsername(), 15);
				} else {
					MiloPoints miloPoints = new MiloPoints();
					miloPoints.setUsername(userData.getUsername());
					miloPoints.setPoints(25);
					miloService.saveMiloUser(miloPoints);
				}
				MILOSubmission entry = miloService
						.getMILOSubmission(id);
				modelAndView.addObject("entry", entry);
				modelAndView.addObject("success", true);
				modelAndView.setViewName("/milo/video_saved");
			} else {
				modelAndView.addObject("success", false);
				modelAndView.setViewName("/milo/video_saved");
			}
			return modelAndView;
	}
	
	/*
	 * @RequestMapping(value = "/milo/user/video_saved", method = RequestMethod.GET)
	 * public String wiytCompetitionSaved() { return "/milo/video_saved"; }
	 */
	
	/*
	 * private void uploadFile(String filename, MultipartFile image) { File
	 * image_path = new File(servletContext.getRealPath("/") +
	 * "user_images/Comp_Sub/MILO/" + filename);
	 * image_path.getParentFile().mkdirs(); try {
	 * FileUtils.writeByteArrayToFile(image_path, image.getBytes());
	 * 
	 * } catch (IOException e) { // TODO Auto-generated catch block
	 * e.printStackTrace(); }
	 * 
	 * }
	 */
	
	private void uploadFile(String filename, MultipartFile image,
			String competition) {
		File image_path = new File(servletContext.getRealPath("/")
				+ "user_images/Comp_Sub/" + competition + "/" + filename);
		image_path.getParentFile().mkdirs();
		try {
			FileUtils.writeByteArrayToFile(image_path, image.getBytes());

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	/*
	 * private void uploadFile(String filename, MultipartFile image, String uat) {
	 * File image_path = new File(servletContext.getRealPath("/") +
	 * "user_images/Comp_Sub/MILO/UAT/" + filename);
	 * image_path.getParentFile().mkdirs(); try {
	 * FileUtils.writeByteArrayToFile(image_path, image.getBytes());
	 * 
	 * } catch (IOException e) { // TODO Auto-generated catch block
	 * e.printStackTrace(); }
	 * 
	 * }
	 */
	
	@RequestMapping(value = "/milo/view_entry/{id}", method = RequestMethod.GET)
	public ModelAndView mstCompetitionEntryView(
			@PathVariable("id") String id) {
		ModelAndView modelAndView = new ModelAndView();
		MILOSubmission entry = miloService
				.getMILOSubmission(Integer.parseInt(id));
		
		SchoolUser entryuser = userService.getStudentDetails(entry.getUser_name());
		//modelAndView.addObject("entryuser", entryuser);
		modelAndView.addObject("entry", entry);
		if(entryuser!=null) {
			String name = entryuser.getName();
			modelAndView.addObject("name", name);
		} else {
			Other entryother = otherService.getStudentDetails(entry.getUser_name());
			String name = entryother.getName();
			modelAndView.addObject("name", name);
		}
		miloService.saveEntryVisit(entry.getId());
		
		//int nextEntry=competitionService.getNextOrPreviousEntryId(entry.getId(), , true, false);
		//int previousEntry=competitionService.getNextOrPreviousEntryId(entry.getId(), entry.getSubmission_type(), false, true);	
		//if(nextEntry!=0)
		//modelAndView.addObject("nextEntry", nextEntry);
		//if(previousEntry!=0)
		//modelAndView.addObject("previousEntry", previousEntry);
		
		modelAndView.setViewName("/milo/view_entry");
		return modelAndView;

	}
	
	@ResponseBody
	@RequestMapping(value = "/milo/validate-user-like", method = RequestMethod.POST)
	public String validateUserLike(
			@ModelAttribute UserLikeValidation userLikeValidation,
			HttpSession session, @RequestParam("fb_login") String fbLogin) {
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		Other otherData = (Other) session.getAttribute("Other");
		
		if (userData != null) {
			userLikeValidation.setUsername(userData.getUsername());
			if (userService.isStudentLiked(userLikeValidation)) {
				return "already-voted";
			} else {
				//if(userLikeValidation.getOldLikes()==49){
					//String subject = "Congratulations you've got 50 Likes for your entry at MySuperBrain";
					//String entrytype = userLikeValidation.getComp_type();
					//String body = MsbUtil.buildEntryLikesMail(userLikeValidation.getEntry_username(), entrytype);
					//mailService.sendMail(subject, body, userLikeValidation.getEntry_username(), false, "MySuperBrain");					
				//}
				userLikeValidation.setLikeDate(MsbUtil.getCurrentDate());
				if (userService.saveStudentLike(userLikeValidation)) {
					userService.updateUserPoints(
							userLikeValidation.getEntry_username(), 2);
					
					if(miloService.isUserExistInMiloPoints(userLikeValidation.getEntry_username())) {
						miloService.updateMiloPoints(userLikeValidation.getEntry_username(), 2);
					} else {
						MiloPoints miloPoints = new MiloPoints();
						miloPoints.setUsername(userLikeValidation.getEntry_username());
						miloPoints.setPoints(12);
						miloService.saveMiloUser(miloPoints);
					}
					
					//miloService.updateMiloPoints(userLikeValidation.getEntry_username(), 2);
					updateMILOSubmissionPoints(userLikeValidation.getComp_type(),
							userLikeValidation.getEntry_id());
					return "voted";
				}
			}

		} else if (otherData != null) {
			userLikeValidation.setUsername(otherData.getUsername());
			if (otherService.isStudentLiked(userLikeValidation)) {
				return "already-voted";
			} else {
				userLikeValidation.setLikeDate(MsbUtil.getCurrentDate());
				if (otherService.saveStudentLike(userLikeValidation)) {
					otherService.updateUserPoints(
							userLikeValidation.getEntry_username(), 2);
					
					if(miloService.isUserExistInMiloPoints(userLikeValidation.getEntry_username())) {
						miloService.updateMiloPoints(userLikeValidation.getEntry_username(), 2);
					} else {
						MiloPoints miloPoints = new MiloPoints();
						miloPoints.setUsername(userLikeValidation.getEntry_username());
						miloPoints.setPoints(12);
						miloService.saveMiloUser(miloPoints);
					}
					
					//miloService.updateMiloPoints(userLikeValidation.getEntry_username(), 2);
					updateMILOSubmissionPoints(userLikeValidation.getComp_type(),
							userLikeValidation.getEntry_id());
					return "voted";
				}
			}
		}else
			return "nouser";
		return null;

	}
	
	private boolean updateMILOSubmissionPoints(String comp_type, int id) {
		miloService.updateMILOSubmissionPoints(id, 2);
		return true;
	}
	
	@RequestMapping(value = "/milo/quiz/{id}", method = RequestMethod.GET)
	public ModelAndView takeTest(@PathVariable int id, HttpSession session) {
		//SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		//boolean isPremium = isStudentPremium(userData);
		ModelAndView modelAndView = new ModelAndView();
		//int testsCount=quizService.getStudentDayQuizCount(userData.getUsername());
		//System.out.println("testsCount"+testsCount);
		//if (isPremium ||  testsCount< 3) {
			Quiz quiz = quizService.getQuiz(id);
			LinkedHashMap<String, List<String>> quizBuild = MsbUtil.buildQuiz(
					quiz.getQuestions(), quiz.getKeyset());

			/* check whether user taken the test or not */
			//boolean isTestTaken = quizService.isStudenTakentest(quiz.getId(),
					//userData.getUsername());

			/* get user segment */
			//String user_segment = MsbUtil
					//.getUserSegmentBasedOnClassStudyingForTests(userData
							//.getStandard());

			/* check whether user segment and quiz category is same or not */
			//boolean testAndUserSegmentSame = MsbUtil
					//.isUserSegmentSameAsTestCategory(user_segment,
							//quiz.getCategory());

			//modelAndView.addObject("isUserCategory", testAndUserSegmentSame);
			//modelAndView.addObject("isTestTaken", isTestTaken);
			modelAndView.addObject("quizBuild", quizBuild);
			modelAndView.addObject("quiz", quiz);
			modelAndView.setViewName("/milo/take-test");
		//} else {
			//modelAndView.setViewName("/milo/tests/test-count-exceeded");
		//}
		return modelAndView;
	}

	@RequestMapping(value = "/milo/user/submittest/{id}", method = RequestMethod.POST)
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
		return "redirect:/milo/user/test-submission";

	}
	
	@ResponseBody
	@RequestMapping(value = "/milo/start-session", method = RequestMethod.POST)
	public String startSession(@RequestParam String username, @RequestParam int sessionId, HttpSession session) {

		SchoolUser user = (SchoolUser) session.getAttribute("SchoolStudent");

		if (null == user) {
			return "login-required";	
		} else {
			if(miloService.isAttendenceAdded(username, sessionId)) {
				
				Attendance sessions = miloService.getAttendanceDetails(username, sessionId);
				
				if(sessions.getEndSession()==1) {
					return "session-already-end";
						
				} else {
					return "already-started";
				}
			} else {

				Attendance attendance = new Attendance();
				attendance.setUsername(username);
				attendance.setStartSession(1);
				attendance.setSessionId(sessionId);
				attendance.setAttendDate(MsbUtil.getCurrentDate());
				miloService.addAttendancePoints(attendance);
				//fan.setFan(user.getUsername());
				//if (userService.updateUserPoints(username, 20)) {
				return "started";
			}
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/milo/end-session", method = RequestMethod.POST)
	public String endSession(@RequestParam String username, @RequestParam int sessionId, HttpSession session) {

		SchoolUser user = (SchoolUser) session.getAttribute("SchoolStudent");
		Attendance sessions = miloService.getAttendanceDetails(username, sessionId);
		if (null == user) {
		
			return "login-required";	
		
		} else if(miloService.isAttendenceAdded(username, sessionId)) { 
			
			if(sessions.getEndSession()==1){
			
				return "session-already-end";
		
			} else  {
				Attendance attendance = new Attendance();
				attendance.setUsername(username);
				attendance.setEndSession(1);
				attendance.setAttendDate(MsbUtil.getCurrentDate());
				miloService.updateSessionAttendance(username, sessionId);
				userService.updateUserPoints(username, 25);
				
				if(miloService.isUserExistInMiloPoints(username)) {
					miloService.updateMiloPoints(username, 25);
				} else {
					MiloPoints miloPoints = new MiloPoints();
					miloPoints.setUsername(username);
					miloPoints.setPoints(35);
					miloService.saveMiloUser(miloPoints);
				}
				
				//miloService.updateMiloPoints(username, 25);
				return "attendance-added";
			} 
				
		} else {
			return "not-started";
		}
		
	}
	
	@RequestMapping(value = "/milo/enrolschool", method = RequestMethod.POST)
	public ModelAndView submitSchoolDetails(@ModelAttribute("school") School school,
			HttpSession session, BindingResult result) {

		//ModelAndView modelAndView = new ModelAndView();
		int maxId = msbService.getSchoolMaxId();
		String schoolcode = maxId+"school";
		school.setSchool_code(schoolcode);
		
		//int id = msbService
				//.saveSchoolPage(school);
		boolean saved = msbService.saveSchool(school);
		if (saved) {
			return new ModelAndView("redirect:/milo/registerschool?success=true&id="+maxId+"");	
		} else
			return new ModelAndView("redirect:/milo/registerschool?success=false");

	}
	
	@RequestMapping(value = "/milo/user/edit-profile", method = RequestMethod.GET)
	public ModelAndView editProfile(HttpSession session) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		Integer profileCompleteness = getProfileCompleteness(userData);
		if (userData != null) {
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("user", userData);
			modelAndView.addObject("profilecp", profileCompleteness);
			modelAndView.setViewName("/milo/edit-profile");
			return modelAndView;
		} else
			return new ModelAndView("login", "user", new SchoolUser());

	}
	
	@RequestMapping(value = "/milo/profile/image/{username}", method = RequestMethod.GET, produces = MediaType.IMAGE_PNG_VALUE)
	@ResponseBody
	public byte[] getUserProfileImage(@PathVariable String username) {
		
		//BufferedImage image = ImageIO.read(getServletContext()
				//.getResourceAsStream("/img/profilepicture.png"));

		return userService.getStudentDetails(username).getImage();

	}

	

	@RequestMapping(value = "/milo/user/update-profile-picture", method = RequestMethod.POST)
	public ModelAndView updateProfile(
			@RequestParam(value = "photo", required = false) MultipartFile photo,
			HttpSession session) throws IOException {
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		byte[] image = IOUtils.toByteArray(photo.getInputStream());
		userData.setImage(image);
		if (userService.updateProfilePicture(userData)) {
			return new ModelAndView("redirect:/milo/user/edit-profile?success=true");
		} else {
			return new ModelAndView("redirect:/milo/user/edit-profile?success=false");
		}

	}
	
	private SchoolUser setUserData(SchoolUser user, Map<String, String> fields) {
		for (Entry<String, String> entry : fields.entrySet()) {
			try {
				DateConverter converter = new DateConverter();
				converter.setPattern("dd/MM/yyyy");
				ConvertUtils.register(converter, Date.class);
				BeanUtils.setProperty(user, entry.getKey(), entry.getValue());
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return user;
	}
	
	private MiloPoints setMiloUserData(MiloPoints user, Map<String, String> fields) {
		for (Entry<String, String> entry : fields.entrySet()) {
			try {
				DateConverter converter = new DateConverter();
				converter.setPattern("dd/MM/yyyy");
				ConvertUtils.register(converter, Date.class);
				BeanUtils.setProperty(user, entry.getKey(), entry.getValue());
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return user;
	}

	@RequestMapping(value = "/milo/user/update-userdetails", method = RequestMethod.POST)
	public ModelAndView updateUserDetails(
			@RequestParam Map<String, String> userdetails, HttpSession session)
			throws IOException {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		MiloPoints miloPoints = new MiloPoints();
		
		
		userData = setUserData(userData, userdetails);
		miloPoints.setName(userData.getName());
		miloPoints.setStandard(userData.getStandard());
		miloPoints.setSchool(userData.getSchool());
		miloPoints.setCity(userData.getCity());
		miloPoints.setUsername(userData.getUsername());
		
		miloPoints = setMiloUserData(miloPoints, userdetails);
		if (userService.updateUserDetails(userData)) {
			miloService.updateMiloUser(miloPoints);
			return new ModelAndView("redirect:/milo/user/edit-profile?success=true");
		} else {
			return new ModelAndView("redirect:/milo/user/edit-profile?success=false");
		}

	}
	
	@SuppressWarnings("unchecked")
	private Integer getProfileCompleteness(SchoolUser user) {
		Integer profilePoints = 0;
		try {
			Map<String, String> userfields = BeanUtils.describe(user);
			Integer eachFieldPoints = 100 / userfields.size();
			for (Entry<String, String> entry : userfields.entrySet()) {
				if (entry.getValue() != null && !entry.getValue().isEmpty()) {
					profilePoints = profilePoints + eachFieldPoints;
				}
			}
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return profilePoints;
	}
	
	@ResponseBody
	@RequestMapping(value = "/milo/invite-friend", method = RequestMethod.GET)
	public String validateUserLike(
			HttpSession session, @RequestParam("name") String name, @RequestParam("phone") String phone) {

		if (phone != null) {
			//String mobile = ""+"91"+phone+"";
			//System.out.println("mobile: "+mobile);
			//Random rand = new Random();
			//int otp = rand.nextInt(900000) + 100000;
			
			//boolean send = msbService.sendSMS(mobile, otp);
			//if (send) {
				return "success";
			//} else {
				//return "error";
			//}
		} else 
			return "empty";
	}
	
	@RequestMapping(value = "/milo/user/selfiewithmilo", method = RequestMethod.GET)
	public ModelAndView miloSelfoe() {
		return new ModelAndView("/milo/milo_selfie");
	}
	
	@RequestMapping(value = "/milo/upload-selfie", method = RequestMethod.POST)
	public ModelAndView uploadSelfie(@ModelAttribute("mst") MiloSelfie milo, HttpSession session,
		@RequestParam(value = "mst_video", required = true) MultipartFile mst_video)
		throws IOException {
	
		ModelAndView modelAndView = new ModelAndView();
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
	
		String filename = userData.getUsername() + "_"
				+"selfie"+"."
				+ mst_video.getOriginalFilename().split("\\.")[1];
		milo.setFile_name(filename);
		milo.setUsername(userData.getUsername());
		if(miloService.saveMILOSelfie(milo)) {
			uploadFile(filename, mst_video, "SELFIE");
			//int studetnScore =userData.getPoints()+10;
			//userService.updateUserPoints(userData.getUsername(), studetnScore);
			userService.updateUserPoints(userData.getUsername(), 10);
			
			if(miloService.isUserExistInMiloPoints(userData.getUsername())) {
				miloService.updateMiloPoints(userData.getUsername(), 10);
			} else {
				MiloPoints miloPoints = new MiloPoints();
				miloPoints.setUsername(userData.getUsername());
				miloPoints.setPoints(20);
				miloService.saveMiloUser(miloPoints);
			}
			
			
			
			//miloService.updateMiloPoints(userData.getUsername(), 10);
			//userService.updateUserDetails(userData);
			modelAndView.addObject("success", true);
			return new ModelAndView("redirect:/milo/user/selfiewithmilo?success=true");
		} else {
			modelAndView.addObject("success", false);
			return new ModelAndView("redirect:/milo/user/selfiewithmilo?success=flase");
		}
	}
	
	@RequestMapping(value = "/milo/upload-webcam-selfie", method = RequestMethod.POST)
	public String uploadWebcamSelfie(@ModelAttribute("mst") MiloSelfie milo, HttpSession session,
		@RequestParam(value = "mst_video", required = true) MultipartFile mst_video)
		throws IOException {
	
		//ModelAndView modelAndView = new ModelAndView();
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
	
		String filename = userData.getUsername() + "_"
				+"selfie"+"."
				+ mst_video.getOriginalFilename().split("\\.")[1];
		milo.setFile_name(filename);
		milo.setUsername(userData.getUsername());
		if(miloService.saveMILOSelfie(milo)) {
			uploadFile(filename, mst_video, "SELFIE");
			//int studetnScore =userData.getPoints()+10;
			//userService.updateUserPoints(userData.getUsername(), studetnScore);
			userService.updateUserPoints(userData.getUsername(), 10);
			
			if(miloService.isUserExistInMiloPoints(userData.getUsername())) {
				miloService.updateMiloPoints(userData.getUsername(), 10);
			} else {
				MiloPoints miloPoints = new MiloPoints();
				miloPoints.setUsername(userData.getUsername());
				miloPoints.setPoints(20);
				miloService.saveMiloUser(miloPoints);
			}
			
			
			//miloService.updateMiloPoints(userData.getUsername(), 10);
			//userService.updateUserDetails(userData);
			return "uploaded";
		} else {
			return "failed";
		}
	}
	
	
	@RequestMapping(value = "/milo/profile/{username}", method = RequestMethod.GET)
	public ModelAndView getPublicProfile(@PathVariable String username) {

		SchoolUser userData = userService.getStudentDetails(username);
		

		if (userData != null) {
			List<MILOSubmission> essays = adminService.getUserMiloSubmissions(username);
			
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("essays", essays);
			
			modelAndView.addObject("userData", userData);
			modelAndView.setViewName("/milo/public-profile");
			return modelAndView;
		} else
			return new ModelAndView("/milo/public-profile", "user", new SchoolUser());
		
	}
	
	@RequestMapping(value = "/milo/user/entries", method = RequestMethod.GET)
	public ModelAndView getAllEntries(HttpSession session) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");

		if (userData != null) {
			List<MILOSubmission> entries = adminService
					.getUserMiloSubmissions(userData.getUsername());
			
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("entries", entries);
			
			modelAndView.addObject("userData", userData);
			modelAndView.setViewName("/milo/user-entries");
			return modelAndView;
		} else
			return new ModelAndView("/milo/user-entries", "user", new SchoolUser());

	}
	
	@RequestMapping(value = "/milo/user/showcase_my_skill", method = {
			RequestMethod.POST, RequestMethod.GET })
	public ModelAndView uatSubmissionForm(
			HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		
		modelAndView.setViewName("/milo/upload_a_talent");
		return modelAndView;

	}
	
	@RequestMapping(value = "/milo/user/submit-sms-competition", method = RequestMethod.POST)
	public ModelAndView submitUploadATalent(
			@ModelAttribute("uat") UploadATalent uat,
			HttpSession session,
			@RequestParam(value = "uat_attachment", required = true) MultipartFile uat_attachment)
			throws IOException {
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (uat.getEntry_type().equalsIgnoreCase("text")) {
			uat.setUser_name(userData.getUsername());
			uat.setContent(uat.getContent());
			Integer id = competitionService.saveUploadATalent(uat);
			if (id != 0) {
				otherService.updateUserPoints(userData.getUsername(), 20);
				return new ModelAndView(
						"redirect:/milo/user/upload_a_talent_saved?success=true&id="
								+ id);
			} else
				return new ModelAndView(
						"redirect:/milo/user/upload_a_talent_saved?success=false");
		} else {

			uat.setUser_name(userData.getUsername());

			String filename = userData.getUsername() + "_"
					+ competitionService.getUploadATalentMaxID() + "."
					+ uat_attachment.getOriginalFilename().split("\\.")[1];
			uat.setEntry_file_name(filename);
			Integer id = competitionService.saveUploadATalent(uat);

			if (id != 0) {
				uploadFile(filename, uat_attachment, "UAT");
				otherService.updateUserPoints(userData.getUsername(), 20);
				return new ModelAndView(
						"redirect:/milo/user/showcase_my_skill_saved?success=true&id="
								+ id);
			} else
				return new ModelAndView(
						"redirect:/milo/user/showcase_my_skill_saved?success=false");
		}

	}
	
	@RequestMapping(value = "/milo/user/showcase_my_skill_saved", method = RequestMethod.GET)
	public String wiytCompetitionSaved() {
		return "/milo/upload_a_talent_saved";
	}
	
	@RequestMapping(value = "/milo/view/showcase_my_skill/{id}", method = RequestMethod.GET)
	public ModelAndView uatCompetitionEntryView(@PathVariable("id") String id) throws IOException {
		ModelAndView modelAndView = new ModelAndView();
		UploadATalent uat = competitionService
				.getUploadATalentSubmission(Integer.parseInt(id));
		String wordDocPath = null;
		String entryTextString=null;
		
		modelAndView.addObject("textEntryContent", entryTextString);
		modelAndView.addObject("uat", uat);
		SchoolUser entryuser = userService.getStudentDetails(uat.getUser_name());
		modelAndView.addObject("entryuser", entryuser);		

		int nextEntry=competitionService.getNextOrPreviousUatId(uat.getId(), true, false);
		int previousEntry=competitionService.getNextOrPreviousUatId(uat.getId(), false, true);
		if(nextEntry!=0)
		modelAndView.addObject("nextEntry", nextEntry);
		if(previousEntry!=0)
		modelAndView.addObject("previousEntry", previousEntry);
		competitionService.saveUatEntryVisit(uat.getId());
		
		modelAndView.setViewName("/milo/view_showcase_my_skill");
		return modelAndView;

	}

	@ResponseBody
	@RequestMapping(value = "/milo/save-email", method = RequestMethod.POST)
	public String saveEmail(@ModelAttribute MailSubscribe mailSubscribe,
			HttpSession session) {
		//MailSubscribe mailSubscribe = new MailSubscribe();
		if (mailSubscribe.getMail() != null) {
			//String mobile = ""+"91"+phone+"";
			System.out.println("mail: "+mailSubscribe.getMail());
			//Random rand = new Random();
			//int otp = rand.nextInt(900000) + 100000;
			if(miloService.isAlreadySubscribed(mailSubscribe.getMail())) {
				return "subscribed";
			} else {
				//mailSubscribe.setMail(mailSubscribe);
				boolean save = miloService.saveEmail(mailSubscribe);
				if (save) {
					return "success";
				} else {
					return "error";
				}
			}
		} else {
			return "empty";
		}
		//return null;
	}
	
	@ResponseBody
	@RequestMapping(value = "/milo/points/{username}", method = RequestMethod.GET)
	public String getMiloPoints(@PathVariable String username) {
		System.out.println("Milo Points User:" +username);
		Integer points = miloService.getUserMiloPoints(username);
		System.out.println("Milo User Points:" +points);
		if(points>0){
			return points.toString();
		}else
			return points.toString();	
	}
	
}
