<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Language" content="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Student Register | NAC | MySuperBrain</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="Register for Milo Home Ground"
	content="This is an example dashboard created using build-in elements and components.">
<meta name="msapplication-tap-highlight" content="no">
<!--
    =========================================================
    * ArchitectUI HTML Theme Dashboard - v1.0.0
    =========================================================
    * Product Page: https://dashboardpack.com
    * Copyright 2019 DashboardPack (https://dashboardpack.com)
    * Licensed under MIT (https://github.com/DashboardPack/architectui-html-theme-free/blob/master/LICENSE)
    =========================================================
    * The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
    -->
<meta name="google-signin-client_id" content="638005785461-13eu5dklbdtao7khd0ogudd0mbc5bfkj.apps.googleusercontent.com">
    <!-- Disable tap highlight on IE -->
    <meta name="msapplication-tap-highlight" content="no">
<script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>
<script src="https://apis.google.com/js/api.js?onload=renderButton" async defer></script>
<link href="<%=request.getContextPath()%>/assets/main.css"
	rel="stylesheet">
<style>
.error-msg {
	color: RED;
}
</style>
</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<jsp:include page="/common/nacheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/nacmenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner" style="padding: 0px;">
					<div class="tab-content">
						<div class="tab-pane tabs-animation fade show active"
							id="tab-content-0" role="tabpanel">
							<div class="main-card mb-3 card">
								<div class="card-body">
									<div class="row col-md-12">
										<div class="col-md-6 col-sm-12">
											<div class="app-logo"></div>
											<h4>
												<div>Welcome,</div>
												<span>It only takes a <span class="text-success">few
														seconds</span> to create your account
												</span>
											</h4>
											<div>
												<%-- <div class="row">
													<div class="col-md-12 text-center">
														<a href="<%=request.getContextPath()%>/codingstar/signup"
															class="btn btn-success btn-lg"> SIGNUP WITH OTP</a>
													</div>
												</div> --%>
												<div class="divider"></div>
												<form:form class="" method="POST" action="doregister"
													modelAttribute="user" id="signup-form">
													<div class="form-row">
														<div class="col-md-6">
															<div class="position-relative form-group">
																<label for="exampleName" class="">Name</label><input
																	name="name" id="name" placeholder="Name here..."
																	type="text" class="form-control">
																<form:errors path="name" style="color: RED;" />
															</div>
														</div>
														<div class="col-md-6">
															<div class="position-relative form-group">
																<label for="exampleName" class="">User Name</label><input
																	name="username" id="username"
																	placeholder="User Name here..." type="text"
																	class="form-control">
																<form:errors path="username" style="color: RED;" />
															</div>
														</div>
														<c:choose>
															<c:when test="${param.school eq null }">
																
															</c:when>
															<c:otherwise>
																<input type="hidden" name="school_code" id="school_code" value="${param.school }" />
															</c:otherwise>
														</c:choose>
														<div class="col-md-6">
															<div class="position-relative form-group">
																<label for="examplePassword" class=""><span
																	class="text-danger">*</span> Password</label><input
																	name="password" id="password"
																	placeholder="Password here..." type="password"
																	class="form-control">
																<form:errors path="password" style="color: RED;" />
															</div>
														</div>
														<div class="col-md-6">
															<div class="position-relative form-group">
																<label for="examplePasswordRep" class=""><span
																	class="text-danger">*</span> Repeat Password</label><input
																	name="cpassword" id="cpassword"
																	placeholder="Repeat Password here..." type="password"
																	class="form-control">
																<form:errors path="cpassword" style="color: RED;" />
															</div>
														</div>
														<div class="col-md-6">
															<div class="position-relative form-group">
																<label for="exampleEmail" class=""><span
																	class="text-danger">*</span> Email</label><input name="mail"
																	id="mail" placeholder="Email here..." type="email"
																	class="form-control">
																<form:errors path="mail" style="color: RED;" />
															</div>
														</div>
														<div class="col-md-6">
															<div class="position-relative form-group">
																<label for="examplePassword" class=""><span
																	class="text-danger">*</span> Mobile</label>
																<!-- 	
																<input name="phone"
																	id="phone" placeholder="Mobile Number here..."
																	type="text" class="form-control"> -->
															
															<div class="input-group">
			                                                    <div class="input-group-prepend">
			                                                        <span class="input-group-text">91</span>
			                                                    </div>
			                                                    <input placeholder="Mobile Number here..." type="text"
			                                                    	name="phone" id="phone" class="form-control">
																<form:errors path="phone" style="color: RED;" />
			                                                </div>
															
															</div>
															
														</div>
														<div class="col-md-6">
															<div class="position-relative form-group">
																<label for="exampleEmail" class=""><span
																	class="text-danger">*</span> School</label><input name="school"
																	id="school" placeholder="School name here..." type="text"
																	class="form-control">
																<form:errors path="school" style="color: RED;" />
															</div>
														</div>
														<div class="col-md-6">
															<div class="position-relative form-group">
																<label for="examplePassword" class=""><span
																	class="text-danger">*</span> City</label><input name="city"
																	id="city" placeholder="City Name here..."
																	type="text" class="form-control">
																<form:errors path="city" style="color: RED;" />
															</div>
														</div>
													</div>
													<%-- <div class="mt-3 position-relative form-check">
														<input name="check" id="exampleCheck" type="checkbox"
															class="form-check-input"><label
															for="exampleCheck" class="form-check-label">Accept
															our <a href="<%=request.getContextPath()%>/">Terms
																and Conditions</a>.
														</label>
													</div> --%>
													<div class="mt-4 d-flex align-items-center">
														<h5 class="mb-0">
															Already have an account? <a
																href="<%=request.getContextPath()%>/nac/login"
																class="text-primary">Sign in</a>
														</h5>
														<div class="ml-auto">
															<button
																class="btn-wide btn-pill btn-shadow btn-hover-shine btn btn-primary btn-lg"
																type="submit">Create Account</button>
														</div>
													</div>
												</form:form>
											</div>
										</div>
										<div class="col-md-6" style="border-left: 2px solid #000;">
											<div>
												<br>
												<c:if test="${phone eq true}">
													<div class="alert alert-warning">
														Mobile number already registered.
													</div>
												</c:if>
												<c:if test="${success eq false}">
													<div class="alert alert-danger">
														Technical error, Try again later.
													</div>
												</c:if>
												<c:if test="${phone eq null}">
													<div class="alert alert-alternate">
														Please enter valid mobile number.
													</div>
												</c:if>
												<div class="col-md-6">
													
													<h6>SIGN UP WITH OTP</h6>
													<form action="<%=request.getContextPath() %>/nac/verify-otp"
														method="post" id="otp-form">
														
														<div class="position-relative form-group">
															<label for="examplePassword" class=""><span
																class="text-danger">*</span> Mobile</label>
															
															<div class="input-group">
				                                                  <div class="input-group-prepend">
				                                                      <span class="input-group-text">91</span>
				                                                  </div>
				                                                  <input placeholder="Mobile Number here..." type="text"
				                                                  	name="phone" id="phone" class="form-control">
															</div>
															<c:choose>
																<c:when test="${param.school eq null }">
																	<input type="hidden" name="school_code" id="school_code" value="" />
																</c:when>
																<c:otherwise>
																	<input type="hidden" name="school_code" id="school_code" value="${param.school }" />
																</c:otherwise>
															</c:choose>
														</div>
														
														<button type="submit" id="getotp" class="btn btn-success">GET OTP</button>
													</form>
												</div>
											</div>
											<div class="divider"></div>
											<c:if test="${registeredalready eq true }">
                          						<p class="alert alert-danger">Email is already registered, try logging in with your username and password.</p>
                          					</c:if>
				                          	<div class="row">
				                          		<div class="col-md-6">
				                           			<!-- <div class="fb-login-button" data-size="large" data-button-type="login_with"
				                           			data-layout="default" data-auto-logout-link="false" data-use-continue-as="false" data-width=""></div> -->
				                            	</div>
				                            	<div class="col-md-6">
				                            		<div class="g-signin2" data-onsuccess="onSignIn" style="width: 100%;"></div>
				                            	</div>
				                            </div>
                            				<div class="divider row"></div>
				                            <!-- <a href="#" onclick="fb_login();" class="btn btn-primary btn-lg"><i class="fa fa-fb"></i>&nbsp;&nbsp;|&nbsp;&nbsp;LOGIN WITH FACEBOOK</a>
												<p>&nbsp;</p>
												<a href="#" onclick="google_login();" class="btn btn-google-plus btn-lg"><i class="fa fa-google"></i>&nbsp;&nbsp;|&nbsp;&nbsp;LOGIN WITH GOOGLE +</a> -->
                            
				                            <div>
				                                <form:form method="POST" action="../nac/validateLogin"
																modelAttribute="user" autocomplete="off" class="">
				                                    <div class="form-row">
				                                        <div class="col-md-6">
				                                            <div class="position-relative form-group"><label for="exampleEmail" class="">Username/Mobile</label><input name="username" id="username" placeholder="Username here..." type="text" class="form-control"></div>
				                                        </div>
				                                        <input type="hidden" name="next" value="${param.next }">
				                                        <div class="col-md-6">
				                                            <div class="position-relative form-group"><label for="examplePassword" class="">Password</label><input name="password" id="password" placeholder="Password here..." type="password"
				                                                                                                                                                   class="form-control"></div>
				                                        </div>
				                                    </div>
				                                    <div class="position-relative form-check">
				                                    	<input name="check" id="exampleCheck" type="checkbox" class="form-check-input">
				                                    	<label for="exampleCheck" class="form-check-label">Keep me logged in</label>
				                                    	<button class="btn btn-info btn-lg pull-right" type="submit">Login</button>
				                                    </div>	
				                                </form:form>
				                            </div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<jsp:include page="/common/footer.jsp"></jsp:include>
			</div>
		</div>
	</div>
	<!-- jQuery library -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/assets/scripts/main.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/assets/scripts/main.cba69814a806ecc7945a.js"></script>
	<!-- jQuery library -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/assets/scripts/main.js"></script>
	<script src="<%=request.getContextPath()%>/assets/jquery.js"></script>
	<script src="<%=request.getContextPath()%>/assets/bootstrap.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/jquery.inputlimiter.1.3.1.js"></script>
	<script src="<%=request.getContextPath()%>/assets/jquery.autosize.js"></script>
	<script src="<%=request.getContextPath()%>/assets/jquery.validate.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/additional-methods.js"></script>
	<script src="<%=request.getContextPath()%>/assets/bootbox.js"></script>
	<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js"></script>
	<!-- The core Firebase JS SDK is always required and must be listed first -->
	<script src="https://www.gstatic.com/firebasejs/7.21.0/firebase-app.js"></script>

	<!-- TODO: Add SDKs for Firebase products that you want to use
	     https://firebase.google.com/docs/web/setup#available-libraries -->
	<script src="https://www.gstatic.com/firebasejs/7.21.0/firebase-analytics.js"></script>
	<script type="text/javascript">
		
		function signOut() {
	    	var auth2 = gapi.auth2.getAuthInstance();
	    	auth2.signOut().then(function () {
	      		console.log('User signed out.');
	    	});
	 	}
	
		$('document').ready(function() {
			$('#signup-form').validate({
				errorElement : 'div',
				errorClass : 'error-msg',
				focusInvalid : true,
				rules : {
					name : {
						required : true,
						minlength : 4,
					},
					username : {
						required : true
					},
					mail : {
						required : true
					},
					phone : {
						required : true,
						minlength : 10,
						maxlength : 10
					},
					password : {
						required : true,
						minlength : 8
					},
					cpassword : {
						required : true,
						equalTo : "#password"
					},
					school : {
						required : true
					},
					city : {
						required : true,
						minlength : 3,
						maxlegnth : 30
					}
				},
				messages : {

				},
				submitHandler : function(form) {
					$('#signup-form button[type=submit]').prop(
							"disabled", "disabled");
					form.submit();
				}
			});
		});
	</script>
	<script type="text/javascript">
		$('document').ready(function() {
			$('#otp-form').validate({
				errorElement : 'div',
				errorClass : 'error-msg',
				focusInvalid : true,
				rules : {
					phone : {
						required : true,
						minlength : 10,
						maxlength : 10
					}
				},
				messages : {

				},
				submitHandler : function(form) {
					$('#otp-form button[type=submit]').prop(
							"disabled", "disabled");
					form.submit();
				}
			});
		});
		
	</script>
	<script>
  // Your web app's Firebase configuration
  // For Firebase JS SDK v7.20.0 and later, measurementId is optional
  var firebaseConfig = {
    apiKey: "AIzaSyApjbf6RNk8RbEzSD7tK_aOsbXtzgrmUnw",
    authDomain: "mysupertalent.firebaseapp.com",
    databaseURL: "http://mysupertalent.firebaseio.com",
    projectId: "mysupertalent",
    storageBucket: "mysupertalent.appspot.com",
    messagingSenderId: "638005785461",
    appId: "1:638005785461:web:798c15ab1febdd4eac993c",
    measurementId: "G-2G14B2XNN5"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();
	  function onSignIn(googleUser) {
		  var profile = googleUser.getBasicProfile();
		  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
		  console.log('Name: ' + profile.getName());
		  console.log('Image URL: ' + profile.getImageUrl());
		  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
	  
	  
	  
	  $.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/codingstar/validateGoogleLogin",
			//data : formData,
			data : {"name":profile.getName(), "username":profile.getEmail(), "mail":profile.getEmail(), "school_code":${param.school }},
			success: function(data){
				window.location.href = "<%=request.getContextPath() %>/nac";
				//call is successfully completed and we got result in data
			  },
			  error:function (xhr, ajaxOptions, thrownError){
			                  //some errror, some show err msg to user and log the error  
			                  alert(xhr.responseText);

			                }    
		});
	  signOut();
	  
	}
  
</script>
</body>
</html>
