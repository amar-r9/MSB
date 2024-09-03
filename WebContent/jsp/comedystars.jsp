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
<title>Junior Comedy Championship | MySuperBrain</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
	content="WHat does it take to be a good programmer/ coder? Find out with this multi-level competition that focuses on the basics of coding.">
<meta name="keywords"
	content="Coding, Programming, Compettiion, Computer, internet, algorithms, logical thinking">
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
<link href="<%=request.getContextPath()%>/assets/main.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/assets/main.cba69814a806ecc7945a.css"
	rel="stylesheet">
<style>
.slider-item {
	max-height: 140px;
}
</style>
</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<jsp:include page="/common/schoolheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/schoolmenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner"
					style="padding: 0px; background-color: #FFF;">
					<div class="row d-none d-lg-block">
						<div id="carouselExampleControls2"
							class="carousel slide carousel-fade" data-ride="carousel">
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img class="d-block w-100"
										src="<%=request.getContextPath() %>/img/coding/starcoding.png"
										alt="First slide">
									<div class="carousel-caption d-none d-md-block"
										style="right: 50%; text-align: inherit; left: 5%; top: 15%; font-size: 3rem !important;">
										<h1 style="color: #FFF;">Junior Comedy Championship</h1>
										<h5 align="justify" style="color: #FFF;">What does it take to be a good programmer/ coder? Find out with this multi-level 
										competition that focuses on the basics of coding. This is a <font color='black'><b>FREE</b></font> contest where students in the age group of 8 to 16 can participate
										and showcase their talents and get analysis on how they can improve.</h5>
										<a href="<%=request.getContextPath()%>/school/comedystars/competition-list"
											class="mb-2 mr-2 btn-wide btn-lg btn-square btn btn-light">GET
											STARTED <i class="fa fa-fw" aria-hidden="true"
											title="Copy to use angle-right"></i>
										</a>
									</div>
								</div>
							</div>

						</div>
					</div>

					<div class="row d-block d-sm-none">
						<div id="carouselExampleControls2"
							class="carousel slide carousel-fade" data-ride="carousel">
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img class="d-block w-100"
										src="<%=request.getContextPath() %>/img/coding/codingmobile.png"
										alt="First slide">
									<div class="carousel-caption"
										style="top: 0%; font-size: 3rem !important;">
										<h6 align="justify" style="color: #FFF;">What does it take to be a good programmer/ coder? Find out with this multi-level 
										competition that focuses on the basics of coding. This is a <font color='black'><b>FREE</b></font> contest where students in the age group of 8 to 16 can participate
										and showcase their talents and get analysis on how they can improve.</h6>
										<a href="<%=request.getContextPath()%>/school/comedystars/competition-list"
											class="mb-2 mr-2 btn-wide btn-lg btn-square btn btn-light">GET
											STARTED <i class="fa fa-fw" aria-hidden="true"
											title="Copy to use angle-right"></i>
										</a>
									</div>
								</div>
							</div>

						</div>
					</div>

					<p>&nbsp;</p>
					<div class="row">
						<br>
						<div class="row">
							<div class="main-card mb-3 card">
								<div class="card-body row">
									<div class="col-md-5">
										<img src="<%=request.getContextPath() %>/img/coding/codestar.png"
											style="width: 100%;"/>
									</div>
									<div class="col-md-7">
										<h3 style="color: #000;" class="text-center">Welcome to
											JUNIOR COMEDY CHAMPIONSHIP</h3>
											<br>
											<h6 class="col-md-12" style="text-align: center;" style="color: #393939; line-height: 1.6;">Don't miss this amazing opportunity to get started in the journey of Coding. Coding isn't 
											just about learn a programming language. You need to improve your logical thinking ability, creativity and problem solving skills. Get started with the most holistic approach
											for Coding.</h6>
											<div class="col-md-12 text-center">
												<a href="<%=request.getContextPath()%>/school/comedystars/competition-list"
													class="btn-wide mb-2 mr-2 btn btn-pill btn-danger btn-lg">
													PARTICIPATE NOW! </a>
											</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<div class=" col-md-12">
						<div class="col-md-12" style="border: #e9ecef solid 1px;">
							<div class="row card-body">
								<div class="col-md-8">
									<h5>
										<b>School Registration</b>
									</h5>
									<h6>Here is a wonderful opportunity for all schools to
										make the coding classes extremely useful. Coding star 
										touches on the most important aspects of Coding.</h6>
								</div>
								<div class="col-md-4 text-center">
									<p>&nbsp;</p>
									<a href="<%=request.getContextPath()%>/schoolregister"
										class="mb-2 mr-2 btn btn-primary btn-lg btn-pill">REGISTER</a>
								</div>
							</div>


							<div class="row card-body">
								<div class="col-md-8">
									<h5>
										<b>Individual Registration</b>
									</h5>
									<h6>Coding is a great skill to have, but it has to be done right. 
									Here is your opportunity to learn coding the right way. Get started now!</h6>
								</div>
								<div class="col-md-4 text-center">
									<p>&nbsp;</p>
									<a href="<%=request.getContextPath()%>/school/register"
										class="mb-2 mr-2 btn btn-success btn-lg btn-pill">REGISTER</a>
								</div>
							</div>
						</div>
					</div>

					<p>&nbsp;</p>
					<div class="row col-md-12">
						<div class="col-md-1"></div>
						<div class="col-md-5 d-none d-lg-block">
							<div class="col-md-12">
								<img style="height: 450px;"
									src="<%=request.getContextPath()%>/img/milo/invitefriend.jpg" />
							</div>
						</div>
						<div class="col-md-5">
							<br>
							<h5><b>INVITE A FRIEND</b></h5>
							<p>&nbsp;</p>
							<h6 id="verified" style="display: none; color: GREEN;">
								<i class="fa fa-check-circle icon-gradient bg-happy-fisher"></i> Message sent successfully.</h6>
							<h6 id="error" style="display: none; color: RED;">
								<i class="pe-7s-close-circle icon-gradient bg-love-kiss"></i> Error, Please Try again.</h6>
							<h6 id="error" style="display: none; color: RED;">
								<i class="pe-7s-close-circle icon-gradient bg-love-kiss"></i> Please enter valid mobile number.</h6>
							<div class="mb-3 card text-white card-body bg-warning">
								<form id="otp-form">
									<div class="position-relative form-group">
										<label for="examplePassword" class=""><span
											class="text-danger">*</span>Enter your name</label>
										
										<div class="input-group">
                                              <input placeholder="Your Name here..." type="text"
                                                required name="name" id="name" class="form-control">
										</div>
									</div>
									<div class="position-relative form-group">
										<label for="examplePassword" class=""><span
											class="text-danger">*</span>Enter your friend's Mobile Number</label>
										
										<div class="input-group">
                                               <div class="input-group-prepend">
                                                   <span class="input-group-text">91</span>
                                               </div>
                                               <input placeholder="Mobile Number here..." type="text"
	                                                required name="phone" id="phone" class="form-control">
										</div>
									</div>
									<a id="getotp" class="btn btn-light btn-wide btn-pill">INVITE NOW</a>
									<!-- <button type="submit" onclick="sendSMS()" id="getotp" class="btn btn-light btn-wide">INVITE NOW</button> -->
								</form>
							</div>
						</div>
					</div>
					<!-- <p>&nbsp;</p>
					<p>&nbsp;</p> -->
					<%-- <div class="row col-md-12">
						<div class="col-md-1"></div>
						<div class="col-md-5">
							<h1
								style="color: #393939; font-size: 3.0rem; font-weight: 600; font-family: auto;">Showcase
								your Skill.</h1>
							<p>&nbsp;</p>
							<h4 style="line-height: 2.4rem;">Do you have a sporting
								skill that you want to show the world? Well, don't waste
								anytime. Upload a video showing your skills and the whole world
								will take notice.</h4>
							<p>&nbsp;</p>
							<a href="" class="btn btn-lg btn-wide btn-primary">Show your skills</a>
						</div>
						<div class="col-md-1"></div>
						<div class="col-md-5">
							<img style="height: 450px;"
								src="<%=request.getContextPath()%>/img/milo/58-586428_transparent-people-gym-png-exercise-clipart-png-png.png" />
						</div>
					</div> --%>
				</div>

				<jsp:include page="/common/footer.jsp"></jsp:include>
			</div>
			<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
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
	<script>
		$('document').ready(function() {
			//$('#competitions').addClass('mm-active');
		});
	</script>
</body>
</html>