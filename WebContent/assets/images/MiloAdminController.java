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

import com.msb.bean.BranchEntriesCountBean;
import com.msb.bean.ClassEntriesBean;
import com.msb.bean.TopSchoolsBean;
import com.msb.bean.TopZonesBean;
import com.msb.model.Admin;
import com.msb.model.CompetitionText;
import com.msb.model.MSTCompetition;
import com.msb.model.SchoolUser;
import com.msb.model.UserEntryDisqualify;
import com.msb.model.UserLikeValidation;
import com.msb.service.AdminService;
import com.msb.service.CompetitionService;
import com.msb.service.QuizService;
import com.msb.service.SchoolUserService;
import com.msb.util.MsbUtil;
import com.msb.validator.SchoolRegisterValidator;

@Controller
public class AdminController {
	
	@Autowired
	private QuizService quizService;
	
	@Autowired
	SchoolRegisterValidator registerValidator;
	
	@Autowired
	private SchoolUserService userService;
	
	@Autowired
	private CompetitionService competitionService;
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value = "/adminlogin", method = RequestMethod.GET)
	public ModelAndView login(HttpSession session) {

		Admin userData = (Admin) session.getAttribute("AdminUser");
		if (userData != null)
			return new ModelAndView("/narayana/admin/"+userData.getBranch()+"/branchdetails");
		else
			return new ModelAndView("/narayana/admin/login", "admin", new Admin());
	}
	
	/*
	 * @RequestMapping(value = "/admin/hof", method = RequestMethod.GET) public
	 * ModelAndView hof() {
	 * 
	 * ModelAndView modelAndView=new ModelAndView(); int totalStudentsCount =
	 * userService.getTopStudentsCount();
	 * modelAndView.addObject("totalStudentsCount", totalStudentsCount);
	 * System.out.println("totalStudentsCount"+totalStudentsCount); List<SchoolUser>
	 * topstudents=userService.getTopStudents();
	 * modelAndView.addObject("topstudents", topstudents);
	 * modelAndView.setViewName("/narayana/admin/hof");
	 * 
	 * return modelAndView; }
	 */
	
	
	  @RequestMapping(value = "/admin", method = RequestMethod.GET) public
	  ModelAndView narayanaAdmin() {
		  String client="narayana";
		  ModelAndView modelAndView=new ModelAndView(); 
		  //Admin other = (Admin) session.getAttribute("Admin"); 
		  //if (other != null) {
		  int noOfStudents = adminService.getTotalParticipants(client);
		  modelAndView.addObject("noOfStudents", noOfStudents); 
		  //int paintCount = adminService.getClientMSTEntriesCount(client, "painting");
		  //int musicCount = adminService.getClientMSTEntriesCount(client, "music"); 
		  //int danceCount = adminService.getClientMSTEntriesCount(client, "dance"); 
		  //int speakCount = adminService.getClientMSTEntriesCount(client, "speaking");
		  //modelAndView.addObject("paintCount", paintCount);
		  //modelAndView.addObject("musicCount", musicCount);
		  //modelAndView.addObject("danceCount", danceCount);
		  //modelAndView.addObject("speakCount", speakCount);
		  modelAndView.setViewName("/narayana/admin/index");
		  return modelAndView; 
		  //}
		  //else 
			 // return new ModelAndView("/narayana/admin/login", "admin", new Admin());  
	  
	  }
	  
	  @RequestMapping(value = "/admin/index", method = RequestMethod.GET) public
	  ModelAndView narayanaAdminIndex() {
		  String client="narayana";
		  ModelAndView modelAndView=new ModelAndView(); 
		  //Admin other = (Admin) session.getAttribute("Admin"); 
		  //if (other != null) {
		  int noOfStudents = adminService.getTotalParticipants(client);
		  modelAndView.addObject("noOfStudents", noOfStudents); 
		  //int paintCount = adminService.getClientMSTEntriesCount(client, "painting");
		  //int musicCount = adminService.getClientMSTEntriesCount(client, "music"); 
		  //int danceCount = adminService.getClientMSTEntriesCount(client, "dance"); 
		  //int speakCount = adminService.getClientMSTEntriesCount(client, "speaking");
		  //modelAndView.addObject("paintCount", paintCount);
		  //modelAndView.addObject("musicCount", musicCount);
		  //modelAndView.addObject("danceCount", danceCount);
		  //modelAndView.addObject("speakCount", speakCount);
		  modelAndView.setViewName("/narayana/admin/index");
		  return modelAndView; 
		 // }
		  //else 
			//  return new ModelAndView("/narayana/admin/login", "admin", new Admin());  
	  
	  }
	 
	
	  @RequestMapping(value = "/validateAdminLogin", method = RequestMethod.GET)
		public ModelAndView validateLogin(HttpSession session) {

			Admin userData = (Admin) session.getAttribute("AdminUser");
			if (userData != null) {
				adminService.updateLoginCount(userData.getUsername());
				//if(userData.getPremium()!=0) {
					//userService.updateLoginCount(userData.getUsername());
					//ModelAndView modelAndView = new ModelAndView();
					//modelAndView.addObject("premium", 1);
				//}
				//if(userData.getAccess_level()==1) {
				if(userData.getAccess_level()==3) {
					return new ModelAndView("/narayana/admin/"+userData.getBranch()+"/branchdetails");
				} else if(userData.getAccess_level()==2) {
					return new ModelAndView("/narayana/admin/"+userData.getZone()+"/zonedetails");
				} else {
					return new ModelAndView("/narayana/admin/index");
				}
			} else
				return new ModelAndView("/narayana/admin/login", "admin", new Admin());

		}

		@RequestMapping(value = "/validateAdminLogin", method = RequestMethod.POST)
		public ModelAndView validate(@ModelAttribute("admin") Admin user,
				BindingResult result, RedirectAttributes redirectAttributes,
				HttpSession session,
				@RequestParam(value = "next", required = false) String next) {
			// userValidator.validate(user, result);

			if (user.getUsername() != null && !user.getUsername().isEmpty()
					&& user.getPassword() != null && !user.getPassword().isEmpty()) {
				ModelAndView modelAndView = new ModelAndView();
				System.out.println("in submit" + user);
				String username = user.getUsername();
				String password = user.getPassword();
				Admin userData = adminService.validateUser(username, password);

				if (userData != null) {

						adminService.updateLoginCount(userData.getUsername());
						session.setAttribute("AdminUser", userData);
						System.out.println("Branch :" + userData.getBranch());
						if (next != null && !next.isEmpty()) {
							if(userData.getAccess_level()==3) {
								modelAndView.setViewName("redirect:/admin/"+userData.getBranch()+"/branchdetails");
							} else if(userData.getAccess_level()==2) {
								modelAndView.setViewName("redirect:/admin/"+userData.getZone()+"/zonedetails");
							} else {
								modelAndView.setViewName("redirect:" + next);
							}
						} else {
							if(userData.getAccess_level()==3) {
								modelAndView.setViewName("redirect:/admin/"+userData.getBranch()+"/branchdetails");
							} else if(userData.getAccess_level()==2) {
								modelAndView.setViewName("redirect:/admin/"+userData.getZone()+"/zonedetails");
							} else {
								modelAndView.setViewName("redirect:/admin");
							}
						}
							return modelAndView;
					
				} else {
					modelAndView.getModel().put("AuthError",
							"Invalid UserName / Password");
					modelAndView.setViewName("/narayana/admin/login");
					return modelAndView;
				}
			} else {
				return new ModelAndView("/narayana/admin/login");
			}

		}
	
	@RequestMapping(value = "/adminlogout", method = RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {

		session.removeAttribute("AdminUser");
		session.invalidate();
		return new ModelAndView("/narayana/admin/login", "admin", new Admin());
	}
	
	@RequestMapping(value = "/admin/topzones", method = RequestMethod.GET)
	public ModelAndView topzones(HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		
		Admin userData = (Admin) session.getAttribute("AdminUser");
		List<TopZonesBean> topZones = adminService.getTopZones();

			modelAndView.addObject("topZones", topZones);
			
			modelAndView.setViewName("/narayana/admin/topzones");
			return modelAndView;
	}
	
	@RequestMapping(value = "/admin/topbranches", method = RequestMethod.GET)
	public ModelAndView topbranches(HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		Admin admin = (Admin) session.getAttribute("AdminUser");

		List<TopSchoolsBean> topBranches = adminService.getTopBranches();

			modelAndView.addObject("topBranches", topBranches);
			//modelAndView.addObject("type", type);
			modelAndView.setViewName("/narayana/admin/topbranches");
			return modelAndView;
	}
	
	@RequestMapping(value = "/admin/allzones", method = RequestMethod.GET)
	public ModelAndView allZones(HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		
		Admin userData = (Admin) session.getAttribute("AdminUser");
		List<TopZonesBean> topZones = adminService.getAllZones();

			modelAndView.addObject("topZones", topZones);
			
			modelAndView.setViewName("/narayana/admin/allzones");
			return modelAndView;
	}
	
	@RequestMapping(value = "/admin/allbranches", method = RequestMethod.GET)
	public ModelAndView allBranches(HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		Admin admin = (Admin) session.getAttribute("AdminUser");

		List<TopSchoolsBean> topBranches = adminService.getAllBranches();

			modelAndView.addObject("topBranches", topBranches);
			//modelAndView.addObject("type", type);
			modelAndView.setViewName("/narayana/admin/allbranches");
			return modelAndView;
	}
	
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/admin/disqualify-textentry", method =
	 * RequestMethod.POST) public String disqualiftTextEntry(
	 * 
	 * @ModelAttribute UserEntryDisqualify userEntrDisqualify ) {
	 * 
	 * userEntrDisqualify.setReportDate(MsbUtil.getCurrentDate()); if
	 * (adminService.disqualifyEntry(userEntrDisqualify)) {
	 * adminService.reportUserTextEntry(userEntrDisqualify.getEntry_id()); return
	 * "reported"; } return null;
	 * 
	 * }
	 * 
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/admin/disqualify-mstentry", method =
	 * RequestMethod.POST) public String validateUserLike(
	 * 
	 * @ModelAttribute UserEntryDisqualify userLikeValidation) {
	 * userLikeValidation.setReportDate(MsbUtil.getCurrentDate()); if
	 * (adminService.disqualifyEntry(userLikeValidation)) {
	 * adminService.reportUserMSTEntry( userLikeValidation.getEntry_id()); return
	 * "reported"; } return null;
	 * 
	 * }
	 */

	
	  @RequestMapping(value = "/admin/add-student", method = RequestMethod.GET)
	  public ModelAndView home(HttpSession session) {
		  ModelAndView modelAndView=new ModelAndView(); 
		  Admin other = (Admin) session.getAttribute("Admin"); 
	  
		  modelAndView.setViewName("/narayana/admin/add-student");
		  return modelAndView; 
		   
	  }
	  
	  
	  @RequestMapping(value = "/add-student", method = RequestMethod.POST) 
	  public String submitArticle(@ModelAttribute("admin") SchoolUser other, HttpSession
	  session, BindingResult result) {
		  
		  //other.setPassword(other.getUsername());
		  boolean isStudentSaved = userService.saveSchoolUser(other);
		  if(isStudentSaved) {
			  return "redirect:/admin/add-student?success=true"; 
		  } else
			  return "redirect:/admin/add-student?success=false"; 
	  }
	 
	
	@RequestMapping(value = "/admin/text_entries", method = RequestMethod.GET)
	public ModelAndView texttEntries(HttpSession session) {
		ModelAndView modelAndView=new ModelAndView();
		Admin other = (Admin) session.getAttribute("AdminUser");
		String comp_by = "Narayana";
		String type = "writing";

		List<CompetitionText> entries = adminService.getAllTextEntriesByClient(type, comp_by);

			modelAndView.addObject("entries", entries);
			modelAndView.addObject("type", type);
		
		modelAndView.setViewName("/narayana/admin/text_entries");
		return modelAndView;
		
	}
	
	@RequestMapping(value = "/admin/mst_entries/{type}/{limit}/{offset}", method = RequestMethod.GET)
	public ModelAndView mstEntries(@PathVariable String type, @PathVariable int limit,
			@PathVariable int offset, HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		Admin other = (Admin) session.getAttribute("AdminUser");
		
		String comp_by = "Narayana";
		//int entryCount = adminService.getClientMSTEntriesCount(comp_by, type);
		//modelAndView.addObject("entryCount", entryCount);
		List<MSTCompetition> entries = adminService.getAllMSTEntriesByClient(type, comp_by);

			modelAndView.addObject("entries", entries);
			modelAndView.addObject("type", type);
			modelAndView.addObject("limit", limit);
			modelAndView.addObject("offset", offset);
		
		modelAndView.setViewName("/narayana/admin/mst_entries");
		return modelAndView;
		
	}
	
	@RequestMapping(value = "/admin/{branch}/branchdetails", method = RequestMethod.GET) public
	  ModelAndView narayanaAdminBranch(@PathVariable String branch) { 
		  ModelAndView modelAndView=new ModelAndView();
		  int totalStudents = adminService.getTotalStudentsByBranch(branch); 
		  int noOfStudents = adminService.getTotalParticipantsByBranch(branch);
		  List<SchoolUser> topstudents=adminService.getTopStudentsByBranch(branch);
		  
		  int paintCount = adminService.getClientMSTEntriesCountOfBranch(branch, "painting");
		  int musicCount = adminService.getClientMSTEntriesCountOfBranch(branch, "music"); 
		  int danceCount = adminService.getClientMSTEntriesCountOfBranch(branch, "dance"); 
		  int speakCount = adminService.getClientMSTEntriesCountOfBranch(branch, "speaking");
		  modelAndView.addObject("paintCount", paintCount);
		  modelAndView.addObject("musicCount", musicCount);
		  modelAndView.addObject("danceCount", danceCount);
		  modelAndView.addObject("speakCount", speakCount);

		  List<ClassEntriesBean> entriesCount=adminService.getTotalParticipantsByBrnachClassWise(branch);
		  modelAndView.addObject("entriesCount", entriesCount);
		  
		  modelAndView.addObject("totalStudents", totalStudents);
		  modelAndView.addObject("topstudents", topstudents);
		  modelAndView.addObject("noOfStudents", noOfStudents);
		  modelAndView.setViewName("/narayana/admin/branchdetails");
		  return modelAndView; 
	  
	  }
	
	@RequestMapping(value = "/admin/{branch}/branch_text_entries", method = RequestMethod.GET)
	public ModelAndView texttEntries(HttpSession session, @PathVariable String branch) {
		ModelAndView modelAndView=new ModelAndView();
		String type = "writing";

		List<CompetitionText> entries = adminService.getAllTextEntriesByBranch(type, branch);

			modelAndView.addObject("entries", entries);
			modelAndView.addObject("type", type);
			modelAndView.addObject("branch", branch);
		
		modelAndView.setViewName("/narayana/admin/text_branchentries");
		return modelAndView;
		
	}
	
	@RequestMapping(value = "/admin/{branch}/{type}/branch_mst_entries", method = RequestMethod.GET)
	public ModelAndView mstEntries(@PathVariable String type, @PathVariable String branch, HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		
		List<MSTCompetition> entries = adminService.getAllMSTEntriesByBranch(type, branch);

			modelAndView.addObject("entries", entries);
			modelAndView.addObject("type", type);
			modelAndView.addObject("branch", branch);
		
		modelAndView.setViewName("/narayana/admin/mst_branchentries");
		return modelAndView;
		
	}
	
	@RequestMapping(value = "/admin/{zone}/zonedetails", method = RequestMethod.GET) public
	  ModelAndView narayanaAdminZone(@PathVariable String zone) { 
		  ModelAndView modelAndView=new ModelAndView();
		  int totalStudents = adminService.getTotalStudentsByZone(zone);
		  int noOfStudents = adminService.getTotalParticipantsByZone(zone);
		  List<TopSchoolsBean> topBranches = adminService.getTopBranchesByZone(zone);
		  List<SchoolUser> topstudents=adminService.getTopStudentsByZone(zone);
		  
		  int paintCount = adminService.getClientMSTEntriesCountOfZone(zone, "painting");
		  int musicCount = adminService.getClientMSTEntriesCountOfZone(zone, "music"); 
		  int danceCount = adminService.getClientMSTEntriesCountOfZone(zone, "dance"); 
		  int speakCount = adminService.getClientMSTEntriesCountOfZone(zone, "speaking");
		  modelAndView.addObject("paintCount", paintCount);
		  modelAndView.addObject("musicCount", musicCount);
		  modelAndView.addObject("danceCount", danceCount);
		  modelAndView.addObject("speakCount", speakCount);
		  
		  modelAndView.addObject("totalStudents", totalStudents);
		  modelAndView.addObject("topstudents", topstudents);
		  modelAndView.addObject("topBranches", topBranches);
		  modelAndView.addObject("noOfStudents", noOfStudents);
		  modelAndView.setViewName("/narayana/admin/zonedetails");
		  return modelAndView; 
	  
	  }
	
	@RequestMapping(value = "/admin/{zone}/zone_text_entries", method = RequestMethod.GET)
	public ModelAndView textZoneEntries(HttpSession session, @PathVariable String zone) {
		ModelAndView modelAndView=new ModelAndView();
		String type = "writing";

		List<CompetitionText> entries = adminService.getAllTextEntriesByZone(type, zone);

			modelAndView.addObject("entries", entries);
			modelAndView.addObject("type", type);
			modelAndView.addObject("zone", zone);
		
		modelAndView.setViewName("/narayana/admin/text_branchentries");
		return modelAndView;
		
	}
	
	@RequestMapping(value = "/admin/{zone}/{type}/zone_mst_entries", method = RequestMethod.GET)
	public ModelAndView mstZoneEntries(@PathVariable String type, @PathVariable String zone, HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		
		List<MSTCompetition> entries = adminService.getAllMSTEntriesByZone(type, zone);

			modelAndView.addObject("entries", entries);
			modelAndView.addObject("type", type);
			modelAndView.addObject("zone", zone);
		
		modelAndView.setViewName("/narayana/admin/mst_branchentries");
		return modelAndView;
		
	}
	
	@RequestMapping(value = "/admin/get-student-details", method = RequestMethod.GET)
	public ModelAndView getStudent() {
		return new ModelAndView("/narayana/admin/get-student");
	}
	
	@RequestMapping(value = "/admin/getuserdetails", method = RequestMethod.POST)
	public ModelAndView userDetails(@RequestParam String username, HttpSession session) {
		// userValidator.validate(user, result);

		SchoolUser userData = userService.getStudentDetails(username);
		ModelAndView modelAndView = new ModelAndView();
		if (userData != null) {
			System.out.println("in submit" + username);
			
			//if (userData.getPass().contains(pass)) {

			modelAndView.getModel().put("result",
					"<table class='table no-footer table-bordered'><thead></thead>"
					+ "<tbody><tr><td>Name</td><td>"+userData.getName()+"</td></tr><tr><td>Username</td><td>"+userData.getUsername()+""
					+"</td></tr><tr><td>Password</td><td>"+userData.getPassword()+"</td></tr>"
					+ "<tr><td>Branch</td><td>"+ userData.getBranch()+"</td></tr><tr><td>Zone</td><td>"+userData.getSchool()+""
					+ "</tbody></table>");
					modelAndView.setViewName("/narayana/admin/get-student");
					return modelAndView;
			//} else {
				//modelAndView.getModel().put("result",
						//"Last 4 digits of your mobile number did not match your input");
				//modelAndView.setViewName("/narayana/admin/get-student");
				//return modelAndView;
			//}
		} else {
			modelAndView.getModel().put("result",
					"Invalid Username or Admission number");
			modelAndView.setViewName("/narayana/admin/get-student");
			return modelAndView;
		}

	}
	
	@RequestMapping(value = "/admin/{branch}/non_participants", method = RequestMethod.GET)
	public ModelAndView branchNonParticipants(HttpSession session, @PathVariable String branch) {
		ModelAndView modelAndView=new ModelAndView();

		List<SchoolUser> user = adminService.getNonParticipantsByBranch(branch);

		modelAndView.addObject("user", user);
		
		modelAndView.setViewName("/narayana/admin/non_participants");
		return modelAndView;
		
	}
	
	@RequestMapping(value = "/admin/list", method = RequestMethod.GET)
	public ModelAndView adminList(HttpSession session) {
		ModelAndView modelAndView=new ModelAndView();

		List<Admin> adminList = adminService.getAdminList();

		modelAndView.addObject("adminList", adminList);
		
		modelAndView.setViewName("/narayana/admin/list");
		return modelAndView;
		
	}
	
	@RequestMapping(value = "/results", method = RequestMethod.GET)
	public ModelAndView results() {
		return new ModelAndView("/narayana/results");
	}
	
	@RequestMapping(value = "/results/zonewise", method = RequestMethod.GET)
	public ModelAndView zoneWiseResults() {
		return new ModelAndView("/narayana/zonewise");
	}

}
