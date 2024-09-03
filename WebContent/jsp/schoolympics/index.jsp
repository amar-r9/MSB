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
<title>Schoolympics | The School Olympics for students |
	MySuperBrain</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
	content="Summer Schoolympics is an online competition for students to gain global recognition and make their schools proud!">
<meta name="keywords"
	content="MySuperBrain.com, Olympics, Schoolympics, Talents, students, competitions, painting, writing, music, crafts, Science projects, Dance, Quizzes">
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
.btn-alternate {
	background-color: #6a516f;
}

.btn-circle {
	height: 50px;
	width: 50px;
	padding: 12px 12px;
	font-size: 18px;
	line-height: 23px;
	border-radius: 100%;
}

.slider-item {
	max-height: 140px;
}

.btn-round {
	border-radius: 100%;
	font-size: 1.25rem;
} /* 
small {
	font-size: 60%;
	font-weight: bold;
	color: #000;
} */
</style>
<style>
nav>.nav.nav-tabs {
	border: none;
	color: #fff;
	background: #272e38;
	border-radius: 0;
}

nav>div a.nav-item.nav-link, nav>div a.nav-item.nav-link.active {
	border: none;
	padding: 10px 40px 10px 20px; /*18px 25px;*/
	color: #fff;
	background: #445979;   /*#272e38*/
	border-radius: 0;
}

nav>div a.nav-item.nav-link.active:after {
	content: "";
	position: relative;
	bottom: -45px;
	left: -50%;
	border: 15px solid transparent;
	border-top-color: #e74c3c;
	transition: background 0.20s linear;
}

.tab-content {
	background: #fdfdfd;
	line-height: 25px;
	border: 1px solid #ddd;
	border-top: 5px solid #e78278;
	border-bottom: 5px solid #e78278;
	padding: 30px 25px;
}

nav>div a.nav-item.nav-link:hover, nav>div a.nav-item.nav-link:focus {
	border: none;
	padding: 10px 40px 10px 20px; /*18px 25px;*/
	background: #e78278;
	color: #fff !important;
	border-radius: 0;
	transition: background 0.20s linear;
}
</style>
</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<jsp:include page="/common/schoolympicsheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/schoolympicsmenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner"
					style="padding: 0px; background-color: #FFF;">
					<!-- <div class="text-dark d-none d-lg-block">
						<h3 class="text-center">SUMMER SCHOOLYMPICS</h3>
					</div> -->
					<div class="row col-md-12" style="padding-right: 0px;">
						<div class="col-md-9 col-xs-12">
							<div id="carouselExampleControls1"
								class="carousel slide text-center" data-ride="carousel">
								<div class="carousel-inner">
									<br>
									<div class="carousel-item active">
										<img class="d-block w-100"
											src="<%=request.getContextPath()%>/img/schoolympics/schoolympics.jpg"
											alt="First slide" style="border-radius: 10px;">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<hr>
									<div class="d-block d-sm-none" style="border-radius: 10px;">
										<h6 class="card-title"
											style="font-weight: 700; color: #393d3b;">Schoolympics</h6>
										<div class="row">
											<div class="col-md-4 col-4" style="padding: 0px;">
												<span class="pull-right"><img
													src="<%=request.getContextPath()%>/img/schoolympics/mobile2.png"
													style="width: 100%;" /></span>
											</div>
											<div class="col-md-8 col-8">
												<p style="color: #353535;">MySuperBrain.com brings to
													you the Junior Version of Olympics!</p>
											</div>
										</div>
									</div>
									<br>
									<div class="d-block d-sm-none" style="border-radius: 10px;">
										<div class="bg-info"
											style="background: #198f8c !important; color: #FFF; padding: 10px; border-radius: 10px;">
											<p class="text-justify">Every student is special. Every
												student has amazing talents. This is your opportunity to
												showcase that talent and gain global recognition. It is also
												an opportunity to make your parents, teachers and schools
												proud. Schoolympics is the Olympics for school students and
												it is not restricted to sports.</p>
										</div>
									</div>
									<br>
									<div class="d-block d-sm-none"
										style="background: #9794b561; padding: 10px; border-radius: 10px;">
										<h6 class="card-title"
											style="font-weight: 700; color: #393d3b;">Competition
											Areas</h6>
										<div class="row">
											<div class="card-body">
												<div class="row text-center text-dark">
													<div class="col-md-2 col-3">
														<a href="#"
															class="btn btn-circle btn-primary btn-lg text-white"><i
															class="fas fa-music"></i></a><br>
														<small>Music</small>
													</div>
													<div class="col-md-2 col-3">
														<a href="#"
															class="btn btn-circle btn-warning btn-lg text-white"><i
															class="fas fa-paint-brush"></i></a><br>
														<small>Painting</small>
													</div>
													<div class="col-md-2 col-3">
														<a href=" #" class="btn btn-circle text-white btn-danger"><i
															class="fa fa-pen"></i></a><br>
														<small>Writing</small>
													</div>
													<div class="col-md-4 col-3">
														<a href="#" class="btn btn-circle text-white btn-info"><i
															class="fas fa-book"></i></a><br>
														<small>Poetry</small>
													</div>
													<div class="col-md-4 col-3">
														<a href="#"
															class="btn btn-circle text-white btn-alternate"><i
															class="fas fa-archive"></i></a><br>
														<small>Crafts</small>
													</div>
													<div class="col-md-4 col-3">
														<a href="#" class="btn btn-circle text-white"
															style="background: #0C063B;"><i class="fas fa-camera"></i></a><br>
														<small>Photography</small>
													</div>
													<div class="col-md-4 col-3">
														<a href=" #" class="btn btn-circle text-white"
															style="background: #00bcd4; border: #00bcd4;"><i
															class="fa fa-list-ol"></i></a><br>
														<small>Mathematics</small>
													</div>
													<div class="col-md-4 col-3">
														<a href="#" class="btn btn-circle text-white"
															style="background: #8bc34a; border: #8bc34a;"><i
															class="fas fa-flask"></i></a><br>
														<small>Science</small>
													</div>
													<div class="col-md-4 col-3">
														<a href=" #" class="btn btn-circle text-white"
															style="background: #673ab7; border: #673ab7;"><i
															class="fas fa-child"></i></a><br>
														<small>Dance</small>
													</div>
													<div class="col-md-4 col-3">
														<a href="#" class="btn btn-circle text-white"
															style="background: #9e9e9e; border: #9e9e9e;"><i
															class="fa fa-question-circle"></i></a><br>
														<small>Quiz</small>
													</div>
												</div>
											</div>
										</div>
									</div>
									<br>
									<div class="d-block d-sm-none"
										style="background: #e6f2c7; padding: 10px; border-radius: 10px;">
										<h6 class="card-title"
											style="font-weight: 700; color: #393d3b;">Prizes</h6>
										<div class="row">
											<div class="card-body">
												<div class="row text-center text-dark">
													<div class="col-md-3 col-3">
														<a href="#" class="btn btn-round btn-lg text-white"
															style="background: #796fc7;"><i class="fas fa-tablet"></i></a><br>
														<small>Tablet</small>
													</div>
													<div class="col-md-3 col-3">
														<a href="#" class="btn btn-round btn-lg text-white"
															style="background: #796fc7;"><i class="fas fa-gift"></i></a><br>
														<small>Vouchers</small>
													</div>
													<div class="col-md-3 col-3">
														<a href=" #" class="btn btn-round btn-lg text-white"
															style="background: #796fc7;"> <i class="fa fa-trophy"></i></a><br>
														<small>Medals</small>
													</div>
													<div class="col-md-3 col-3">
														<a href="#" class="btn btn-round btn-lg text-white"
															style="background: #796fc7;"><i class="fas fa-indent"></i></a><br>
														<small>Certificates</small>
													</div>

												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="d-none d-lg-block"
											style="padding: 10px; padding-top: 0 !important; margin-top: 0 !important; margin: 10px; border-radius: 5px;">
											<p class="text-justify" style="font-weight: 600;">MySuperBrain.com brings to you
												the Junior Version of Olympics!</p>
											<p class="text-justify">Every student is special. Every
												student has amazing talents. This is your opportunity to
												showcase that talent and gain global recognition. It is also
												an opportunity to make your parents, teachers and schools
												proud. Schoolympics is the Olympics for school students and
												it is not restricted to sports.</p>
										</div>
										<div class="space-12"></div>
										<div class="row card-body d-none d-lg-block">
											<div class="container">
												<div class="row">
													<div class="card-body ">
														<nav>
															<div class="nav nav-tabs nav-fill" id="nav-tab"
																role="tablist" style="margin-bottom: 0;">
																<a class="nav-item nav-link active show" id="nav-home-tab"
																	data-toggle="tab" href="#nav-area" role="tab"
																	aria-controls="nav-area" aria-selected="true">COMPETITION
																	AREAS</a> <a class="nav-item nav-link" id="nav-profile-tab"
																	data-toggle="tab" href="#nav-age" role="tab"
																	aria-controls="nav-age" aria-selected="false">AGE
																	GROUPS</a> <a class="nav-item nav-link"
																	id="nav-contact-tab" data-toggle="tab"
																	href="#nav-dates" role="tab" aria-controls="nav-dates"
																	aria-selected="false">IMPORTANT DATES</a> <a
																	class="nav-item nav-link" id="nav-about-tab"
																	data-toggle="tab" href="#nav-selection" role="tab"
																	aria-controls="nav-selection" aria-selected="false">WINNER
																	SELECTION</a> <a class="nav-item nav-link"
																	id="nav-about-tab" data-toggle="tab" href="#nav-prizes"
																	role="tab" aria-controls="nav-prizes"
																	aria-selected="false">PRIZES</a>
															</div>
														</nav>
														<div class="tab-content py-3 px-3"
															id="nav-tabContent">
															<div class="tab-pane fade show active" id="nav-area"
																role="tabpanel" aria-labelledby="nav-area-tab">
																<div class="">
																	<p>You can showcase your talents in the following
																		areas:</p>
																</div>
																<div class="">
																	<br>
																	<ul>
																		<li>MUSIC</li>
																		<li>PAINTING</li>
																		<li>WRITING</li>
																		<li>POETRY</li>
																		<li>CRAFTS</li>
																		<li>PHOTOGRAPHY</li>
																		<li>MATHEMATICS</li>
																		<li>SCIENCE PROJECTS</li>
																		<li>DANCE</li>
																		<li>QUIZZES</li>
																	</ul>
																</div>
															</div>
															<div class="tab-pane fade" id="nav-age" role="tabpanel"
																aria-labelledby="nav-age-tab">
																<p>Schoolympics is held in three different age
																	groups for all the students</p>
																<ul>
																	<li>Kids (grade 1 to 3)</li>
																	<li>Juniors (grades 4 to 6)</li>
																	<li>Seniors (grades 7 to 9)</li>
																</ul>
															</div>
															<div class="tab-pane fade" id="nav-dates" role="tabpanel"
																aria-labelledby="nav-dates-tab">
																<p>
																	<b>Start Date :</b> 15<sup>th</sup> of August
																</p>
																<p>
																	<b>End Date :</b> 15<sup>th</sup> of September
																</p>
																<p>
																	<b>Results :</b> 23<sup>rd</sup> of September
																</p>
															</div>
															<div class="tab-pane fade" id="nav-selection"
																role="tabpanel" aria-labelledby="nav-selection-tab">
																<p>Winners are selected on the basis of two criteria
																	:</p>
																<ul>
																	<li>Voting</li>
																	<li>Expert feedback</li>
																</ul>
																<p>All the entries submitted are open for voting.</p>
															</div>
															<div class="tab-pane fade" id="nav-prizes"
																role="tabpanel" aria-labelledby="nav-prizes-tab">
																<p>Prizes include :</p>
																<ul>
																	<li>Tablet PCs</li>
																	<li>Gift Vouchers</li>
																	<li>Medals</li>
																	<li>Certificates</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>

											<!-- <ul class="tabs-animated-shadow tabs-animated nav">
												<li class="nav-item"><a role="tab"
													class="nav-link active" data-toggle="tab" href="#comp">
														<span>COMPETITION AREAS</span>
												</a></li>
												<li class="nav-item"><a role="tab" class="nav-link"
													data-toggle="tab" href="#age"> <span>AGE GROUPS</span>
												</a></li>
												<li class="nav-item">
													<a data-toggle="tab" class="nav-link" href="#paints-tab" aria-expanded="true" id="get-paints">Painitngs</a>
												</li>
												<li class="nav-item"><a role="tab" class="nav-link"
													data-toggle="tab" href="#dates"> <span>IMPORTANT
															DATES</span>
												</a></li>
												<li class="nav-item"><a role="tab" class="nav-link"
													data-toggle="tab" href="#winner"> <span>WINNER
															SELECTION</span>
												</a></li>
												<li class="nav-item"><a role="tab" class="nav-link"
													data-toggle="tab" href="#prizes"> <span>PRIZES</span>
												</a></li>

											</ul> -->
											<!-- <div class="main-card mb-3 card" style="width: 100%;">
												<div class="tab-content">
													<div class="tab-pane active" id="comp" role="tabpanel">
														<div class="card-body"
															style="background: #f3eded; border-radius: 5px;">
															<div class="row">
																<p>You can showcase your talents in the following
																	areas:</p>
															</div>
															<div class="row">
																<br>
																<ul>
																	<li>MUSIC</li>
																	<li>PAINTING</li>
																	<li>WRITING</li>
																	<li>POETRY</li>
																	<li>CRAFTS</li>
																	<li>PHOTOGRAPHY</li>
																	<li>MATHEMATICS</li>
																	<li>SCIENCE PROJECTS</li>
																	<li>DANCE</li>
																	<li>QUIZZES</li>
																</ul>
															</div>
														</div>
													</div>
													<div class="tab-pane" id="age" role="tabpanel">
														<div class="card-body"
															style="background: #f3eded; border-radius: 5px;">
															
															<p>Schoolympics is held in three different age groups
																for all the students</p>
															<ul>
																<li>Kids (grade 1 to 3)</li>
																<li>Juniors (grades 4 to 6)</li>
																<li>Seniors (grades 7 to 9)</li>
															</ul>
														</div>
													</div>
													<div id="dates" class="tab-pane" role="tabpanel">
														<div class="card-body"
															style="background: #f3eded; border-radius: 5px;">
															
															<p>
																<b>Start Date :</b> 15th of May
															</p>
															<p>
																<b>End Date :</b> 15th of June
															</p>
															<p>
																<b>Results :</b> 23rd of June
															</p>
														</div>
													</div>
													<div id="winner" class="tab-pane" role="tabpanel">
														<div class="card-body"
															style="background: #f3eded; border-radius: 5px;">
															
															<p>Winners are selected on the basis of two criteria :</p>
															<ul>
																<li>Voting</li>
																<li>Expert feedback</li>
															</ul>
															<p>All the entries submitted are open for voting.</p>
														</div>
													</div>
													<div id="prizes" class="tab-pane" role="tabpanel">
														<div class="card-body"
															style="background: #f3eded; border-radius: 5px;">
															
															<p>Prizes include :</p>
															<ul>
																<li>Tablet PCs</li>
																<li>Gift Vouchers</li>
																<li>Medals</li>
																<li>Certificates</li>
															</ul>
														</div>
													</div>
												</div>
											</div> -->
										</div>
										<br>
										<div class="col-md-12 center col-xs-12">
											<a class="btn btn-lg btn-primary btn-block"
												href="<%=request.getContextPath()%>/schoolympics/competitions">PARTICIPATE
												NOW AND WIN MEDALS FOR YOURSELF AND YOUR SCHOOL</a><br>
										</div>
									</div>
									<!-- PAGE CONTENT ENDS -->
								</div>
							</div>
						</div>
						<div class="col-md-3 col-xs-12">
							<br>
							<div
								style="border-radius: 10px; color: #FFF; font-weight: 500; height: 330px !important; padding: 10px; background: #281e11;">
								<!-- Wrapper for slides -->
								<h5 class="text-center" style="font-weight: 700;">NOTIFICATIONS
									AND NEWS</h5>
								<div class="center">
									<marquee class="center" direction="up" scrollamount="5"
										onmouseover="this.stop();" onmouseout="this.start();">
										<p>
											Schoolympics begins on the 15<sup>th</sup> of August,
											2022

										</p>
										<p>&nbsp;</p>
										<p>Students from more than 1,000 schools across the world
											will be participating!</p>
										<p>&nbsp;</p>
										<p>Inviting all the students in grades 1 to 9 to
											participate and showcase talents</p>
									</marquee>
								</div>
							</div>
							<br>

							<div class="d-block d-sm-none"
								style="border-radius: 5px; color: #000;">
								<h6 class="card-title" style="font-weight: 700; color: #393d3b;">SCHOOL</h6>
								<div class="row">
									<div class="col-md-7 col-7">
										<p>Register your school at Schoolympics to compete with
											your mates.</p>
										<a href="#" class="btn btn-sm btn-dark">REGISTER</a>
									</div>
									<div class="col-md-5 col-5" style="padding: 0px;">
										<span class="pull-right"> <a
											href="<%=request.getContextPath()%>/schoolympics/login">
												<img
												src="<%=request.getContextPath()%>/img/schoolympics/school.gif"
												style="width: 100%;" />
										</a></span>
									</div>
								</div>
							</div>

							<a class="d-none d-lg-block btn btn-lg btn-block btn-dark"
								href="<%=request.getContextPath()%>/schoolympics/register-school">REGISTER
								YOUR SCHOOL</a>
							<div class="space-12"></div>
							<br>
							<div class="d-block d-lg-block">
								<a data-toggle="tooltip" data-placement="bottom"
									class="tooltip-success" href="#" style="width: 100%;"><img
									alt="" style="width: 100%; border-radius: 5px;"
									src="<%=request.getContextPath()%>/img/schoolympics/banner.png"
									class="img-responsive"></a>
							</div>
							<br>
							<br>
						</div>
						<br>
						<br>
					</div>

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