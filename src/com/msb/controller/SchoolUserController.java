package com.msb.controller;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.io.IOUtils;
import org.jboss.logging.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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

import com.msb.model.Circle;
import com.msb.model.CompetitionText;
import com.msb.model.FanTable;
import com.msb.model.MSTCompetition;
import com.msb.model.Other;
import com.msb.model.SchoolUser;
import com.msb.model.SchoolUser.SaveUser;
import com.msb.model.UserLikeValidation;
import com.msb.service.CircleService;
import com.msb.service.CompetitionService;
import com.msb.service.MSBService;
import com.msb.service.MailService;
import com.msb.service.OtherService;
import com.msb.service.QuizService;
import com.msb.service.SchoolUserService;
import com.msb.util.MsbUtil;
import com.msb.validator.SchoolRegisterValidator;
import com.msb.validator.SchoolUserLoginValidator;


@Controller
public class SchoolUserController {
	
	@Autowired
	private QuizService quizService;

	@Autowired
	private SchoolUserService userService;
	
	@Autowired
	private OtherService otherService;
	
	@Autowired
	private MSBService msbService;

	@Autowired
	private MailService mailService;

	@Autowired
	private CompetitionService competitionService;

	@Autowired
	SchoolUserLoginValidator userValidator;

	@Autowired
	SchoolRegisterValidator registerValidator;
	
	@Autowired
	CircleService circleService;

	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		// webDataBinder.setValidator(registerValidator);
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		// Create a new CustomDateEditor
		CustomDateEditor editor = new CustomDateEditor(dateFormat, true);
		// Register it as custom editor for the Date type
		webDataBinder.registerCustomEditor(Date.class, editor);

	}

	@RequestMapping(value = "/school/validateLogin", method = RequestMethod.GET)
	public ModelAndView validateLogin(HttpSession session) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null) {
			userService.updateLoginCount(userData.getUsername());
			return new ModelAndView("/welcome");
		} else {
			return new ModelAndView("/school/login", "user", new SchoolUser());
		}
	}

	@RequestMapping(value = "/school/validateLogin", method = RequestMethod.POST)
	public ModelAndView validate(@ModelAttribute("user") SchoolUser other,
			BindingResult result, RedirectAttributes redirectAttributes,
			HttpSession session,
			@RequestParam(value = "next", required = false) String next) {
		// userValidator.validate(user, result);
			String subject = "Test Mail for MSB";
			String body = MsbUtil.buildTestMail(subject);
			mailService.sendMail(subject, body, "amareshwarreddypally@gmail.com", false, "MSB");
		if (other.getUsername() != null && !other.getUsername().isEmpty()
				&& other.getPassword() != null && !other.getPassword().isEmpty()) {
			ModelAndView modelAndView = new ModelAndView();
			System.out.println("in submit" + other);
			String username = other.getUsername();
			String password = other.getPassword();
			SchoolUser userData = userService.validateUser(username, password);

			if (userData != null) {

				if (userData.getActive() == 1) {
					session.setAttribute("SchoolStudent", userData);
					userService.updateLoginCount(username);
					if (next != null && !next.isEmpty())
						modelAndView.setViewName("redirect:" + next);
					else
						modelAndView.setViewName("redirect:/welcome");
					return modelAndView;
				} else {
					modelAndView.getModel().put("AuthError",
							"Please activate your account before login");
					modelAndView.setViewName("/school/login");
					return modelAndView;
				}
			} else {
				modelAndView.getModel().put("AuthError",
						"Invalid UserName / Password");
				modelAndView.setViewName("/school/login");
				return modelAndView;
			}
		} else {
			return new ModelAndView("/school/login");
		}

	}

	@RequestMapping(value = "/school/logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {

		session.removeAttribute("SchoolStudent");
		session.invalidate();
		return new ModelAndView("/school/login", "user", new SchoolUser());
	}
	
	@RequestMapping(value = "/school/validateGoogleLogin", method = RequestMethod.POST)
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
		//userData.setClient("MILO");
		
		if (userService.isUserExist(username)) {
			SchoolUser userDetails = userService.getStudentDetails(username);
			if(userDetails.getSocialLogin()==1) {
				
				session.setAttribute("SchoolStudent", userDetails);
				System.out.println("User Exist" + username);
				if (next != null && !next.isEmpty())
					modelAndView.setViewName("redirect:" + next);
				else
					modelAndView.setViewName("redirect:/school");
					return modelAndView;
			
			} else {	
				modelAndView.addObject("registeredalready", true);
				return new ModelAndView("/school/login");
			}
			
		} else {
			
			userService.saveSchoolUser(userData);
			SchoolUser loginuserData = userService.getStudentDetails(username);
			session.setAttribute("SchoolStudent", loginuserData);
			if (next != null && !next.isEmpty())
				modelAndView.setViewName("redirect:" + next);
			else
				modelAndView.setViewName("redirect:/school");
				return modelAndView;
		}

	}
	
	@RequestMapping(value = "/school/googlelogout", method = RequestMethod.GET)
	public ModelAndView gLogout(HttpSession session) {

		session.removeAttribute("SchoolStudent");
		session.invalidate();
		return new ModelAndView("/school/login", "user", new SchoolUser());
	}
	
	/* Signup with mobile number/Otp starts */
	
	@RequestMapping(value = "/school/signup", method = RequestMethod.GET)
	public String signup(ModelMap map) {
		return "/school/signup";
	}
	
	@ResponseBody
	@RequestMapping(value = "/school/verify-otp", method = RequestMethod.POST)
	public ModelAndView sendOTP(@RequestParam String phone, HttpSession session) {

		ModelAndView modelAndView = new ModelAndView();
		if (phone != null) {

			if (msbService.isMobileExist(phone)) {
				modelAndView.addObject("phone", true);
				modelAndView.setViewName("/school/signup");
			} else {
				String mobile = ""+"91"+phone+"";
				System.out.println("mobile: "+mobile);
				Random rand = new Random();
				int otp = rand.nextInt(900000) + 100000;
				
				boolean send = msbService.sendSMS(mobile, otp);
				if (send) {
					modelAndView.addObject("phone", phone);
					modelAndView.addObject("otp", otp);
					modelAndView.setViewName("/school/verify-otp");
					return modelAndView;
				} else {
					modelAndView.addObject("success", false);
					modelAndView.setViewName("/school/signup");
					
				}
			}
		} else {
			modelAndView.addObject("phone", null);
			modelAndView.setViewName("/school/signup");
		}
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/school/update-password", method = RequestMethod.POST)
	public ModelAndView sendSchoolOTP(@RequestParam String phone, @RequestParam String verify, 
			@RequestParam String otp, HttpSession session) {

		ModelAndView modelAndView = new ModelAndView();
		if (verify != null) {

			if (verify.contentEquals(otp)) {
				modelAndView.addObject("phone", phone);
				modelAndView.setViewName("/school/update-password");
			} else {
				modelAndView.addObject("phone", phone);
				modelAndView.addObject("success", false);
				modelAndView.addObject("otp", otp);
				modelAndView.setViewName("/school/verify-otp");
			}
		} else {
			modelAndView.addObject("phone", phone);
			modelAndView.addObject("otp", otp);
			modelAndView.addObject("status", null);
			modelAndView.setViewName("/school/verify-otp");
		}
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/school/updatePassword", method = RequestMethod.POST)
	public ModelAndView updateSchoolPassword(@RequestParam String phone, @RequestParam String password,
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
					modelAndView.setViewName("/school/login");
				} else {
					modelAndView.addObject("success", false);
					modelAndView.addObject("phone", phone);
					modelAndView.setViewName("/school/update-password");
				}
			} else {
				modelAndView.addObject("phone", phone);
				modelAndView.addObject("status", false);
				modelAndView.setViewName("/school/update-password");
			}
		} else {
			modelAndView.addObject("phone", phone);
			modelAndView.addObject("status", null);
			modelAndView.setViewName("/school/update-password");
		}
		return modelAndView;
	}
	
	
	/* Signup with mobile number/Otp ends*/

	@ResponseBody
	@RequestMapping(value = "/school/getpwd", method = RequestMethod.POST)
	public String getPwd(@RequestParam String userNameOrMail) {

		if (userNameOrMail != null && !userNameOrMail.isEmpty()) {
			Map<String, String> pwdmap = userService
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

	@RequestMapping(value = "/school/doregister", method = RequestMethod.POST)
	public ModelAndView schoolUserRegister(
			@ModelAttribute("user") @Validated({ SaveUser.class }) SchoolUser other,
			BindingResult result, HttpSession session) throws IOException {
		registerValidator.validate(other, result);
		if (!result.hasErrors()) {
			System.out.println("NO ERRORS");
			String activation_code = MsbUtil.getActivationCode();
			other.setActivation_code(activation_code);
			System.out.println("activation code set to user");
			boolean isStudentSaved = userService.saveSchoolUser(other);
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
							"redirect:/school/register-landing?success=true");
				//else
					//return new ModelAndView(
							//"redirect:/others/register-landing?success=false");
			} else
				return new ModelAndView(
						"redirect:/school/register-landing?success=false");
		} else {
			return new ModelAndView("/school/register");
		}

	}

	@RequestMapping(value = "/school/studentactivation/{activationcode}", method = RequestMethod.GET)
	public ModelAndView hello(@PathVariable String activationcode) {
		boolean isActivated = userService
				.activateRegisteredUser(activationcode);
		if (isActivated)
			return new ModelAndView("/school/student-activation");
		else
			return new ModelAndView("/school/student-activation-invalid");
	}

	@RequestMapping(value = "/school/profile/image", method = RequestMethod.GET, produces = MediaType.IMAGE_PNG_VALUE)
	@ResponseBody
	public byte[] getUserProfileImage(@Param String usr) {
		
		//InputStream is=null;
		//int length = 0;
		//BufferedImage bImage = ImageIO.read(new File("/img/profilepicture.png"));
		//response.setContentType("image/jpeg");
		//ByteArrayOutputStream baos = new ByteArrayOutputStream();
		//ImageIO.write(bImage, "png", baos);
		//length = baos.toByteArray().length;
		//response.setContentLength(baos.toByteArray().length);
		//is = new ByteArrayInputStream(baos.toByteArray());
		//OutputStream os = response.getOutputStream();
		//byte buf[] = new byte[length];
		//is.read(buf);
		//os.write(buf);
		
		//BufferedImage image = ImageIO.read(getServletContext()
				//.getResourceAsStream("/img/profilepicture.png"));
		
		//if (userService.getStudentDetails(usr).getImage()!=null && userService.getStudentDetails(usr).getImage().length>0) {
			return userService.getStudentDetails(usr).getImage();
		//} else {
			//return buf;
		//}
	}

	@RequestMapping(value = "/school/user/changepwd", method = RequestMethod.GET)
	public ModelAndView chnagePWDGet() {

		return new ModelAndView("/school/changepwd");

	}

	@RequestMapping(value = "/school/user/changepwd", method = RequestMethod.POST)
	public ModelAndView chnagePWDPost(@RequestParam Map<String, String> params,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		SchoolUser other = (SchoolUser) session.getAttribute("SchoolStudent");

		if (!params.get("oldpwd").equals(other.getPassword())) {
			return new ModelAndView("redirect:/school/user/changepwd?invalid=true");
		} else {
			other.setPassword(params.get("newpwd"));
			if (userService.changePassword(other)) {
				return new ModelAndView("redirect:/school/user/changepwd?success=true");
			} else {
				return new ModelAndView(
						"redirect:/school/user/changepwd?success=false");
			}
		}

	}
	
	@RequestMapping(value = "/school/user/profile", method = RequestMethod.GET)
	public ModelAndView getOtherProfile(HttpSession session) {

		SchoolUser user = (SchoolUser) session.getAttribute("SchoolStudent");

		if (user != null) {
			ModelAndView modelAndView = new ModelAndView();
			
			modelAndView.addObject("user", user);
			Circle circle = circleService.getStudentCircle(user.getUsername());
			modelAndView.addObject("circle", circle);
			//int noOfWriting = competitionService.getUserTotalTextSubmissions(other.getUsername(), "writing");
			//int noOfPoetry = competitionService.getUserTotalTextSubmissions(other.getUsername(), "poetry");
			//int noOfDance = competitionService.getUserTotalSubmissions(other.getUsername(), "dance");
			//int noOfMusic = competitionService.getUserTotalSubmissions(other.getUsername(), "music");
			//int noOfSpeak = competitionService.getUserTotalSubmissions(other.getUsername(), "speaking");
			//int noOfCook = competitionService.getUserTotalSubmissions(other.getUsername(), "cooking");
			//int noOfPaint = competitionService.getUserTotalSubmissions(other.getUsername(), "paiting");
			//int noOfUAT = competitionService.getStudentTotalUatSubmissionsCount(other.getUsername());
			
			//modelAndView.addObject("write", noOfWriting);
			//modelAndView.addObject("poetry", noOfPoetry);
			//modelAndView.addObject("dance", noOfDance);
			//modelAndView.addObject("music", noOfMusic);
			//modelAndView.addObject("speak", noOfSpeak);
			//modelAndView.addObject("cook", noOfCook);
			//modelAndView.addObject("paint", noOfPaint);
			//modelAndView.addObject("uat", noOfUAT);
			
			modelAndView.setViewName("/school/profile");
			return modelAndView;
		} else
			return new ModelAndView("/school/login", "user", new SchoolUser());

	}

	@RequestMapping(value = "/school/user/edit-profile", method = RequestMethod.GET)
	public ModelAndView editProfile(HttpSession session) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		Integer profileCompleteness = getProfileCompleteness(userData);
		if (userData != null) {
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("user", userData);
			modelAndView.addObject("profilecp", profileCompleteness);
			modelAndView.setViewName("/school/edit-profile");
			return modelAndView;
		} else
			return new ModelAndView("login", "user", new SchoolUser());

	}

	@RequestMapping(value = "/school/user/update-profile-picture", method = RequestMethod.POST)
	public ModelAndView updateProfile(
			@RequestParam(value = "photo", required = false) MultipartFile photo,
			HttpSession session) throws IOException {
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		byte[] image = IOUtils.toByteArray(photo.getInputStream());
		userData.setImage(image);
		if (userService.updateProfilePicture(userData)) {
			return new ModelAndView("redirect:/school/user/edit-profile?success=true");
		} else {
			return new ModelAndView("redirect:/school/user/edit-profile?success=false");
		}

	}

	@RequestMapping(value = "/school/user/update-userdetails", method = RequestMethod.POST)
	public ModelAndView updateUserDetails(
			@RequestParam Map<String, String> userdetails, HttpSession session)
			throws IOException {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		userData = setUserData(userData, userdetails);
		if (userService.updateUserDetails(userData)) {
			return new ModelAndView("redirect:/school/user/edit-profile?success=true");
		} else {
			return new ModelAndView("redirect:/school/user/edit-profile?success=false");
		}

	}

	@RequestMapping(value = "/school/user/referafriend", method = RequestMethod.POST)
	public ModelAndView referAFriend(
			@RequestParam(value = "email", required = true) String mailString,
			HttpSession session) throws IOException {
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		String SUBJECT = "MySuperBrain.com Invitation";
		//String TEXT = MsbUtil.buildStudentReferralMail(userData);
		//if (mailService.sendMail(SUBJECT, TEXT, mailString, true,
				//"MySuperBrain Invitation")) {
			return new ModelAndView("redirect:/school/index?referred=true");
		//} else {
			//return new ModelAndView("redirect:/school/index?referred=false");
		//}

	}

	private SchoolUser setUserData(SchoolUser other, Map<String, String> fields) {
		for (Entry<String, String> entry : fields.entrySet()) {
			try {
				DateConverter converter = new DateConverter();
				converter.setPattern("dd/MM/yyyy");
				ConvertUtils.register(converter, Date.class);
				BeanUtils.setProperty(other, entry.getKey(), entry.getValue());
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return other;
	}

	@SuppressWarnings("unchecked")
	private Integer getProfileCompleteness(SchoolUser other) {
		Integer profilePoints = 0;
		try {
			Map<String, String> userfields = BeanUtils.describe(other);
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
	@RequestMapping(value = "/school/validate-user-like", method = RequestMethod.POST)
	public String validateUserLike(
			@ModelAttribute UserLikeValidation userLikeValidation,
			HttpSession session, @RequestParam("fb_login") String fbLogin) {
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		
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
	
	@ResponseBody
	@RequestMapping(value = "/school/beafan", method = RequestMethod.POST)
	public String beAFan(@RequestParam String username, HttpSession session) {

		SchoolUser user = (SchoolUser) session.getAttribute("SchoolStudent");
		Other other = (Other) session.getAttribute("Other");
		
		if (null == user) {
			
			if(null == other) {
				return "login-required";	
			} else {				
				String usertype = "Other";
				if (otherService.isFan(username, other.getUsername(), usertype)) {
					return "fan";
				} else {
					FanTable fan = new FanTable();
					fan.setUser_name(username);
					fan.setFan(other.getUsername());
					fan.setUser_type(usertype);
					if (otherService.saveFan(fan)) {
						otherService.updateUserFanCount(username);
						otherService.updateCountInFanCountTable(username);
						return "success";
					}
				}
			}

		} else {			
			String usertype = "Student";
				if (userService.isFan(username, user.getUsername(), usertype)) {
				return "fan";
			} else {
				FanTable fan = new FanTable();
				fan.setUser_name(username);
				fan.setFan(user.getUsername());
				fan.setUser_type(usertype);
				if (userService.saveFan(fan)) {
					userService.updateUserFanCount(username);
					//userService.updateCountInFanCountTable(username);
					return "success";
				}
			}
		}
		return null;

	}
	
	@RequestMapping(value = "/school/profile", method = RequestMethod.GET)
	public ModelAndView getPublicProfile(@Param String usr) {

		SchoolUser userData = userService.getStudentDetails(usr);
		System.out.println("User: "+usr);

		if (userData != null) {
			List<CompetitionText> essays = userService.getUserRecentTextEntries(usr);
			
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("essays", essays);
			
			modelAndView.addObject("userData", userData);
			Circle circle = circleService.getStudentCircle(userData.getUsername());
			modelAndView.addObject("circle", circle);
			
			modelAndView.setViewName("/school/public-profile");
			return modelAndView;
		} else
			return new ModelAndView("/school/public-profile", "user", new SchoolUser());
		
	}
	
	@RequestMapping(value = "/entries/{username}", method = RequestMethod.GET)
	public ModelAndView getAllEntries(@PathVariable String username) {

		SchoolUser user = userService.getStudentDetails(username);

		if (user != null) {
			List<CompetitionText> writing = userService
					.getUserTextEntries(user.getUsername());
			
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("writing", writing);
			
			modelAndView.addObject("user", user);
			modelAndView.setViewName("/school/user-entries");
			return modelAndView;
		} else
			return new ModelAndView("/school/user-entries", "user", new SchoolUser());

	}
	
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/texts/{username}", method = RequestMethod.GET)
	 * public String getPoems(@PathVariable String username) {
	 * 
	 * List<CompetitionText> writing = userService
	 * .getUserRecentTextEntries(username); StringBuffer poemsString = new
	 * StringBuffer(); if (writing.isEmpty()) return "No Entries Found"; else { for
	 * (CompetitionText poem : writing) { poemsString.
	 * append("<div class=\"alert alert-info\"><h5 class=\"card-title\">");
	 * poemsString.append(poem.getCompetition().getTopic() +
	 * "<small class=\"pull-right\">" + poem.getUser_name() +
	 * "&nbsp;&nbsp;</small></h5>"); poemsString
	 * .append("<p style=\"text-align: justify;\">" + poem.getSummary() +
	 * "</p><div class=\"divider\"></div>"); poemsString
	 * .append("<a href=\"../srichaitanya/view/text_competition/" +
	 * poem.getId()+"\"" +
	 * " class=\"btn btn-primary\" target=\"_blank\">View &amp; Share</a>");
	 * poemsString.append("</div>"); } return poemsString.toString(); }
	 * 
	 * }
	 * 
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/alltexts/{username}", method = RequestMethod.GET)
	 * public String getAllUserPoems(@PathVariable String username) {
	 * 
	 * List<CompetitionText> writing = userService .getUserTextEntries(username);
	 * StringBuffer poemsString = new StringBuffer(); if (writing.isEmpty()) return
	 * "No Entries Found"; else { for (CompetitionText poem : writing) { poemsString
	 * .append("<div class=\"alert alert-info\"><h5 class=\"card-title\">");
	 * poemsString.append(poem.getCompetition().getTopic() +
	 * "<small class=\"pull-right\">" + poem.getUser_name() +
	 * "&nbsp;&nbsp;</small></h5>"); poemsString
	 * .append("<p style=\"text-align: justify;\">" + poem.getSummary() +
	 * "</p><div class=\"divider\"></div>"); poemsString
	 * .append("<a href=\"../view/text_competition/" + poem.getId()+"\"" +
	 * " class=\"btn btn-primary\" target=\"_blank\">View &amp; Share</a>");
	 * poemsString.append("</div>"); } return poemsString.toString(); }
	 * 
	 * }
	 * 
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/mst/{type}/{username}", method = RequestMethod.GET)
	 * public String getPaints(@PathVariable String username, @PathVariable String
	 * type) {
	 * 
	 * List<MSTCompetition> entry = userService .getUserRecentMSTEntries(username,
	 * type); StringBuffer paintsString = new StringBuffer(); if (entry.isEmpty())
	 * return "No Entries Found"; else { for (MSTCompetition mst : entry) {
	 * paintsString
	 * .append("<div class=\"alert alert-info\"><h5 class=\"card-title\">");
	 * paintsString.append(mst.getCompetition().getTopic() +
	 * "<small class=\"pull-right\">" + mst.getUser_name() +
	 * "&nbsp;&nbsp;</small></h5>"); paintsString
	 * .append("<p style=\"text-align: justify;\">" + mst.getEntry_summary() +
	 * "</p><div class=\"divider\"></div>"); paintsString
	 * .append("<a href=\"../view/mst_competition/" + mst.getId()+"\"" +
	 * " class=\"btn btn-primary\" target=\"_blank\">View &amp; Share</a>");
	 * paintsString.append("</div>"); } return paintsString.toString(); }
	 * 
	 * }
	 * 
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/allmst/{type}/{username}", method =
	 * RequestMethod.GET) public String getAllUserPaints(@PathVariable String
	 * username, @PathVariable String type) {
	 * 
	 * List<MSTCompetition> entry = userService .getUserMSTEntries(username, type);
	 * StringBuffer paintsString = new StringBuffer(); if (entry.isEmpty()) return
	 * "No Entries Found"; else { for (MSTCompetition mst : entry) { paintsString
	 * .append("<div class=\"alert alert-info\"><h5 class=\"card-title\">");
	 * paintsString.append(mst.getCompetition().getTopic() +
	 * "<small class=\"pull-right\">" + mst.getUser_name() +
	 * "&nbsp;&nbsp;</small></h5>"); paintsString
	 * .append("<p style=\"text-align: justify;\">" + mst.getEntry_summary() +
	 * "</p><div class=\"divider\"></div>"); paintsString
	 * .append("<a href=\"../view/mst_competition/" + mst.getId()+"\"" +
	 * " class=\"btn btn-primary\" target=\"_blank\">View &amp; Share</a>");
	 * paintsString.append("</div>"); } return paintsString.toString(); }
	 * 
	 * }
	 */

}