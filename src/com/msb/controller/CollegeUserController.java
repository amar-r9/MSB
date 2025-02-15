package com.msb.controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.msb.model.CollegeUser;
import com.msb.model.Other;
import com.msb.model.CollegeUser.SaveUser;
import com.msb.model.UserLikeValidation;
import com.msb.service.CollegeUserService;
import com.msb.service.CompetitionService;
import com.msb.service.MailService;
import com.msb.service.QuizService;
import com.msb.util.MsbUtil;
import com.msb.validator.CollegeRegisterValidator;
import com.msb.validator.CollegeUserLoginValidator;


@Controller
public class CollegeUserController {
	
	@Autowired
	private QuizService quizService;

	@Autowired
	private CollegeUserService otherService;

	@Autowired
	private MailService mailService;

	@Autowired
	private CompetitionService competitionService;

	@Autowired
	CollegeUserLoginValidator userValidator;

	@Autowired
	CollegeRegisterValidator registerValidator;

	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		// webDataBinder.setValidator(registerValidator);
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		// Create a new CustomDateEditor
		CustomDateEditor editor = new CustomDateEditor(dateFormat, true);
		// Register it as custom editor for the Date type
		webDataBinder.registerCustomEditor(Date.class, editor);

	}

	@RequestMapping(value = "/college/validateLogin", method = RequestMethod.GET)
	public ModelAndView validateLogin(HttpSession session) {

		CollegeUser userData = (CollegeUser) session.getAttribute("CollegeStudent");
		if (userData != null)
			return new ModelAndView("/college/index");
		else
			return new ModelAndView("/college/login", "user", new CollegeUser());

	}

	@RequestMapping(value = "/college/validateLogin", method = RequestMethod.POST)
	public ModelAndView validate(@ModelAttribute("user") CollegeUser other,
			BindingResult result, RedirectAttributes redirectAttributes,
			HttpSession session,
			@RequestParam(value = "next", required = false) String next) {
		// userValidator.validate(user, result);

		if (other.getUsername() != null && !other.getUsername().isEmpty()
				&& other.getPassword() != null && !other.getPassword().isEmpty()) {
			ModelAndView modelAndView = new ModelAndView();
			System.out.println("in submit" + other);
			String username = other.getUsername();
			String password = other.getPassword();
			CollegeUser userData = otherService.validateUser(username, password);

			if (userData != null) {

				if (userData.getActive() == 1) {
					session.setAttribute("CollegeStudent", userData);
					if (next != null && !next.isEmpty())
						modelAndView.setViewName("redirect:" + next);
					else
						modelAndView.setViewName("redirect:/college");
					return modelAndView;
				} else {
					modelAndView.getModel().put("AuthError",
							"Please activate your account before login");
					modelAndView.setViewName("/college/login");
					return modelAndView;
				}
			} else {
				modelAndView.getModel().put("AuthError",
						"Invalid UserName / Password");
				modelAndView.setViewName("/college/login");
				return modelAndView;
			}
		} else {
			return new ModelAndView("/college/login");
		}

	}

	@RequestMapping(value = "/college/logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {

		session.removeAttribute("CollegeStudent");
		session.invalidate();
		return new ModelAndView("/college/login", "user", new CollegeUser());
	}

	@ResponseBody
	@RequestMapping(value = "/college/getpwd", method = RequestMethod.POST)
	public String getPwd(@RequestParam String userNameOrMail) {

		if (userNameOrMail != null && !userNameOrMail.isEmpty()) {
			Map<String, String> pwdmap = otherService
					.getStudentPassword(userNameOrMail);
			String pwd = null;
			String mail = null;
			if (pwdmap != null && pwdmap.size() > 0) {
				Map.Entry<String, String> entry = pwdmap.entrySet().iterator()
						.next();
				mail = entry.getKey();
				pwd = entry.getValue();
				System.out.println(pwd + " " + mail);

				String SUBJECT = "Password For MySuperBrain";
				String TEXT = "Dear SuperBrain"
						+ "<br/> Password for your MySuperBrian account is<b> "
						+ pwd + "</b>";
				if (mail != null && !mail.isEmpty()) {
					mailService.sendMail(SUBJECT, TEXT, mail, false,
							"Password For MySuperBrain Account");
					return "mailsent";
				} else
					return "mailempty";

			} else {
				return "passwordempty";
			}
		} else {
			return "emptyfield";
		}

	}

	@RequestMapping(value = "/college/doregister", method = RequestMethod.POST)
	public ModelAndView collegeUserRegister(
			@ModelAttribute("user") @Validated({ SaveUser.class }) CollegeUser other,
			BindingResult result, HttpSession session) throws IOException {
		registerValidator.validate(other, result);
		if (!result.hasErrors()) {
			System.out.println("NO ERRORS");
			String activation_code = MsbUtil.getActivationCode();
			other.setActivation_code(activation_code);
			System.out.println("activation code set to user");
			boolean isStudentSaved = otherService.saveCollegeUser(other);
			System.out.println("student saved");
			String subject = "Thank You For The Registration on MySuperBrain";
			if (isStudentSaved) {
				//String body = MsbUtil.buildStudentRegistrationMail1(other,
						//activation_code);
				//boolean isMailSent = mailService.sendMail(subject, body,
						//other.getMail(), false,
						//"MySuperBrain Account Activation");
				//if (isMailSent)
					return new ModelAndView(
							"redirect:/college/register-landing?success=true");
				//else
					//return new ModelAndView(
							//"redirect:/others/register-landing?success=false");
			} else
				return new ModelAndView(
						"redirect:/college/register-landing?success=false");
		} else {
			return new ModelAndView("/college/register");
		}

	}

	@RequestMapping(value = "/college/studentactivation/{activationcode}", method = RequestMethod.GET)
	public ModelAndView hello(@PathVariable String activationcode) {
		boolean isActivated = otherService
				.activateRegisteredUser(activationcode);
		if (isActivated)
			return new ModelAndView("/college/student-activation");
		else
			return new ModelAndView("/college/student-activation-invalid");
	}

	@RequestMapping(value = "/college/profile/image/{username}", method = RequestMethod.GET, produces = MediaType.IMAGE_PNG_VALUE)
	@ResponseBody
	public byte[] getUserProfileImage(@PathVariable String username) {

		return otherService.getStudentDetails(username).getImage();

	}

	@RequestMapping(value = "/college/user/changepwd", method = RequestMethod.GET)
	public ModelAndView chnagePWDGet() {

		return new ModelAndView("/college/changepwd");

	}

	@RequestMapping(value = "/college/user/changepwd", method = RequestMethod.POST)
	public ModelAndView chnagePWDPost(@RequestParam Map<String, String> params,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		CollegeUser other = (CollegeUser) session.getAttribute("CollegeStudent");

		if (!params.get("oldpwd").equals(other.getPassword())) {
			return new ModelAndView("redirect:/college/user/changepwd?invalid=true");
		} else {
			other.setPassword(params.get("newpwd"));
			if (otherService.changePassword(other)) {
				return new ModelAndView("redirect:/college/user/changepwd?success=true");
			} else {
				return new ModelAndView(
						"redirect:/college/user/changepwd?success=false");
			}
		}

	}
	
	@RequestMapping(value = "/college/user/profile", method = RequestMethod.GET)
	public ModelAndView getOtherProfile(HttpSession session) {

		CollegeUser other = (CollegeUser) session.getAttribute("CollegeStudent");

		if (other != null) {
			ModelAndView modelAndView = new ModelAndView();
			
			modelAndView.addObject("user", other);
			int noOfWriting = competitionService.getUserTotalTextSubmissions(other.getUsername(), "writing");
			int noOfPoetry = competitionService.getUserTotalTextSubmissions(other.getUsername(), "poetry");
			int noOfDance = competitionService.getUserTotalSubmissions(other.getUsername(), "dance");
			int noOfMusic = competitionService.getUserTotalSubmissions(other.getUsername(), "music");
			int noOfSpeak = competitionService.getUserTotalSubmissions(other.getUsername(), "speaking");
			int noOfCook = competitionService.getUserTotalSubmissions(other.getUsername(), "cooking");
			int noOfPaint = competitionService.getUserTotalSubmissions(other.getUsername(), "paiting");
			int noOfUAT = competitionService.getStudentTotalUatSubmissionsCount(other.getUsername());
			
			modelAndView.addObject("write", noOfWriting);
			modelAndView.addObject("poetry", noOfPoetry);
			modelAndView.addObject("dance", noOfDance);
			modelAndView.addObject("music", noOfMusic);
			modelAndView.addObject("speak", noOfSpeak);
			modelAndView.addObject("cook", noOfCook);
			modelAndView.addObject("paint", noOfPaint);
			modelAndView.addObject("uat", noOfUAT);
			
			modelAndView.setViewName("/college/profile");
			return modelAndView;
		} else
			return new ModelAndView("/college/login", "user", new CollegeUser());

	}

	@RequestMapping(value = "/college/user/edit-profile", method = RequestMethod.GET)
	public ModelAndView editProfile(HttpSession session) {

		CollegeUser userData = (CollegeUser) session.getAttribute("CollegeStudent");
		Integer profileCompleteness = getProfileCompleteness(userData);
		if (userData != null) {
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("user", userData);
			modelAndView.addObject("profilecp", profileCompleteness);
			modelAndView.setViewName("/college/edit-profile");
			return modelAndView;
		} else
			return new ModelAndView("login", "user", new CollegeUser());

	}

	@RequestMapping(value = "/college/user/update-profile-picture", method = RequestMethod.POST)
	public ModelAndView updateProfile(
			@RequestParam(value = "photo", required = false) MultipartFile photo,
			HttpSession session) throws IOException {
		CollegeUser userData = (CollegeUser) session.getAttribute("CollegeStudent");
		byte[] image = IOUtils.toByteArray(photo.getInputStream());
		userData.setImage(image);
		if (otherService.updateProfilePicture(userData)) {
			return new ModelAndView("redirect:/college/user/edit-profile?success=true");
		} else {
			return new ModelAndView("redirect:/college/user/edit-profile?success=false");
		}

	}

	@RequestMapping(value = "/college/user/update-userdetails", method = RequestMethod.POST)
	public ModelAndView updateUserDetails(
			@RequestParam Map<String, String> userdetails, HttpSession session)
			throws IOException {

		CollegeUser userData = (CollegeUser) session.getAttribute("CollegeStudent");
		userData = setUserData(userData, userdetails);
		if (otherService.updateUserDetails(userData)) {
			return new ModelAndView("redirect:/college/user/edit-profile?success=true");
		} else {
			return new ModelAndView("redirect:/college/user/edit-profile?success=false");
		}

	}

	//@RequestMapping(value = "/college/user/referafriend", method = RequestMethod.POST)
	//public ModelAndView referAFriend(
			//@RequestParam(value = "email", required = true) String mailString,
			//HttpSession session) throws IOException {
		//CollegeUser userData = (CollegeUser) session.getAttribute("CollegeStudent");
		//String SUBJECT = "MySuperBrain.com Invitation";
		//String TEXT = MsbUtil.buildStudentReferralMail(userData);
		//if (mailService.sendMail(SUBJECT, TEXT, mailString, true,
				//"MySuperBrain Invitation")) {
			//return new ModelAndView("redirect:/college/index?referred=true");
		//} else {
			//return new ModelAndView("redirect:/college/index?referred=false");
		//}

	//}

	private CollegeUser setUserData(CollegeUser userData, Map<String, String> fields) {
		for (Entry<String, String> entry : fields.entrySet()) {
			try {
				DateConverter converter = new DateConverter();
				converter.setPattern("dd/MM/yyyy");
				ConvertUtils.register(converter, Date.class);
				BeanUtils.setProperty(userData, entry.getKey(), entry.getValue());
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return userData;
	}

	@SuppressWarnings("unchecked")
	private Integer getProfileCompleteness(CollegeUser userData) {
		Integer profilePoints = 0;
		try {
			Map<String, String> userfields = BeanUtils.describe(userData);
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
	@RequestMapping(value = "/college/validate-user-like", method = RequestMethod.POST)
	public String validateUserLike(
			@ModelAttribute UserLikeValidation userLikeValidation,
			HttpSession session, @RequestParam("fb_login") String fbLogin) {
		CollegeUser userData = (CollegeUser) session.getAttribute("CollegeStudent");
		
		if (userData != null) {
			userLikeValidation.setUsername(userData.getUsername());
			if (otherService.isStudentLiked(userLikeValidation)) {
				return "already-voted";
			} else {
				//if(userLikeValidation.getOldLikes()==49){
					//String subject = "Congratulations you've got 50 Likes for your entry at MySuperBrain";
					//String entrytype = userLikeValidation.getComp_type();
					//String body = MsbUtil.buildEntryLikesMail(userLikeValidation.getEntry_username(), entrytype);
					//mailService.sendMail(subject, body, userLikeValidation.getEntry_username(), false, "MySuperBrain");					
				//}
				userLikeValidation.setLikeDate(MsbUtil.getCurrentDate());
				if (otherService.saveStudentLike(userLikeValidation)) {
					otherService.updateUserPoints(
							userLikeValidation.getEntry_username(), 2);
					updateCompetitionPoints(userLikeValidation.getComp_type(),
							userLikeValidation.getEntry_id());
					return "voted";
				}
			}

		} else 
			return "nouser";
		return null;

	}
	
	private boolean updateCompetitionPoints(String comp_type, int id) {
		if (comp_type.equalsIgnoreCase("writing")||comp_type.equalsIgnoreCase("poetry")) {
			competitionService.updateTextSubmissionPoints(id, 2);
			return true;
		} else if (comp_type.equalsIgnoreCase("uat")) {
			competitionService.updateUATSubmissionPoints(id, 2);
			return true;
		} else if (comp_type.equalsIgnoreCase("painting")
				|| comp_type.equalsIgnoreCase("music")
				|| comp_type.equalsIgnoreCase("dance")
				|| comp_type.equalsIgnoreCase("speaking")
				|| comp_type.equalsIgnoreCase("cooking")) {
			competitionService.updateMSTSubmissionPoints(id, 2);
			return true;
		} 
		return false;
	}

}