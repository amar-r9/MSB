package com.msb.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.msb.bean.TopSchoolsBean;
import com.msb.model.Admin;
import com.msb.model.Attendance;
import com.msb.model.CompetitionText;
import com.msb.model.MILOSubmission;
import com.msb.model.MSTCompetition;
import com.msb.model.MiloSession;
import com.msb.model.School;
import com.msb.model.SchoolUser;
import com.msb.model.UserEntryDisqualify;
import com.msb.model.UserLikeValidation;
import com.msb.service.AdminService;
import com.msb.service.CompetitionService;
import com.msb.service.MSBService;
import com.msb.service.MiloService;
import com.msb.service.QuizService;
import com.msb.service.SchoolUserService;
import com.msb.util.MsbUtil;
import com.msb.validator.SchoolRegisterValidator;

@Controller
public class CodingStarAdminController {
	
	@Autowired
	private QuizService quizService;
	
	@Autowired
	SchoolRegisterValidator registerValidator;
	
	@Autowired
	private SchoolUserService userService;
	
	@Autowired
	private MiloService miloService;
	
	@Autowired
	private CompetitionService competitionService;
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value = "/codingstar/adminlogin", method = RequestMethod.GET)
	public ModelAndView login(HttpSession session) {

		Admin userData = (Admin) session.getAttribute("AdminUser");
		if (userData != null)
			return new ModelAndView("/codingstar/admin");
		else
			return new ModelAndView("/codingstar/admin/login", "admin", new Admin());
	}
	
	  @RequestMapping(value = "/codingstar/admin", method = RequestMethod.GET) public
	  ModelAndView narayanaAdmin() {
		  String client="MILO";
		  ModelAndView modelAndView=new ModelAndView(); 
		  int noOfStudents = adminService.getTotalStudentsCount(client);
		  modelAndView.addObject("noOfStudents", noOfStudents); 
		  
		  modelAndView.setViewName("/codingstar/admin/index");
		  return modelAndView; 
	  }
	  
	  @RequestMapping(value = "/codingstar/admin/index", method = RequestMethod.GET) public
	  ModelAndView narayanaAdminIndex() {
		  String client="MILO";
		  ModelAndView modelAndView=new ModelAndView(); 
		  int noOfStudents = adminService.getTotalStudentsCount(client);
		  modelAndView.addObject("noOfStudents", noOfStudents); 
		  modelAndView.setViewName("/codingstar/admin/index");
		  return modelAndView; 
	  }
	 
	  @RequestMapping(value = "/codingstar/validateAdminLogin", method = RequestMethod.GET)
		public ModelAndView validateLogin(HttpSession session) {

			Admin userData = (Admin) session.getAttribute("AdminUser");
			if (userData != null) {
				
					return new ModelAndView("/codingstar/admin/index");
			} else
				return new ModelAndView("/codingstar/adminlogin", "admin", new Admin());

		}

		@RequestMapping(value = "/codingstar/validateAdminLogin", method = RequestMethod.POST)
		public ModelAndView validate(@ModelAttribute("admin") Admin user,
				BindingResult result, RedirectAttributes redirectAttributes,
				HttpSession session,
				@RequestParam(value = "next", required = false) String next) {
			// userValidator.validate(user, result);

			if (user.getUsername() != null && !user.getUsername().isEmpty()
					&& user.getPassword() != null && !user.getPassword().isEmpty()) {
				ModelAndView modelAndView = new ModelAndView();
				String username = user.getUsername();
				String password = user.getPassword();
				System.out.println("in submit" + username +"password "+password);
				Admin userData = adminService.validateUser(username, password);

				if (userData != null) {

						session.setAttribute("AdminUser", userData);
						System.out.println("Branch :" + userData.getBranch());
						if (next != null && !next.isEmpty()) {
								modelAndView.setViewName("redirect:" + next);
						} else {
								modelAndView.setViewName("redirect:/codingstar/admin");
						}
							return modelAndView;
					
				} else {
					modelAndView.getModel().put("AuthError",
							"Invalid UserName / Password");
					modelAndView.setViewName("/codingstar/admin/login");
					return modelAndView;
				}
			} else {
				return new ModelAndView("/codingstar/admin/login");
			}

		}
	
	@RequestMapping(value = "/codingstar/adminlogout", method = RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {

		session.removeAttribute("AdminUser");
		session.invalidate();
		return new ModelAndView("/codingstar/admin/login", "admin", new Admin());
	}
	
	@RequestMapping(value = "/codingstar/admin/students", method = RequestMethod.GET)
	public ModelAndView allStudents(HttpSession session) {
		ModelAndView modelAndView=new ModelAndView();
		String client = "MILO";

		List<SchoolUser> students = adminService.getAllStudents(client);
			
		modelAndView.addObject("students", students);
		
		modelAndView.setViewName("/codingstar/admin/students");
		return modelAndView;
		
	}
	
	@RequestMapping(value = "/codingstar/admin/leaderboard", method = RequestMethod.GET)
	public ModelAndView leaderboard(HttpSession session) {
		ModelAndView modelAndView=new ModelAndView();
		String client = "MILO";

		//List<SchoolUser> topstudents = adminService.getTopStudents(client);
		//modelAndView.addObject("topstudents", topstudents);
		
		modelAndView.setViewName("/codingstar/admin/topstudents");
		return modelAndView;
		
	}
	
	@RequestMapping(value = "/codingstar/admin/topschools", method = RequestMethod.GET)
	public ModelAndView topSchool(HttpSession session) {
		ModelAndView modelAndView=new ModelAndView();
		String client = "CODING";

		List<TopSchoolsBean> topSchools = adminService.getTopSchoolsList(client);
		modelAndView.addObject("topSchools", topSchools);
		
		modelAndView.setViewName("/codingstar/admin/topschools");
		return modelAndView;
		
	}
	
	@RequestMapping(value = "/codingstar/admin/{school}/leaderboard", method = RequestMethod.GET)
	public ModelAndView schoolLeaderBoard(HttpSession session, @PathVariable String school) {
		ModelAndView modelAndView=new ModelAndView();
		String client = "CODING";

		List<SchoolUser> topstudents = adminService.getTopStudentsOfSchool(school);
		modelAndView.addObject("topstudents", topstudents);
		
		modelAndView.setViewName("/codingstar/admin/topstudents");
		return modelAndView;
		
	}
	
	@RequestMapping(value = "/codingstar/admin/get-student-details", method = RequestMethod.GET)
	public ModelAndView getStudent() {
		return new ModelAndView("/codingstar/admin/get-student");
	}
	
	@RequestMapping(value = "/codingstar/admin/getuserdetails", method = RequestMethod.POST)
	public ModelAndView userDetails(@RequestParam String username, HttpSession session) {
		// userValidator.validate(user, result);

		SchoolUser userData = userService.getStudentDetails(username);
		ModelAndView modelAndView = new ModelAndView();
		if (userData != null) {
			System.out.println("in submit" + username);
			
			//if (userData.getPass().contains(pass)) {

			modelAndView.getModel().put("result",
					"<div class='row'><div class='col-md-8'><table class='table no-footer table-bordered'><thead></thead>"
					+ "<tbody><tr><td>Name</td><td>"+userData.getName()+"</td></tr><tr><td>Username</td><td>"+userData.getUsername()+""
					+"</td></tr><tr><td>Password</td><td>"+userData.getPassword()+"</td></tr>"
					+"<tr><td>Standard</td><td>"+userData.getStandard()+"</td></tr>"
					+ "<tr><td>Email</td><td>"+userData.getMail()+"<tr><td>Phone</td><td>"+ userData.getPhone()+"</td></tr>"
					+ "<tr><td>School</td><td>"+userData.getSchool()+"<tr><td>City</td><td>"+ userData.getCity()+"</td></tr>"
					+ "</tbody></table></div><div class='col-md-4'><a href='../admin/entries/"
					+ userData.getUsername() +"'"
					+"class='btn btn-success'>VIEW USER ENTRIES</a></div></div>");
					modelAndView.setViewName("/codingstar/admin/get-student");
					return modelAndView;
			//} else {
				//modelAndView.getModel().put("result",
						//"Last 4 digits of your mobile number did not match your input");
				//modelAndView.setViewName("/narayana/admin/get-student");
				//return modelAndView;
			//}
		} else {
			modelAndView.getModel().put("result",
					"Invalid Username or Mobile number");
			modelAndView.setViewName("/codingstar/admin/get-student");
			return modelAndView;
		}

	}
	
	@RequestMapping(value = "/codingstar/admin/schools", method = RequestMethod.GET)
	public ModelAndView allSchools(HttpSession session) {
		ModelAndView modelAndView=new ModelAndView();
		String client = "CODING";

		List<School> schools = adminService.getAllSchools();
			
		modelAndView.addObject("schools", schools);
		
		modelAndView.setViewName("/codingstar/admin/schools");
		return modelAndView;
		
	}

}
