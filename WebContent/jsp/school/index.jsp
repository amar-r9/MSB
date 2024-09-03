<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Language" content="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome | MySuperTalent</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
	content="This course will help you take the first steps in entrepreneurship. Learn about entrepreneurship, skills needed and much more with this.">
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
<link rel="icon" href="<%=request.getContextPath()%>/img/favicon.ico"
	type="image/x-icon">
</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<jsp:include page="/common/schoolheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/schoolmenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner" style="padding: 0px; background: #FFF;">
					<div class="tab-content">
						<div class="row d-none d-lg-block">
							<div id="carouselExampleControls1" class="carousel slide"
								data-ride="carousel">
								<div class="carousel-inner">
									<div class="carousel-item active">
										<img class="d-block w-100"
											src="<%=request.getContextPath()%>/img/talentmeetsrecognition.png"
											alt="First slide">
									</div>
									<div class="carousel-item">
										<img class="d-block w-100"
											src="<%=request.getContextPath()%>/img/entrepreneurmysupertalent.png"
											alt="Second slide">
									</div>
								</div>
								<a class="carousel-control-prev"
									href="#carouselExampleControls1" role="button"
									data-slide="prev"> <span class="carousel-control-prev-icon"
									aria-hidden="true"></span> <span class="sr-only">Previous</span>
								</a> <a class="carousel-control-next"
									href="#carouselExampleControls1" role="button"
									data-slide="next"> <span class="carousel-control-next-icon"
									aria-hidden="true"></span> <span class="sr-only">Next</span>
								</a>
							</div>

							<%-- <img
								src="<%=request.getContextPath()%>/img/entrepreneurmysupertalent.png"
								style="width: 100%;" /> --%>
						</div>
						<div class="row d-block d-sm-none" style="padding: 0px;">
							<%-- <img src="<%=request.getContextPath()%>/img/sc-mobile.png"
								style="width: 100%;" /> --%>
						</div>

						<div class="row">
							<div class="col-md-12">
								<div class="col-md-12">
									<br>
									<h4>BLOG</h4>
									<div class="divider"></div>
									<div class="row">
										<div class="main-card mb-3 card col-md-3">
											<div class="card-body">
												<img style="width: 100%;"
													src="<%=request.getContextPath()%>/assets/images/dropdown-header/abstract1.jpg"
													alt="Avatar 5">
												<div class="divider"></div>
												<h5>
													<b>As I Grew Older</b>
												</h5>
												<h6>It was a long time ago. I have almost forgotten my
													dream. But it was there then, In front of me, Bright like a
													sunâ My dream.</h6>
												<a href="<%=request.getContextPath() %>/"
													class="nav-link pull-right">Read More</a>
											</div>
										</div>

										<div class="main-card mb-3 card col-md-3">
											<div class="card-body">
												<img style="width: 100%;"
													src="<%=request.getContextPath()%>/assets/images/dropdown-header/city2.jpg"
													alt="Avatar 5">
												<div class="divider"></div>
												<h5>
													<b>White Holes</b>
												</h5>
												<h6>For a while, white holes seemed to share the fate
													of wormholes â mathematically permissible contortions of
													space-time likely prohibited by reality.</h6>
												<a href="<%=request.getContextPath() %>/"
													class="nav-link pull-right">Read More</a>
											</div>
										</div>

										<div class="main-card mb-3 card col-md-3">
											<div class="card-body">
												<img style="width: 100%;"
													src="<%=request.getContextPath()%>/assets/images/dropdown-header/abstract1.jpg"
													alt="Avatar 5">
												<div class="divider"></div>
												<h5>
													<b>Entrepreneurship and Startups</b>
												</h5>
												<h6>
													You have an idea that you feel can solve a big problem or
													cash in on an opportunity. Now, understand how you can get
													started and what can get you to the next level. There is an
													interesting activity too. Don't forget to complete the
													activity.
													</h6>
												<a href="<%=request.getContextPath() %>/"
													class="nav-link pull-right">Read More</a>
											</div>
										</div>
										<div class="main-card mb-3 card col-md-3">
											<div class="card-body">
												<img style="width: 100%;"
													src="<%=request.getContextPath()%>/assets/images/dropdown-header/city2.jpg"
													alt="Avatar 5">
												<div class="divider"></div>
												<h5>
													<b>Lessons from Instagram</b>
												</h5>
												<h6>Instagram, as we all know, is the extremely popular
													photo and video sharing platform with over 1 billion active
													users. Mike Krieger, the co-founder talks about how they
													scaled up in a short span of time. You shouldn't miss this
													video!</h6>
												<a href="<%=request.getContextPath() %>/"
													class="nav-link pull-right">Read More</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="tab-pane tabs-animation fade show active"
							id="tab-content-0" role="tabpanel">
							<div class="row">
								<div class="col-md-6">
									<div class="col-md-12">
										<div class="card-body">
											<div class="thumbnail">
												<h5 style="color: #000;">Are you a school student
													trying to showcase your talent in different areas? Go on,
													showcase talents, get recognition and win prizes and
													scholarships.</h5>
												<div class="text-center">
													<a href="<%=request.getContextPath()%>/school"
														class="btn-wide mb-2 mr-2 btn btn-square btn-alternate btn-lg">
														I AM A STUDENT </a>
												</div>

											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="card-body">
										<h5 style="color: #000;">You are nowaware of all your
											talents and want to explore, improve and showcase them. Your
											talent meets the recognition you deserve on this platform.</h5>
										<div class="text-center">
											<a href="<%=request.getContextPath()%>/others"
												class="btn-wide mb-2 mr-2 btn btn-square btn-alternate btn-lg">
												I AM 18+ </a>
										</div>
									</div>
								</div>
							</div>

							<div class="row col-md-12">
								<div class="col-md-12">
									<br>
									<div class="card-body row col-md-12">
										<div class="col-md-8">
											<h3 style="color: #000;" class="text-center">SCHOOLS</h3>
											<div class="row col-md-12">
												<br>
												<h5 style="color: #000;">Every single kid has amazing
													talent switch need to be discovered, improved and showcased
													on a global platform. We understand your passion towards
													giving your wards the best opportunities to succeed.
													MySuperTalent is a platform that helps your students make
													the most of their potential. We are with you in the quest
													to help each student achieve their dreams.</h5>
												<div class="col-md-12 text-center">
													<a href="#"
														class="btn-wide mb-2 mr-2 btn btn-square btn-danger btn-lg">
														Enrol your School</a>
												</div>
											</div>
										</div>
										<div class="col-md-4">
											<img src="<%=request.getContextPath()%>/img/school.png"
												style="width: 100%;" />
										</div>
									</div>
								</div>
							</div>
							<div class="divider"></div>
							<div class="row col-md-12">
								<div class="col-md-12">
									<div class="card-body row col-md-12">
										<div class="col-md-6">
											<p>
												<small>CURRENT COMPETITIONS</small>
											</p>
											<h3 style="font-weight: 500;">Fantastic Singer Contest</h3>
											<p>India is Home to amazing singers. You are never too
												far from a great singer, but most of these singers sing only
												in their drawing rooms, classrooms, offices or, in a
												majority of cases, bathrooms. Let's celebrate the singing
												talents of everyone.</p>
											<a href="<%=request.getContextPath()%>/singer"
												class="mb-2 mr-2 btn-wide btn-lg btn-square btn btn-light">GO
												AHEAD</a>
										</div>
										<div class="col-md-6">
											<p>
												<small>CURRENT COMPETITIONS</small>
											</p>
											<h3 style="font-weight: 500;">Milo Home Ground</h3>
											<p>Anju Bobby George is India's first and only World
												Champion in Athletics IAAF World Athletics Final. She made
												history when she won the bronze medal in long jump at the
												2003 World Championships in Athletics in Paris. See what she
												has to say about MILO HOMEGROUND.</p>
											<a href="<%=request.getContextPath()%>/milo"
												class="mb-2 mr-2 btn-wide btn-lg btn-square btn btn-light">GO
												AHEAD</a>
										</div>
									</div>
								</div>
							</div>

							<div class="row col-md-12">
								<br>
								<div class="">
									<div class="card-body">
										<h5 class="text-center" style="color: RED;">I WANT TO
											SHOWCASE MY TALENTS IN</h5>
										<div class="row text-center">
												<div class="alert ">
													<a href="#"> <img style="border-radius: 50%; width: 50%;"
														src="<%=request.getContextPath()%>/assets/images/competitions/quiz.png" />
														<h6>QUIZ</h6>
													</a>
												</div>
												<div class="alert ">
													<a href="#"> <img style="border-radius: 50%; width: 50%;"
														src="<%=request.getContextPath()%>/assets/images/competitions/Music.png" />
														<h6>MUSIC</h6>
													</a>
												</div>
												<div class="alert ">
													<a href="#"> <img style="border-radius: 50%; width: 50%;"
														src="<%=request.getContextPath()%>/assets/images/competitions/Dance.png" />
														<h6>DANCE</h6>
													</a>
												</div>
												<div class="alert ">
													<a href="#"> <img style="border-radius: 50%; width: 50%;"
														src="<%=request.getContextPath()%>/assets/images/competitions/Painting.png" />
														<h6>PAINTING</h6>
													</a>
												</div>
												<div class="alert ">
													<a href="#"> <img style="border-radius: 50%; width: 50%;"
														src="<%=request.getContextPath()%>/assets/images/competitions/Writing.png" />
														<h6>WRITING</h6>
													</a>
												</div>
												<div class="alert ">
													<a href="#"> <img style="border-radius: 50%; width: 50%;"
														src="<%=request.getContextPath()%>/assets/images/competitions/Speaking.png" />
														<h6>SPEAKING</h6>
													</a>
												</div>
											</div>
									</div>
								</div>
							</div>

							<div class="row col-md-12">
								<br>
								<div class="col-md-12">
									<div class="card-body row col-md-12">
										<div class="col-md-5">
											<div
												class="thumbnail embed-responsive embed-responsive-16by9">
												<video width="400" controls class="embed-responsive-item">
													<source
														src="<%=request.getContextPath()%>/img/besomeonessparkle.mp4"
														type="video/mp4">
													<p>Your browser does not support HTML5 video.</p>
												</video>
											</div>
										</div>
										<div class="col-md-7">
											<h3 style="color: #000;" class="text-center">BRANDS</h3>
											<div class="row col-md-12">
												<br>
												<h5 style="color: #393939;">The best way for you to
													engage your audiences is by encouraging them to showcase
													their talents. MySuperTalent gives you an opportunity to
													take your brand close to the hearts of your target
													customers by supporting their talents. Reach out to us to
													encourage more people to showcase their talents.</h5>
												<div class="col-md-12 text-center">
													<a href="#"
														class="btn-wide mb-2 mr-2 btn btn-square btn-danger btn-lg">
														Drop a Message </a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="row d-none d-lg-block">
								<br> <br>
								<div class="main-card mb-3 card text-center">
									<h2>TOP TALENTS</h2>
									<div class="card-body">
										<div
											class="slick-slider-responsive slick-initialized slick-slider slick-dotted">
											<div class="slick-list draggable">
												<div class="slick-track" style="opacity: 1;">
													<div class="slick-slide slick-current slick-active"
														style="width: 250px;">
														<div>
															<div style="width: 100%; display: inline-block;">
																<div class="slider-item" style="background: #fff;">
																	<video style="width: 100%;" class="img-responsive"
																		controls>
																		<source
																			src="http://mysupertalent.com/user_images/Comp_Sub/MST/SCS573324_1070.mp4"
																			class="img-responsive" type="video/mp4">
																	</video>
																</div>
															</div>
														</div>
													</div>
													<div class="slick-slide slick-active" data-slick-index="1"
														aria-hidden="false" role="tabpanel" id="slick-slide41"
														style="width: 250px;">
														<div>
															<div style="width: 100%; display: inline-block;">
																<div class="slider-item" style="background: #fff;">
																	<video style="width: 100%;" class="img-responsive"
																		controls>
																		<source
																			src="http://mysupertalent.com/user_images/Comp_Sub/MST/SCS472759_1117.mp4"
																			class="img-responsive" type="video/mp4">
																	</video>
																</div>
															</div>
														</div>
													</div>
													<div class="slick-slide slick-active" data-slick-index="2"
														aria-hidden="false" role="tabpanel" id="slick-slide42"
														style="width: 250px;">
														<div>
															<div style="width: 100%; display: inline-block;">
																<div class="slider-item" style="background: #fff;">
																	<video style="width: 100%;" class="img-responsive"
																		controls>
																		<source
																			src="http://mysupertalent.com/user_images/Comp_Sub/MST/SCS481248_1091.mp4"
																			class="img-responsive" type="video/mp4">
																	</video>
																</div>
															</div>
														</div>
													</div>
													<div class="slick-slide slick-active" data-slick-index="3"
														aria-hidden="false" role="tabpanel" id="slick-slide43"
														style="width: 250px;">
														<div>
															<div style="width: 100%; display: inline-block;">
																<div class="slider-item" style="background: #fff;">
																	<video style="width: 100%;" class="img-responsive"
																		controls>
																		<source
																			src="http://mysupertalent.com/user_images/Comp_Sub/MST/SCS927513_495.mp4"
																			class="img-responsive" type="video/mp4">
																	</video>
																</div>
															</div>
														</div>
													</div>
													<div class="slick-slide" data-slick-index="4"
														aria-hidden="true" role="tabpanel" id="slick-slide44"
														aria-describedby="slick-slide-control41" tabindex="-1"
														style="width: 250px;">
														<div>
															<div style="width: 100%; display: inline-block;">
																<div class="slider-item" style="background: #fff;">
																	<video style="width: 100%;" class="img-responsive"
																		controls>
																		<source
																			src="http://mysupertalent.com/user_images/Comp_Sub/MST/SCS485780_430.mp4"
																			class="img-responsive" type="video/mp4">
																	</video>
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
							<div class="row d-block d-sm-none" style="padding: 0px;">
								<div class="main-card mb-3 card">
									<div class="card-body">
										<h2 class="card-title">TOP TALENTS</h2>
										<div id="carouselExampleControls1" class="carousel slide"
											data-ride="carousel">
											<div class="carousel-inner">
												<div class="carousel-item active">
													<!-- <a href="http://mysupertalent.com/srichaitanya/view/mst_competition/38" target="_blank"> -->
													<video style="width: 100%;" class="img-responsive" controls>
														<source
															src="http://mysupertalent.com/user_images/Comp_Sub/MST/SCS573324_1070.mp4"
															class="img-responsive" type="video/mp4">
													</video>
													<!-- </a> -->
												</div>
												<div class="carousel-item">
													<!-- <a href="http://mysupertalent.com/srichaitanya/view/mst_competition/426" target="_blank"> -->
													<video style="width: 100%;" class="img-responsive" controls>
														<source
															src="http://mysupertalent.com/user_images/Comp_Sub/MST/SCS472759_1117.mp4"
															class="img-responsive" type="video/mp4">
													</video>
													<!-- </a> -->
												</div>
												<div class="carousel-item">
													<!-- <a href="http://mysupertalent.com/srichaitanya/view/mst_competition/415" target="_blank"> -->
													<video style="width: 100%;" class="img-responsive" controls>
														<source
															src="http://mysupertalent.com/user_images/Comp_Sub/MST/SCS481248_1091.mp4"
															class="img-responsive" type="video/mp4">
													</video>
													<!-- </a> -->
												</div>
												<div class="carousel-item">
													<!-- <a href="http://mysupertalent.com/srichaitanya/view/mst_competition/411" target="_blank"> -->
													<video style="width: 100%;" class="img-responsive" controls>
														<source
															src="http://mysupertalent.com/user_images/Comp_Sub/MST/SCS927513_495.mp4"
															class="img-responsive" type="video/mp4">
													</video>
													<!-- </a> -->
												</div>
												<div class="carousel-item">
													<!-- <a href="http://mysupertalent.com/srichaitanya/view/mst_competition/410" target="_blank"> -->
													<video style="width: 100%;" class="img-responsive" controls>
														<source
															src="http://mysupertalent.com/user_images/Comp_Sub/MST/SCS485780_430.mp4"
															class="img-responsive" type="video/mp4">
													</video>
													<!-- </a> -->
												</div>
											</div>
											<a class="carousel-control-prev"
												href="#carouselExampleControls1" role="button"
												data-slide="prev"> <span
												class="carousel-control-prev-icon" aria-hidden="true"></span>
												<span class="sr-only">Previous</span>
											</a> <a class="carousel-control-next"
												href="#carouselExampleControls1" role="button"
												data-slide="next"> <span
												class="carousel-control-next-icon" aria-hidden="true"></span>
												<span class="sr-only">Next</span>
											</a>
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
			//$('#home').addClass('mm-active');
		});
	</script>
</body>
</html>