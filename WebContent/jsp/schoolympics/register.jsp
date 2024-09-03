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
<title>Register | MySuperBrain</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
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
<link href="<%=request.getContextPath() %>/assets/main.cba69814a806ecc7945a.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/assets/main.css"
	rel="stylesheet">
<style>
	.error-msg {
		color: red;
	}
</style>
</head>
<body>
	<div class="app-container app-theme-white body-tabs-shadow">
		<div class="app-container">
			<div class="h-100">
				<div class="h-100 no-gutters row">
					<div
						class="h-100 d-md-flex d-sm-block bg-white justify-content-center align-items-center col-sm-12 col-md-12 col-lg-7">
						<div class="mx-auto app-login-box col-sm-12 col-md-10 col-lg-9">
							<div class="app-logo"></div>
							<h4>
								<div>Welcome,</div>
								<span>It only takes a <span class="text-success">few
										seconds</span> to create your account
								</span>
							</h4>
							<h5 class="mb-0">
								Already have an account? <a href="<%=request.getContextPath() %>/school/login"
									class="text-primary">Sign in</a>
							</h5>
							<br>
							<div>
								<form:form class="" method="POST" action="../schoolympics/doregister"
									modelAttribute="user" id="signup-form">
									<div class="form-row">
										<div class="col-md-6">
											<div class="position-relative form-group">
												<label for="exampleName" class="">Name</label><input
													name="name" id="name"  required
													type="text" class="form-control"><form:errors path="name" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="position-relative form-group">
												<label for="exampleName" class="">User Name</label><input pattern="[a-zA-Z0-9]+"
													name="username" id="username" required
													 type="text"
													class="form-control"><form:errors path="username" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="position-relative form-group">
												<label for="examplePassword" class=""><span
													class="text-danger">*</span> Password</label><input name="password"
													id="password"  required
													type="password" class="form-control"><form:errors path="password" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="position-relative form-group">
												<label for="examplePasswordRep" class=""><span
													class="text-danger">*</span> Repeat Password</label><input
													name="cpassword" id="cpassword" required
													 type="password"
													class="form-control"><form:errors path="cpassword" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="position-relative form-group">
												<label for="exampleEmail" class=""><span
													class="text-danger">*</span> School</label><input name="school"
													id="school"  type="text" required
													class="form-control"><form:errors path="school" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="position-relative form-group">
												<label for="examplePassword" class=""><span
													class="text-danger">*</span> Class</label>
												<select name="standard"
													id="standard"  required class="form-control">
													<option value="">Select Class</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
													<option value="8">8</option>
													<option value="9">9</option>
													<option value="10">10</option>
													<option value="11">11</option>
													<option value="12">12</option>
												</select>
												<form:errors path="standard" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="position-relative form-group">
												<label for="examplePassword" class=""><span
													class="text-danger">*</span> Country</label>
												<select name="country" required
													id="country" class="form-control">
												</select>
												<form:errors path="country" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="position-relative form-group">
												<label for="examplePassword" class=""><span
													class="text-danger">*</span> State</label>
												<select name="state" required
													id="state" class="form-control">
												</select>
												<form:errors path="state" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="position-relative form-group">
												<label for="exampleEmail" class=""><span
													class="text-danger">*</span> City</label><input name="city"
													id="city"  type="text" required
													class="form-control"><form:errors path="city" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="position-relative form-group">
												<label for="examplePassword" class=""><span
													class="text-danger">*</span> Gender</label>
												<select name="gender" required
													id="gender" class="form-control">
													<option value="">Select Gender</option>
													<option value="Boy">Boy</option>
													<option value="Girl">Girl</option>
												</select>
												<form:errors path="gender" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="position-relative form-group">
												<label for="exampleEmail" class=""><span
													class="text-danger">*</span> Email</label><input name="mail"
													id="mail"  type="email" required
													class="form-control"><form:errors path="mail" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="position-relative form-group">
												<label for="examplePassword" class=""><span
													class="text-danger">*</span> Mobile</label><input name="phone"
													id="phone"  required
													type="text" class="form-control"><form:errors path="phone" />
											</div>
										</div>
									</div>
									<div class="mt-3 position-relative form-check">
										<input name="check" id="exampleCheck" type="checkbox" required
											class="form-check-input"><label for="exampleCheck"
											class="form-check-label">Accept our <a
											href="<%=request.getContextPath() %>/">Terms and Conditions</a>.
										</label>
									</div>
									<div class="mt-4 d-flex align-items-center text-center">
										<div class="ml-auto">
											<button
												class="btn-wide btn-pill btn-shadow btn-hover-shine btn btn-dark btn-lg" type="submit">CREATE
												ACCOUNT</button>
										</div>
									</div><br><br><br>
								</form:form>
							</div>
						</div>
					</div>
					<div class="col-lg-5">
						<div class="d-none d-lg-block slider-light">
							<div class="slick-slider slick-initialized">
								<div>
									<div
										class="position-relative h-100 d-flex justify-content-center align-items-center bg-premium-dark"
										tabindex="-1">
										<div class="slide-img-bg"
											style="background-image: url('<%=request.getContextPath() %>/assets/images/originals/citynights.jpg');"></div>
										<div class="slider-content">
											<h3>School</h3>
											<p>You're one talented person. Keep doing what you're doing. You're hands down amazing!</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- jQuery library -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/assets/scripts/main.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/assets/scripts/main.cba69814a806ecc7945a.js"></script>
	<!-- jQuery library -->
	<script type="text/javascript" src="<%=request.getContextPath() %>/assets/scripts/main.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/jquery.js"></script>
	<script src="<%=request.getContextPath()%>/assets/bootstrap.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/jquery.inputlimiter.1.3.1.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/jquery.autosize.js"></script>
	<script	
		src="<%=request.getContextPath()%>/assets/jquery.validate.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/additional-methods.js"></script>
	<script	
		src="<%=request.getContextPath()%>/assets/bootbox.js"></script>
	<script src="<%=request.getContextPath() %>/assets/country-state.js"></script>
	<script type="text/javascript">
		$('document').ready(function() {
			
			populateCountries("country", "state");
			//$('#country option:contains("India")').prop('selected',true);
			populateStates("country", "state");
			
			$('#signup-form').validate({
				errorElement : 'div',
				errorClass : 'error-msg',
				focusInvalid : true,
				rules : {
					name :{
						required:true,
						minlength:4,
					},
					username :{
						required:true,
			            minlength: 8,
			            maxlength: 20,
						noSpace:true
						//regex: [a-zA-Z0-9]
					},
					mail :{
						required:true
					},
					phone :{
						required:true
					},
					password :{
						required:true,
						minlength:8
					},
					cpassword : {
						required : true,
						equalTo: "#password"
					}
				},
				messages : {
					
				},
				submitHandler : function(form) {
					$('#signup-form button[type=submit]').prop("disabled", "disabled");		
					form.submit();
				}
			});
		});
	</script>
</body>
</html>
