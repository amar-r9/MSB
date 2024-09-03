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
import org.jboss.logging.annotations.Param;
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
import com.msb.model.CompetitionText;
import com.msb.model.MSTCompetition;
import com.msb.model.Quiz;
import com.msb.model.QuizGenre;
import com.msb.model.QuizPoints;
import com.msb.model.QuizScores;
import com.msb.model.SchoolUser;
import com.msb.model.UploadATalent;
import com.msb.model.SchoolUser.SaveUser;
import com.msb.model.SchoolympicsSchool;
import com.msb.service.CompetitionService;
import com.msb.service.MSBService;
import com.msb.service.QuizService;
import com.msb.service.SchoolUserService;
import com.msb.service.SchoolympicsService;
import com.msb.util.MsbUtil;
import com.msb.validator.RegisterValidator;
import com.msb.validator.TextCompetitionValidator;

@Controller
public class SchoolympicsController {
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private SchoolympicsService schoolService;
	
	@Autowired
	private CompetitionService competitionService;

	@Autowired
	RegisterValidator registerValidator;
	
	@Autowired
	private SchoolUserService userService;
	
	@Autowired
	private QuizService quizService;
	
	@Autowired
	private MSBService msbService;
	
	@Autowired
	private TextCompetitionValidator textCompetitionValidator;

	
	@RequestMapping(value = "/schoolympics", method = RequestMethod.GET)
	public String schoolympics(ModelMap map) {
		return "/schoolympics/index";
	}
	
	@RequestMapping(value = "/schoolympics/index", method = RequestMethod.GET)
	public String schoolympicsIndex(ModelMap map) {
		return "/schoolympics/index";
	}
	
	@RequestMapping(value = "/schoolympics/register", method = RequestMethod.GET)
	public ModelAndView schoolympicsRegister(HttpSession session) {
		//SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		SchoolUser otherData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (otherData != null)
			return new ModelAndView("/schoolympics/index");
		else
			return new ModelAndView("/schoolympics/register", "user", new SchoolUser());
	}

	@RequestMapping(value = "/schoolympics/register-landing", method = RequestMethod.GET)
	public ModelAndView schoolympicsRegisterSuccess() {

		return new ModelAndView("/schoolympics/register-landing");

	}

	@RequestMapping(value = "/schoolympics/login", method = RequestMethod.GET)
	public ModelAndView schoolympicsLogin(HttpSession session) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		//Other otherData = (Other) session.getAttribute("Other");
		if (userData != null)
			return new ModelAndView("/schoolympics/index");
		else
			return new ModelAndView("/schoolympics/login", "user", new SchoolUser());
	}
	
	@RequestMapping(value = "/schoolympics/validateLogin", method = RequestMethod.GET)
	public ModelAndView schoolympicsValidateLogin(HttpSession session) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null)
			return new ModelAndView("/schoolympics/index");
		else
			return new ModelAndView("/schoolympics/login", "user", new SchoolUser());

	}

	@RequestMapping(value = "/schoolympics/validateLogin", method = RequestMethod.POST)
	public ModelAndView schoolympicsValidate(@ModelAttribute("user") SchoolUser user, 
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
			SchoolUser userData = userService.validateUser(username, password);

			if (userData != null) {

				if (userData.getActive() == 1) {
					session.setAttribute("SchoolStudent", userData);
					if (next != null && !next.isEmpty())
						modelAndView.setViewName("redirect:" + next);
					else
						modelAndView.setViewName("redirect:/schoolympics");
					return modelAndView;
				} else {
					modelAndView.getModel().put("AuthError",
							"Please activate your account before login");
					modelAndView.setViewName("/schoolympics/login");
					return modelAndView;
				}
			} else {
				modelAndView.getModel().put("AuthError",
						"Invalid UserName / Password");
				modelAndView.setViewName("/schoolympics/login");
				return modelAndView;
			}
		} else {
			return new ModelAndView("/schoolympics/login");
		}

	}

	@RequestMapping(value = "/schoolympics/logout", method = RequestMethod.GET)
	public ModelAndView schoolympicsLogout(HttpSession session) {

		session.removeAttribute("SchoolStudent");
		session.invalidate();
		return new ModelAndView("/schoolympics/login", "user", new SchoolUser());
	}
	
	@RequestMapping(value = "/schoolympics/validateGoogleLogin", method = RequestMethod.POST)
	public ModelAndView validateSchoolympicsGoogleLogin(@RequestParam String username,
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
		//userData.setClient("MILO");
		
		if (userService.isUserExist(username)) {
			SchoolUser userDetails = userService.getStudentDetails(username);
			if(userDetails.getSocialLogin()==1) {
				
				session.setAttribute("SchoolStudent", userDetails);
				System.out.println("User Exist" + username);
				if (next != null && !next.isEmpty())
					modelAndView.setViewName("redirect:" + next);
				else
					modelAndView.setViewName("redirect:/schoolympics");
					return modelAndView;
			
			} else {	
				modelAndView.addObject("registeredalready", true);
				return new ModelAndView("/schoolympics/login");
			}
			
		} else {
			
			userService.saveSchoolUser(userData);
			SchoolUser loginuserData = userService.getStudentDetails(username);
			session.setAttribute("SchoolStudent", loginuserData);
			if (next != null && !next.isEmpty())
				modelAndView.setViewName("redirect:" + next);
			else
				modelAndView.setViewName("redirect:/schoolympics");
				return modelAndView;
		}

	}
	
	@RequestMapping(value = "/schoolympics/googlelogout", method = RequestMethod.GET)
	public ModelAndView schoolympicsGoogleLogout(HttpSession session) {

		session.removeAttribute("SchoolStudent");
		session.invalidate();
		return new ModelAndView("/schoolympics/login", "user", new SchoolUser());
	}
	
	@RequestMapping(value = "/schoolympics/doregister", method = RequestMethod.POST)
	public ModelAndView register(
			@ModelAttribute("user") @Validated({ SaveUser.class }) SchoolUser other,
			BindingResult result, HttpSession session) throws IOException {
		registerValidator.validate(other, result);
		if (!result.hasErrors()) {
			System.out.println("NO ERRORS");
			boolean isStudentSaved = userService.saveSchoolUser(other);
			System.out.println("student saved");
			if (isStudentSaved) {
					return new ModelAndView(
							"redirect:/schoolympics/register-landing?success=true");
			} else
				return new ModelAndView(
						"redirect:/schoolympics/register-landing?success=false");
		} else {
			return new ModelAndView("/schoolympics/register");
		}

	}
	
	/* Signup with mobile number/Otp starts */
	
	@RequestMapping(value = "/schoolympics/signup", method = RequestMethod.GET)
	public String schoolympicsSignup(ModelMap map) {
		return "/schoolympics/signup";
	}
	
	@ResponseBody
	@RequestMapping(value = "/schoolympics/verify-otp", method = RequestMethod.POST)
	public ModelAndView schoolympicsSendOTP(@RequestParam String phone, HttpSession session) {

		ModelAndView modelAndView = new ModelAndView();
		if (phone != null) {

			if (msbService.isMobileExist(phone)) {
				modelAndView.addObject("phone", true);
				modelAndView.setViewName("/schoolympics/signup");
			} else {
				String mobile = ""+"91"+phone+"";
				System.out.println("mobile: "+mobile);
				Random rand = new Random();
				int otp = rand.nextInt(900000) + 100000;
				
				boolean send = msbService.sendSMS(mobile, otp);
				if (send) {
					modelAndView.addObject("phone", phone);
					modelAndView.addObject("otp", otp);
					modelAndView.setViewName("/schoolympics/verify-otp");
					return modelAndView;
				} else {
					modelAndView.addObject("success", false);
					modelAndView.setViewName("/schoolympics/signup");
					
				}
			}
		} else {
			modelAndView.addObject("phone", null);
			modelAndView.setViewName("/schoolympics/signup");
		}
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/schoolympics/update-password", method = RequestMethod.POST)
	public ModelAndView schoolympicsSendSchoolOTP(@RequestParam String phone, @RequestParam String verify, 
			@RequestParam String otp, HttpSession session) {

		ModelAndView modelAndView = new ModelAndView();
		if (verify != null) {

			if (verify.contentEquals(otp)) {
				modelAndView.addObject("phone", phone);
				modelAndView.setViewName("/schoolympics/update-password");
			} else {
				modelAndView.addObject("phone", phone);
				modelAndView.addObject("success", false);
				modelAndView.addObject("otp", otp);
				modelAndView.setViewName("/schoolympics/verify-otp");
			}
		} else {
			modelAndView.addObject("phone", phone);
			modelAndView.addObject("otp", otp);
			modelAndView.addObject("status", null);
			modelAndView.setViewName("/schoolympics/verify-otp");
		}
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/schoolympics/updatePassword", method = RequestMethod.POST)
	public ModelAndView schoolympicsUpdateSchoolPassword(@RequestParam String phone, @RequestParam String password,
			@RequestParam String cpassword, HttpSession session) {

		ModelAndView modelAndView = new ModelAndView();
		if (password != null && phone != null && cpassword != null) {

			SchoolUser user = new SchoolUser();
			user.setPhone(phone);
			user.setPassword(password);
			user.setUsername(phone);
			//user.setClient("MILO");
			if (password.equalsIgnoreCase(cpassword)) {
				if(msbService.updatePassword(user)) {
					modelAndView.addObject("success", true);
					modelAndView.setViewName("/schoolympics/login");
				} else {
					modelAndView.addObject("success", false);
					modelAndView.addObject("phone", phone);
					modelAndView.setViewName("/schoolympics/update-password");
				}
			} else {
				modelAndView.addObject("phone", phone);
				modelAndView.addObject("status", false);
				modelAndView.setViewName("/schoolympics/update-password");
			}
		} else {
			modelAndView.addObject("phone", phone);
			modelAndView.addObject("status", null);
			modelAndView.setViewName("/schoolympics/update-password");
		}
		return modelAndView;
	}
	
	
	/* Signup with mobile number/Otp ends*/
	
	
	
	
	/* competitions controller starts */
	
	@RequestMapping(value = "/schoolympics/competitions", method = RequestMethod.GET)
	public String schoolympicsCompetitions() {
		return "/schoolympics/competitions/competitions";
	}
	
	@RequestMapping(value = "/schoolympics/competition_list", method = RequestMethod.GET)
	public String schoolympicscompetitionsList() {
		return "/schoolympics/competitions/competition_list";
	}
	
	@RequestMapping(value = "/schoolympics/{competition_type}/competition-list", method = RequestMethod.GET)
	public ModelAndView getSchoolympicsCompetitions(
			@PathVariable(value = "competition_type") String competition_type) {

		List<Competition> competitions = competitionService
				.getCompetitionsForSchool(
						MsbUtil.getCompetitionCategoryID(competition_type));
		System.out.println("Comp category :" +MsbUtil.getCompetitionCategoryID(competition_type));

		if (competitions != null && competitions.size() > 0) {
			ModelAndView modelAndView = new ModelAndView();

			modelAndView.addObject("competition_type", competition_type);
			modelAndView.addObject("competitionList", competitions);
			
			modelAndView.setViewName("/schoolympics/competitions/competition_list");
			return modelAndView;
		} else{
			
				return new ModelAndView("redirect:/schoolympics/competition_list?success=false&cat="+competition_type+"");
		}
			

	}
	
	@RequestMapping(value = "/schoolympics/user/mst_competition_saved", method = RequestMethod.GET)
	public String schoolympicsPaintingCompetitionSaved() {
		return "/schoolympics/competitions/mst_competition_saved";
	}

	@RequestMapping(value = "/schoolympics/user/text-competition-saved", method = RequestMethod.GET)
	public String schoolympicstextCompetitionSaved() {
		return "/schoolympics/competitions/text_competition_saved";
	}

	@RequestMapping(value = "/schoolympics/user/upload_a_talent_saved", method = RequestMethod.GET)
	public String schoolympicswiytCompetitionSaved() {
		return "/schoolympics/competitions/upload_a_talent_saved";
	}

	@RequestMapping(value = "/schoolympics/user/{type}/text_competition/{id}", method = {
			RequestMethod.POST, RequestMethod.GET })
	public ModelAndView schoolympicsCompetitionsSubmissionForm(
			@PathVariable("id") String id,@PathVariable("client") String client,
			@PathVariable("type") String type, HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		Competition competition = competitionService
				.getCompetitionDetails(Integer.parseInt(id));
		if (competition != null) {
			SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
			competitionService.updateCompetitionVisits(competition);
			
			modelAndView.addObject("client", client);
			modelAndView.addObject("type", type);
			modelAndView.addObject("competition", competition);
			modelAndView.setViewName("/schoolympics/competitions/text_competition");
			return modelAndView;
		} else
			return new ModelAndView("redirect:/schoolympics/competitions?success=false");
	}

	@RequestMapping(value = "/schoolympics/user/{type}/competition/{id}", method = {
			RequestMethod.POST, RequestMethod.GET })
	public ModelAndView schoolympicsMstCompetitionsSubmissionForm(
			@PathVariable("id") String id,
			@PathVariable("type") String type, HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		Competition competition = competitionService
				.getCompetitionDetails(Integer.parseInt(id));
		if (competition != null) {
			SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
			//competitionService.updateCompetitionVisits(competition);

			modelAndView.addObject("type", type);
			modelAndView.addObject("competition", competition);
			modelAndView.setViewName("/schoolympics/competitions/mst_competition");
			return modelAndView;
		} else
			return new ModelAndView("redirect:/schoolympics/competitions?success=false");
	}

	@RequestMapping(value = "/schoolympics/user/upload_a_talent", method = {
			RequestMethod.POST, RequestMethod.GET })
	public ModelAndView schoolympicsUatSubmissionForm(
			HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		
		modelAndView.setViewName("/schoolympics/competitions/upload_a_talent");
		return modelAndView;

	}

	@RequestMapping(value = "/schoolympics/user/submit-text-competition", method = RequestMethod.POST)
	public ModelAndView submitSchoolympicsCompetitionText(
			@ModelAttribute("competitionText") CompetitionText competitionText,
			HttpSession session, BindingResult result) throws IOException {
			textCompetitionValidator.validate(competitionText, result);
		if (!result.hasErrors()) {
			SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");

			//Integer user_total_competition_submissions = competitionService
					//.getUserTotalTextSubmissions(
							//userData.getUsername(),
							//competitionText.getEntry_type());
			//if (user_total_competition_submissions >= 3)
				//return new ModelAndView(
							//"redirect:/school/user/text-competition-saved?"+competitionText.getEntry_type()+"&success=false&exceeded=true");
			//else {
				competitionText.setUser_name(userData.getUsername());
				Integer id = competitionService
						.saveTextCompetition(competitionText);
				if (id != 0) {
					
					userData.setPoints(userData.getPoints()+20);
					userService.updateUserDetails(userData);
					//String subject = "Thank You For Participating at MySuperBrain";
					//String entrytype = "Text";
					//String link = "https://mysuperbrain.in/view/mysuperbrain/competition_textentry/"+id;
					//String body = MsbUtil.buildEntrySubmissionMail(userData.getUsername(), entrytype, link, id);
					//mailService.sendMail(subject, body, userData.getMail(), false, "Submitted Your Entry Successfully");
					return new ModelAndView(
							"redirect:/schoolympics/user/text-competition-saved?type="+competitionText.getEntry_type()+"&success=true&id="
									+ id);
				} else
					return new ModelAndView(
							"redirect:/schoolympics/user/text-competition-saved?type="+competitionText.getEntry_type()+"&success=false");
			//}
		} else {
			return new ModelAndView("redirect:/schoolympics/user/text_competition/"
					+ competitionText.getEntry_type()
					+ "?success=false&input=false");
		}

	}
	
	@RequestMapping(value = "/schoolympics/user/submit-mst-competition", method = RequestMethod.POST)
	public ModelAndView submitSchoolympicsSinging(
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
				//String subject = "Thank You For Participating at MySuperBrain";
				//String entrytype = "Singing";
				//String link = "https://mysuperbrain.in/view/mysuperbrain/competition_music/"+id;
				//String body = MsbUtil.buildEntrySubmissionMail(userData.getUsername(), entrytype, link, id);
				//mailService.sendMail(subject, body, userData.getMail(), false, "Submitted Your Entry Successfully");
				return new ModelAndView(
						"redirect:/schoolympics/user/mst_competition_saved?type="+mst.getSubmission_type()+"&success=true&id="
								+ id);
			} else
				return new ModelAndView(
						"redirect:/schoolympics/user/mst_competition_saved?type="+mst.getSubmission_type()+"&success=false");
		

	}

	@RequestMapping(value = "/schoolympics/user/submit-uat-competition", method = RequestMethod.POST)
	public ModelAndView submitSchoolympicsUploadATalent(
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
				userData.setPoints(userData.getPoints()+20);
				userService.updateUserDetails(userData);
				return new ModelAndView(
						"redirect:/schoolympics/user/upload_a_talent_saved?success=true&id="
								+ id);
			} else
				return new ModelAndView(
						"redirect:/schoolympics/user/upload_a_talent_saved?success=false");
		} else {

			uat.setUser_name(userData.getUsername());

			String filename = userData.getUsername() + "_"
					+ competitionService.getUploadATalentMaxID() + "."
					+ uat_attachment.getOriginalFilename().split("\\.")[1];
			uat.setEntry_file_name(filename);
			Integer id = competitionService.saveUploadATalent(uat);

			if (id != 0) {
				uploadFile(filename, uat_attachment, "UAT");
				userData.setPoints(userData.getPoints()+20);
				userService.updateUserDetails(userData);
				//String subject = "Thank You For Participating at MySuperBrain";
				//String entrytype = "What is your Talent";
				//String link = "https://mysuperbrain.in/view/mysuperbrain/competition_wiyt/"+id;
				//String body = MsbUtil.buildEntrySubmissionMail(userData.getUsername(), entrytype, link, id);
				//mailService.sendMail(subject, body, userData.getMail(), false, "Submitted Your Entry Successfully");
				return new ModelAndView(
						"redirect:/schoolympics/user/upload_a_talent_saved?success=true&id="
								+ id);
			} else
				return new ModelAndView(
						"redirect:/schoolympics/user/upload_a_talent_saved?success=false");
		}

	}

	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;

	}

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
	
	
	
	
	
	@RequestMapping(value = "/schoolympics/view/text_competition/{id}", method = RequestMethod.GET)
	public ModelAndView textschoolympicsCompetitionEntryView(@PathVariable("id") String id) {
		ModelAndView modelAndView = new ModelAndView();
		CompetitionText competitionText = competitionService
				.getTextCompetitionSubmission(Integer.parseInt(id));
		//List<EntryComments> comments=competitionService.getEntryComments(Integer.parseInt(id), "TEXT");
		modelAndView.addObject("entry", competitionText);
		//modelAndView.addObject("comments", comments);
		
		SchoolUser entryuser = userService.getStudentDetails(competitionText.getUser_name());
		modelAndView.addObject("entryuser", entryuser);
		
		int nextEntry=competitionService.getNextOrPreviousTextId(competitionText.getId(), true, false);
		int previousEntry=competitionService.getNextOrPreviousTextId(competitionText.getId(), false, true);	
		if(nextEntry!=0)
		modelAndView.addObject("nextEntry", nextEntry);
		if(previousEntry!=0)
		modelAndView.addObject("previousEntry", previousEntry);
		competitionService.saveTextEntryVisit(competitionText.getId());
		
		
		modelAndView.setViewName("/schoolympics/entries/view_text_competition");
		return modelAndView;

	}

	
	@RequestMapping(value = "/schoolympics/view/mst_competition/{id}", method = RequestMethod.GET)
	public ModelAndView mstschoolympicsCompetitionEntryView(
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
		
		modelAndView.setViewName("/schoolympics/entries/view_mst_competition");
		return modelAndView;

	}

	@RequestMapping(value = "/schoolympics/view/uat_competition/{id}", method = RequestMethod.GET)
	public ModelAndView uatschoolympicsCompetitionEntryView(@PathVariable("id") String id) throws IOException {
		ModelAndView modelAndView = new ModelAndView();
		UploadATalent uat = competitionService
				.getUploadATalentSubmission(Integer.parseInt(id));
		//List<EntryComments> comments=competitionService.getEntryComments(Integer.parseInt(id), "WIYT");
		String wordDocPath = null;
		String entryTextString=null;
		//if (uat.getEntry_type().equals("text")) {
			//wordDocPath = servletContext.getRealPath("/")
					//+ "user_images/Comp_Sub/UAT/" + uat.getEntry_file_name();
			//entryTextString=MsbUtil.readWordDocument(wordDocPath,uat.getEntry_file_name());
		//}
		
		modelAndView.addObject("textEntryContent", entryTextString);
		modelAndView.addObject("uat", uat);
		//modelAndView.addObject("comments", comments);
		SchoolUser entryuser = userService.getStudentDetails(uat.getUser_name());
		modelAndView.addObject("entryuser", entryuser);		

		int nextEntry=competitionService.getNextOrPreviousUatId(uat.getId(), true, false);
		int previousEntry=competitionService.getNextOrPreviousUatId(uat.getId(), false, true);
		if(nextEntry!=0)
		modelAndView.addObject("nextEntry", nextEntry);
		if(previousEntry!=0)
		modelAndView.addObject("previousEntry", previousEntry);
		competitionService.saveUatEntryVisit(uat.getId());
		if(uat.getVisits()==99){
			//String subject = "Congratulations you've got 100 views for your entry at MySuperBrain";
			//String entrytype = "What is your talent";
			//String link = "https://mysuperbrain.in/view/mysuperbrain/competition_wiyt/"+id;
			//String body = MsbUtil.buildEntryViewsMail(entryuser.getUsername(), entrytype, link, Integer.parseInt(id));
			//mailService.sendMail(subject, body, entryuser.getMail(), false, "MySuperBrain");
		}
		
		modelAndView.setViewName("/schoolympics/entries/view_uat_competition");
		return modelAndView;

	}
	
	/* competitions controller ends */
	
	
/* test controller */
	
	@RequestMapping(value = "/schoolympics/tests/{client}", method = RequestMethod.GET)
	public ModelAndView showSchoolTestsCategories(@PathVariable String client) {
		ModelAndView modelAndView = new ModelAndView();
		List<QuizGenre> quizGenres = quizService.getAllQuizGenres();
		modelAndView.addObject("quizGenres", quizGenres);
		modelAndView.addObject("client", client);
		modelAndView.setViewName("/schoolympics/tests/test_categories");
		return modelAndView;
	}

	@RequestMapping(value = "/schoolympics/tests/{client}/{usersegment}/{categoryid}/{offset}", method = RequestMethod.GET)
	public ModelAndView getschoolympicsCategoryTests(@PathVariable String client, @PathVariable int categoryid,
			@PathVariable int offset, @PathVariable String usersegment) {
		ModelAndView modelAndView = new ModelAndView();
		List<Quiz> quizList = quizService.getQuizzesBasedOnClient(client, categoryid, offset, 10, usersegment);
		int totalQuizCount = quizService.getQuizzesCountBasedOnClient(client, categoryid, usersegment);
		modelAndView.addObject("quizList", quizList);
		modelAndView.addObject("usersegment", usersegment);
		modelAndView.addObject("offset", offset);
		modelAndView.addObject("categoryid", categoryid);
		modelAndView.addObject("totalQuizCount", totalQuizCount);
		modelAndView.addObject("client", client);
		modelAndView.setViewName("/schoolympics/tests/user_tests");

		return modelAndView;
	}

	@RequestMapping(value = "/schoolympics/user/taketest/{id}", method = RequestMethod.GET)
	public ModelAndView takeschoolympicsTest(@PathVariable int id, HttpSession session) {
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		// boolean isPremium = isStudentPremium(userData);
		ModelAndView modelAndView = new ModelAndView();
		//int testsCount = quizService.getStudentDayQuizCount(userData.getUsername());
		//System.out.println("testsCount" + testsCount);
		// if (isPremium || testsCount< 3) {
		Quiz quiz = quizService.getQuiz(id);
		LinkedHashMap<String, List<String>> quizBuild = MsbUtil.buildQuiz(quiz.getQuestions(), quiz.getKeyset());

		/* check whether user taken the test or not */
		System.out.println("QuizId" + quiz.getId());
		boolean isTestTaken = quizService.isStudenTakentest(quiz.getId(), userData.getUsername());

		/* get user segment */
		//String user_segment = MsbUtil.getUserSegmentBasedOnClassStudyingForTests(userData.getStandard());

		/* check whether user segment and quiz category is same or not */
		//boolean testAndUserSegmentSame = MsbUtil.isUserSegmentSameAsTestCategory(user_segment, quiz.getCategory());

		//modelAndView.addObject("isUserCategory", testAndUserSegmentSame);
		modelAndView.addObject("isTestTaken", isTestTaken);
		modelAndView.addObject("quizBuild", quizBuild);
		modelAndView.addObject("quiz", quiz);
		modelAndView.setViewName("/schoolympics/tests/take-test");
		// } else {
		// modelAndView.setViewName("/srichaitanya/tests/test-count-exceeded");
		// }
		return modelAndView;
	}

	/*
	 * @RequestMapping(value = "/school/user/submittest/{id}", method =
	 * RequestMethod.POST) public String submitSchoolTest(@PathVariable int id,
	 * 
	 * @RequestParam Map<String, String> paramsMap, RedirectAttributes
	 * redirectAttributes, HttpSession session) { SchoolUser userData = (SchoolUser)
	 * session.getAttribute("SchoolStudent"); Quiz quiz = quizService.getQuiz(id);
	 * int totalQuestionsAttempted = 0; int correctAnswers = 0; StringBuffer
	 * studentAsnwersString = new StringBuffer(); char[] answers =
	 * quiz.getResult().toCharArray(); //
	 * System.out.println("answer string length"+quiz.getResult().length()); for
	 * (int i = 0; i < answers.length; i++) { String answer; if ((answer =
	 * paramsMap.get("qno" + (i + 1))) != null) { totalQuestionsAttempted++;
	 * studentAsnwersString.append(answer); if
	 * (answer.equals(String.valueOf(answers[i]))) { correctAnswers++; } } else {
	 * studentAsnwersString.append("X"); } }
	 * 
	 * for (Entry<String, String> entry : paramsMap.entrySet()) {
	 * System.out.println(entry.getKey() + "::" + entry.getValue()); }
	 * 
	 * To display on test submission jsp page
	 * redirectAttributes.addFlashAttribute("correct", correctAnswers);
	 * redirectAttributes.addFlashAttribute("attempted", totalQuestionsAttempted);
	 * 
	 * 
	 * if all answers are correct 5 bonus points other wise 2 points for each
	 * question
	 * 
	 * int studetnScore = (correctAnswers == quiz.getNoq()) ? ((correctAnswers * 2)
	 * + 5) : (correctAnswers * 2);
	 * 
	 * Quiz Score QuizScores quizScores = new QuizScores();
	 * quizScores.setQuiz_id(quiz.getId());
	 * quizScores.setUser_name(userData.getUsername());
	 * quizScores.setAnswers(studentAsnwersString.toString());
	 * quizScores.setMax_score(quiz.getNoq() * 2);
	 * quizScores.setScore(studetnScore);
	 * 
	 * if (paramsMap.get("isTestTaken").equals("yes")) {
	 * quizService.saveQuizScores(quizScores); } else if
	 * (paramsMap.get("isUserCategory").equals("no")) {
	 * quizService.saveQuizScores(quizScores); } else if
	 * (paramsMap.get("isTestTaken").equals("no") &&
	 * paramsMap.get("isUserCategory").equals("yes")) { String totalTime = "00:" +
	 * String.format("%02d", quiz.getDuration()) + ":00";
	 * 
	 * Quiz Points QuizPoints quizPoints = new QuizPoints();
	 * quizPoints.setQuiz_id(quiz.getId());
	 * quizPoints.setSubmission_date(MsbUtil.getCurrentDate());
	 * quizPoints.setAnswers(studentAsnwersString.toString());
	 * quizPoints.setPoints(studetnScore);
	 * quizPoints.setUser_name(userData.getUsername());
	 * quizPoints.setCompleted_time(MsbUtil.getSqlTimeDiff(totalTime,
	 * paramsMap.get("completedTime"))); quizService.saveQuizScores(quizScores);
	 * quizService.saveQuizPoints(quizPoints);
	 * userData.setPoints(userData.getPoints()+studetnScore);
	 * userService.updateUserPoints(userData.getUsername(), studetnScore);
	 * 
	 * 
	 * }
	 * 
	 * //if(!isStudentPremium(userData)){
	 * //quizService.updateStudentDayQuizCount(userData.getUsername());
	 * //System.out.println("Update Day test count"); //} return
	 * "redirect:/school/user/test-submission";
	 * 
	 * }
	 */
	@RequestMapping(value = "/schoolympics/user/test-submission", method = RequestMethod.GET)
	public ModelAndView showschoolympicsTestSubmission(HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();

		modelAndView.setViewName("/schoolympics/tests/submit-test");
		return modelAndView;
	}
	
	@RequestMapping(value = "/schoolympics/user/submittest/{id}", method = RequestMethod.POST)
	public String submitschoolympicsTest(@PathVariable int id,
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

		redirectAttributes.addFlashAttribute("studetnScore", studetnScore);
		redirectAttributes.addFlashAttribute("studetnName", userData.getUsername());
		
		if (paramsMap.get("isTestTaken").equals("yes")) {
			//quizService.saveQuizScores(quizScores);
			return "redirect:/schoolympics/user/test-submission?usr="+userData.getUsername()+"&qid="+quiz.getId()+"";
			
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
		
		return "redirect:/schoolympics/user/test-submission?usr="+userData.getUsername()+"&qid="+quiz.getId()+"";

	}
	
	@RequestMapping(value = "/schoolympics/test-result/{id}", method = RequestMethod.GET)
	public ModelAndView shareschoolympicsTestResult(@PathVariable String id, @Param String usr, HttpSession session) {
		//SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		ModelAndView modelAndView = new ModelAndView();
			QuizScores quizScore = quizService.getQuizResult(id, usr);
			System.out.println("User: "+usr);
			Quiz quiz = quizService.getQuizByName(id);
			SchoolUser quizUserData = userService.getStudentDetails(usr);
			//String name = quizUserData.getName();
			String quizName = quiz.getName();
			modelAndView.addObject("name", quizUserData.getName());
			modelAndView.addObject("quizName", quizName);
			modelAndView.addObject("quizScore", quizScore);
			modelAndView.setViewName("/schoolympics/tests/testresult");
		
			return modelAndView;
	}
	
	
	/* tests controller ends */
	
	
	@RequestMapping(value = "/schoolympics/register-school", method = RequestMethod.GET)
	public String schoolympicsRegisterSchool(ModelMap map) {
		return "/schoolympics/register-school";
	}
	
	@RequestMapping(value = "/schoolympics/registerSchool", method = RequestMethod.POST)
	public ModelAndView submitSchoolDetails(
			@ModelAttribute("school") SchoolympicsSchool school, HttpSession session) {

		ModelAndView modelAndView = new ModelAndView();
		System.out.println("Controller");
		Integer maxId = schoolService.getSchoolympicsMaxID()+1;
		String sn = school.getSchool_name().substring(0, 2);
		String sc = school.getCountry().substring(0, 2);
		String ss = school.getState().substring(0, 2);
		String cs = school.getCity().substring(0, 2);
		String idCode =  null;
		if(maxId<10) {
			idCode = "000"+maxId.toString();
		} else if(maxId<100) {
			idCode = "00"+maxId.toString();
		} else if(maxId>=100) {
			idCode = "0"+maxId.toString();
		}
		
		String code = sn+sc+ss+cs+idCode;
		school.setSchool_code(code.toUpperCase());
		System.out.println("School Code: "+code);
		
		boolean id = schoolService.saveSchoolympicsSchool(school);
		if (id) {
			modelAndView.addObject("added", true);
			modelAndView.setViewName("redirect:/schoolympics/schools-list?saved=true");
		} else {
			modelAndView.addObject("added", false);
			modelAndView.setViewName("redirect:/schoolympics/schools-list?saved=false");
		}

		return modelAndView;
	}
	
	@RequestMapping(value = "/schoolympics/schools-list", method = RequestMethod.GET)
	public ModelAndView schoolympicsSchoolsList(ModelMap map) {
		
		ModelAndView modelAndView = new ModelAndView();
		List<SchoolympicsSchool> schools = schoolService.getSchoolsList();
		
		modelAndView.addObject("schools", schools);
		
		modelAndView.setViewName("/schoolympics/schools-list");
		return modelAndView;
		
	}
	
}
