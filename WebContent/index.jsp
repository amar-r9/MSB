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
<title>Showcase your amazing talents to the world! - MySuperBrain.com</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
	content="MySuperBrain is an online platform that showcases the amazing talents in School Students. ">
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
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/testimonials.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/font-icons.css" type="text/css" />
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
</style>
<style>
.slick-slide {
    margin: 0px 20px;
}

.slick-slide img {
    width: 100%;
}

.slick-slider
{
    position: relative;
    display: block;
    box-sizing: border-box;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
            user-select: none;
    -webkit-touch-callout: none;
    -khtml-user-select: none;
    -ms-touch-action: pan-y;
        touch-action: pan-y;
    -webkit-tap-highlight-color: transparent;
}

.slick-list
{
    position: relative;
    display: block;
    overflow: hidden;
    margin: 0;
    padding: 0;
}
.slick-list:focus
{
    outline: none;
}
.slick-list.dragging
{
    cursor: pointer;
    cursor: hand;
}

.slick-slider .slick-track,
.slick-slider .slick-list
{
    -webkit-transform: translate3d(0, 0, 0);
       -moz-transform: translate3d(0, 0, 0);
        -ms-transform: translate3d(0, 0, 0);
         -o-transform: translate3d(0, 0, 0);
            transform: translate3d(0, 0, 0);
}

.slick-track
{
    position: relative;
    top: 0;
    left: 0;
    display: block;
}
.slick-track:before,
.slick-track:after
{
    display: table;
    content: '';
}
.slick-track:after
{
    clear: both;
}
.slick-loading .slick-track
{
    visibility: hidden;
}

.slick-slide
{
    display: none;
    float: left;
    height: 100%;
    min-height: 1px;
}
[dir='rtl'] .slick-slide
{
    float: right;
}
.slick-slide img
{
    display: block;
}
.slick-slide.slick-loading img
{
    display: none;
}
.slick-slide.dragging img
{
    pointer-events: none;
}
.slick-initialized .slick-slide
{
    display: block;
}
.slick-loading .slick-slide
{
    visibility: hidden;
}
.slick-vertical .slick-slide
{
    display: block;
    height: auto;
    border: 1px solid transparent;
}
.slick-arrow.slick-hidden {
    display: none;
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
				<div class="app-main__inner" style="padding: 0px; background: #FFF;">
					<div class="tab-content">
						<div class="row d-none d-lg-block">
							<div id="carouselExampleControls1" class="carousel slide"
								data-ride="carousel">
								<div class="carousel-inner">
									<div class="carousel-item active">
										<img class="d-block w-100"
											src="<%=request.getContextPath()%>/img/starinyourkid.png"
											style="width: 100%;" alt="First slide">
									</div>
									<div class="carousel-item">
										<img class="d-block w-100"
											src="<%=request.getContextPath()%>/img/slider/celebratetalent.png"
											style="width: 100%;" alt="Second slide">
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
						</div>
						<div class="row d-none d-lg-block">
							<div class=" text-center" style="background-color: #4d3952;">
								<div class="card-body">
									<p>&nbsp;</p><br>
									<h4 class="text-center" style="color: #FFF;">I want to
										<b>showcase</b> my talents in</h4><p>&nbsp;</p>
										<div class="row text-center">
											<div class="col-md-1"></div>
											<div class="col-md-10">
												<a href="<%=request.getContextPath() %>/school/tests/all" 
													class="mb-2 mr-2 btn-pill btn-lg btn-wide btn btn-alternate">Quiz</a>
												
												<a href="<%=request.getContextPath() %>/school/painting/competition-list" 
													class="mb-2 mr-2 btn-pill btn-lg btn-wide btn btn-alternate">Painting</a>
												
												<a href="<%=request.getContextPath() %>/school/writing/competition-list" 
													class="mb-2 mr-2 btn-pill btn-lg btn-wide btn btn-alternate">Writing</a>
												
												<a href="<%=request.getContextPath() %>/school/music/competition-list" 
													class="mb-2 mr-2 btn-pill btn-lg btn-wide btn btn-alternate">Music</a>
												
												<a href="<%=request.getContextPath() %>/school/dance/competition-list" 
													class="mb-2 mr-2 btn-pill btn-lg btn-wide btn btn-alternate">Dance</a>
												
												<a href="<%=request.getContextPath() %>/school/user/upload_a_talent" 
													class="mb-2 mr-2 btn-pill btn-lg btn-wide btn btn-alternate">Art&Craft</a>
												
												<a href="<%=request.getContextPath() %>/school/photography/competition-list" 
													class="mb-2 mr-2 btn-pill btn-lg btn-wide btn btn-alternate">Photography</a>
												
												<a href="<%=request.getContextPath() %>/school/user/upload_a_talent" 
													class="mb-2 mr-2 btn-pill btn-lg btn-wide btn btn-alternate">Science</a>
												
												<a href="<%=request.getContextPath() %>/school/drama/competition-list" 
													class="mb-2 mr-2 btn-pill btn-lg btn-wide btn btn-alternate">Action/Drama</a>
												
												<a href="<%=request.getContextPath() %>/school/poetry/competition-list" 
													class="mb-2 mr-2 btn-pill btn-lg btn-wide btn btn-alternate">Poetry</a>
												
												<a href="<%=request.getContextPath() %>/school/speaking/competition-list" 
													class="mb-2 mr-2 btn-pill btn-lg btn-wide btn btn-alternate">Speaking</a>
												
												<a href="<%=request.getContextPath() %>/codingstar"
													class="mb-2 mr-2 btn-pill btn-lg btn-wide btn btn-alternate">Coding</a>
												
												<a href="<%=request.getContextPath() %>/school/story/competition-list" 
													class="mb-2 mr-2 btn-pill btn-lg btn-wide btn btn-alternate">Story Telling</a>
											</div>
											<p>&nbsp;</p>
										</div>
											<p>&nbsp;</p>
									</div>
								</div>
							</div>
							<div class="row d-block d-sm-none">
								<img
									src="<%=request.getContextPath() %>/img/appimgmsb.png"
									style="width: 100%; border-radius: 5px;" /><br>
								<div class="alert-primary text-center" style="background-color: ; 
									border-radius: 10px; margin: 20px;">
									<div class="card-body">
										<h5 class="text-center" style="color: #000;">I want to
											<b>showcase</b> my talents in</h5>
										<div class="row text-center text-dark" style=" padding: 5px;">
											<div class="col-md-3 col-3">
												<a href="<%=request.getContextPath() %>/school/tests/all"
													class="btn btn-circle btn-primary btn-lg text-white"><i
													class="fas fa-calculator"></i></a> <small>Quiz</small>
											</div>
											<div class="col-md-3 col-3">
												<a
													href="<%=request.getContextPath() %>/school/painting/competition-list"
													class="btn btn-circle btn-warning btn-lg text-white"><i
													class="fas fa-palette"></i></a> <small>Painting</small>
											</div>
											<div class="col-md-3 col-3">
												<a href="<%=request.getContextPath() %>/school/writing/competition-list"
													class="btn btn-circle btn-info btn-lg text-white"><i
													class="fas fa-pen"></i></a> <small>Writing</small>
											</div>
											<div class="col-md-3 col-3">
												<a href="<%=request.getContextPath() %>/school/music/competition-list"
													class="btn btn-circle btn-danger btn-lg text-white"><i
													class="fas fa-music"></i></a> <small>Music</small>
											</div>
										</div>
										<div class="row text-center text-dark" style=" padding: 5px;">
											<div class="col-md-3 col-3">
												<a href="<%=request.getContextPath() %>/school/dance/competition-list"
													class="btn btn-circle btn-info btn-lg text-white"
													style="background: #00bcd4; border: #00bcd4;"><i
													class="fas fa-child"></i></a> <small>Dance</small>
											</div>
											<div class="col-md-3 col-3">
												<a
													href="<%=request.getContextPath() %>/school/user/upload_a_talent"
													class="btn btn-circle btn-info btn-lg text-white"
													style="background: #8bc34a; border: #8bc34a;">
													<i class="fas fa-drafting-compass"></i></a> <small>Art&Craft</small>
											</div>
											<div class="col-md-3 col-3">
												<a href="<%=request.getContextPath() %>/school/photography/competition-list"
													style="background: #673ab7; border: #673ab7;" class="btn btn-circle btn-info btn-lg text-white"><i
													class="fas fa-camera"></i></a> <small>Photography</small>
											</div>
											<div class="col-md-3 col-3">
												<a href="<%=request.getContextPath() %>/school/user/upload_a_talent"
													style="background: #9e9e9e; border: #9e9e9e;"
													class="btn btn-circle btn-info btn-lg text-white"><i
													class="fas fa-atom"></i></a> <small>Science</small>
											</div>
										</div>
										<div class="row text-center text-dark" style=" padding: 5px;">
											<div class="col-md-3 col-3">
												<a href="<%=request.getContextPath() %>/school/drama/competition-list"
													style="background: #795548; border: #795548;"
													class="btn btn-circle btn-info btn-lg text-white">
													<i class="fas fa-theater-masks"></i></a> <small>Action/Drama</small>
											</div>
											<div class="col-md-3 col-3">
												<a
													href="<%=request.getContextPath() %>/school/poetry/competition-list"
													style="background: #3ac47d; border: #3ac47d;"
													class="btn btn-circle btn-info btn-lg text-white"><i
													class="fas fa-feather"></i></a> <small>Poetry</small>
											</div>
											<div class="col-md-3 col-3">
												<a href="<%=request.getContextPath() %>/school/speaking/competition-list"
													style="background: #343a40; border: #343a40;"
													class="btn btn-circle btn-info btn-lg text-white"><i
													class="fas fa-bullhorn"></i></a> <small>Speaking</small>
											</div>
											<div class="col-md-3 col-3">
												<a href="<%=request.getContextPath() %>/codingstar"
													style="background: #3f6ad8; border: #3f6ad8;"
													class="btn btn-circle btn-info btn-lg text-white"><i
													class="fas fa-code"></i></a> <small>Coding</small>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<section class="customer-logos slider d-block d-sm-none">
						      	<div class="slide">
									<h5 style="font-weight: 500;">Schoolympics</h5>
									<p style="text-align: justify;">Every student is special. Every student has amazing talents. 
									This is your opportunity to showcase that talent and gain global recognition. 
									It is also an opportunity to make your parents, teachers and schools proud. 
									Schoolympics is the Olympics for school students and it is not restricted to sports.</p>
									<div class="text-center">
										<a href="<%=request.getContextPath() %>/schoolympics" target="_blank"
											class="mb-2 mr-2 btn-pill btn-wide btn-lg btn btn-success">GO
											AHEAD</a>
									</div>
						      </div>
						      <%-- <div class="slide">
						      	<h5 style="font-weight: 500;">National Aptitude Challenge</h5>
									<p style="text-align: justify;">You are smart. Here is your opportunity to show the whole country how smart you are. National Aptitude Challenge 
										is a multi level Math and English Quiz competition. You can participate at your comfort and see where you stand.</p>
									<div class="text-center">
										<a href="<%=request.getContextPath()%>/nac"
											class="mb-2 mr-2 btn-pill btn-wide btn-lg btn btn-danger">GO
											AHEAD</a>
									</div>
						      </div> --%>
						      <div class="slide">
									<h5 style="font-weight: 500;">Schoolympics</h5>
									<p style="text-align: justify;">Every student is special. Every student has amazing talents. 
									This is your opportunity to showcase that talent and gain global recognition. 
									It is also an opportunity to make your parents, teachers and schools proud. 
									Schoolympics is the Olympics for school students and it is not restricted to sports.</p>
									<div class="text-center">
										<a href="<%=request.getContextPath() %>/schoolympics" target="_blank"
											class="mb-2 mr-2 btn-pill btn-wide btn-lg btn btn-success">GO
											AHEAD</a>
									</div>
						      </div>
						      <div class="slide">
						      	<h5 style="font-weight: 500;">National Aptitude Challenge</h5>
									<p style="text-align: justify;">You are smart. Here is your opportunity to show the whole country how smart you are. National Aptitude Challenge 
										is a multi level Math and English Quiz competition. You can participate at your comfort and see where you stand.</p>
									<div class="text-center">
										<a href="<%=request.getContextPath()%>/nac"
											class="mb-2 mr-2 btn-pill btn-wide btn-lg btn btn-danger">GO
											AHEAD</a>
									</div>
						      </div>
						    </section>
							
							<div class="row col-md-12 d-none d-lg-block">
								<div class="card-body row col-md-12">
									<div class="col-md-6">
										<!-- <p>
											<small><a class="btn btn-sm btn-info">FEATURED COMPETITIONS</a></small>
										</p> -->
										<h5 style="font-weight: 500;">Schoolympics</h5>
										<p style="text-align: justify;">Every student is special. Every student has amazing talents. 
										This is your opportunity to showcase that talent and gain global recognition. 
										It is also an opportunity to make your parents, teachers and schools proud. 
										Schoolympics is the Olympics for school students and it is not restricted to sports.</p>
										<div class="text-center">
										<a href="<%=request.getContextPath() %>/schoolympics" target="_blank"
											class="mb-2 mr-2 btn-pill btn-wide btn-lg btn btn-success">GO
											AHEAD</a></div>
									</div>
									<div class="col-md-6">
										<!-- <p>
											<small><a class="btn btn-sm btn-info">FEATURED COMPETITIONS</a></small>
										</p> -->
										<h5 style="font-weight: 500;">National Aptitude Challenge</h5>
										<p style="text-align: justify;">You are smart. Here is your opportunity to show the whole country how smart you are. National Aptitude Challenge 
											is a multi level Math and English Quiz competition. You can participate at your comfort and see where you stand.</p>
										<div class="text-center">
										<a href="<%=request.getContextPath()%>/nac"
											class="mb-2 mr-2 btn-pill btn-wide btn-lg btn btn-danger">GO
											AHEAD</a></div>
									</div>
								</div>
							</div>
						<%-- <div class="row">
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
													suna My dream.</h6>
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
													of warm holes a mathematically permissible contortions of
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
						</div> --%>
						
						<div class="card-body d-none d-lg-block" 
							style="background-color: #fd9292;">
							<div class="row">
								<div class="col-1 col-md-1 col-lg-1"></div>
								<div class="col-7 col-md-7">
									<h3 style="font-weight: 800; color: #222121;">We've launched</h3>
									<h5 style="font-weight: 600; color: #504f4f;">Click here to download the MySuperBrain mobile application.</h5>
								</div>
								<div class="col-4 col-md-4">
									<br><br>
									<a href="https://play.google.com/store/apps/details?id=com.application.msb" target="_blank"
										class="btn btn-lg btn-circle btn-light"><i class="icon-android1 i-xlarge"></i></a>&nbsp;&nbsp;&nbsp;
									<a href="" target="_blank"
										class="btn btn-lg btn-circle btn-light"><i class="icon-app-store-ios i-xlarge"></i></a>
								</div>
							</div>
						</div><br>

						<div class="tab-pane tabs-animation fade show active"
							id="tab-content-0" role="tabpanel">
							
							<div class="row text-center">
								<div class="col-md-1"></div>
								<div class="col-md-10">
									<i class="fa fa-brain"
										style="font-size: 5.5rem; -webkit-background-clip: text;
    									-webkit-text-fill-color: transparent;
										background-image: linear-gradient(120deg, #f6d365 0%, #fda085 100%) !important;"> </i>
									<p>&nbsp;</p>
									<h5 style="font-weight: 700;">Showcase your Skill</h5>
									<h5>Do you have a talent that you want to show the world? Well, don't waste anytime. Upload a video/ audio/ picture/ text showing your talents and the whole world will take notice.</h5>
								</div>
								<br>
							</div>
							<p>&nbsp;</p>
							
							<div class="row card-body" 
								style="background-color: #24446b; color: #FFF; ">
								<div class="col-md-1"></div>
								<div class="col-md-7">
									<br>
									<h5><b style="font-weight: 800;">Quiz of the Day</b></h5>
									<h6>Take the Quiz of the Day and win exciting prizes everyday!</h6>
									<br>
								</div>
								<div class="col-md-4">
									<br><br>
									<div class="row d-block d-sm-none text-center">
										<a href="<%=request.getContextPath() %>/school/user/taketest/560"
											class="btn btn-lg btn-wide btn-square btn-light">PARTICIPATE</a>
									</div>
									<div class="row d-none d-lg-block">
										<a href="<%=request.getContextPath() %>/school/user/taketest/560"
											class="btn btn-lg btn-wide btn-square btn-light">PARTICIPATE</a>
									&nbsp;&nbsp;
									</div>
									<%-- <a href="<%=request.getContextPath() %>/school/login"
										class="btn btn-lg btn-wide btn-square btn-light">LOGIN</a> --%>
									<br>
								</div>
							</div>
							<p>&nbsp;</p>
							
						<div class="row text-center col-md-12">
							<div class="col-md-4">
								<img src="<%=request.getContextPath() %>/assets/images/discover.png"
									style="width: 120px; height: 120px;" />
								<!-- <i class="pe-7s-gym fa-4x icon-gradient bg-happy-itmeo"> </i> -->
								<p>&nbsp;</p>
								<h5>
									<b>Discover</b>
								</h5>
	
								<h6>Every child is blessed with amazing talents. 
								Discover your talents on MySuperBrain.com through activities, competitions and events.</h6>
							</div>
							<div class="col-md-4">
								<img src="<%=request.getContextPath() %>/assets/images/improve.png"
									style="width: 120px; height: 120px;" />
								<!-- <i class="pe-7s-light fa-4x icon-gradient bg-happy-itmeo"> </i> -->
								<p>&nbsp;</p>
								<h5>
									<b>Nurture</b>
								</h5>
								<h6>Every talent needs to be nurtured so that the student can discover his/her true potential. 
								Start nurturing your talents today and build a great success story.</h6>
							</div>
							<div class="col-md-4">
								<img src="<%=request.getContextPath() %>/assets/images/showcase.png"
									style="width: 120px; height: 120px;" />
								<!-- <i class="fa fa-globe fa-4x icon-gradient bg-happy-itmeo"> </i> -->
								<p>&nbsp;</p>
								<h5>
									<b>Showcase</b>
								</h5>
								<h6>Your talents shouldn't be restricted to your schools or your home. 
								Let the world celebrate your talents and you get the recognition you deserve.</h6>
							</div>
						</div>
							<div class="divider"></div>
							
							
							<%-- <div class="row">
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
							</div> --%>

							<%-- <div class="row">
								<div class="">
									<br>
									<div class="card-body row" style="text-align: justify;">
										<div class="col-md-8">
											<h5 style="color: #000; font-weight: 700;" class="text-center">SCHOOLS</h5>
											<div class="row col-md-12">
												<br>
												<h6 style="color: #000;">Every single kid has amazing talents which need to be discovered,
												 nurtured and showcased on a global platform.
												 We understand your passion towards giving your wards the best opportunities to succeed.
												 MySuperBrain.com is a platform that helps your students make the most of their potential.
												 We are with you in the quest to help each student achieve their dreams.</h6>
													<br><br>
												<div class="col-md-12 text-center">
													<br>
													<a href="<%=request.getContextPath() %>/schoolregister"
														class="btn-wide mb-2 mr-2 btn btn-pill btn-info btn-lg">
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
							</div> --%>							

							<%-- <div class="row col-md-12">
								<br><br/><br/>
								<div class="">
									<div class="card-body row">
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
											<h5 style="color: #000; font-weight: 700;" class="text-center">BRANDS</h5>
											<div class="row" style="text-align: justify;">
												<br>
												<h6 style="color: #393939;">The best way for you to engage your audiences is by encouraging them to showcase their talents.
												 MySuperBrain gives you an opportunity to take your brand close to the hearts of your target customers by supporting their talents.
												 Reach out to us to encourage more people to showcase their talents and build a positive brand recall in millions of customers.</h6>
												<div class="col-md-12 text-center">
													<br>
													<a href="#"
														class="btn-wide mb-2 mr-2 btn btn-pill btn-focus btn-lg">
														Drop a Message </a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div> --%>
							<div class="d-none d-lg-block">
								<div class="row text-center card-body" style="background-color: #24446b; color: #FFF;
								 	opacity: 67%; font-family: monospace;">
									<br>
									<div class="col-md-4">
										<br><br>
										<h1><span class="">3,200</span></h1>
										<h4>SCHOOLS</h4>
										<br><br>
									</div>
									<div class="col-md-4">
										<br><br>
										<h1>2M</h1>
										<h4>STUDENTS</h4>
										<br><br>
									</div>
									<div class="col-md-4">
										<br><br>
										<h1><span class="">200</span></h1>
										<h4>COMPETITIONS</h4>
										<br><br>
									</div>
								</div>
							</div>
							<div class="row d-block d-sm-none">
								<div style="background: #F4EDED; border-radius: 10px; 
									margin: 20px; padding: 10px;"
				            		class="alert-primary text-center">
					            	<div>
					              		<h6 style="color: #000; font-weight: 600;"></h6>
					            	</div>
						            <div class="row text-center">
						            	<div class="" style="width: 30%;">
						            		<h5 style="color: #000; font-weight: 800;">3,200</h5>
						            		<p>SCHOOLS</p>
						            	</div>
						            	<div class="" style="width: 33%;">
						            		<h5 style="color: #000; font-weight: 800;">2M</h5>
						            		<p>STUDENTS</p>
						            	</div>
						            	<div class="" style="width: 33%;">
						            		<h5 style="color: #000; font-weight: 800;">200</h5>
						            		<p>COMPETITIONS</p>
						            	</div>
					            	</div>
					   			</div>
							</div>
							
							<div class="row d-none d-lg-block">
								<div class="card-body">
									<h5 class="card-title text-center">Top Paintings</h5>
									<div class="slick-slider-responsive slick-initialized slick-slider slick-dotted">
										<div class="slick-list draggable">
											<div class="slick-track"
												style="opacity: 1;">
												<div class="slick-slide slick-current slick-active"
													style="width: 250px;">
													<div>
														<div style="width: 100%; display: inline-block;">
															<div class="slider-item" style="background: #fff;">
																<a href="https://mysuperbrain.com/school/view/mst_competition/38"
																	target="_blank"> <img src="https://mysuperbrain.com/user_images/Comp_Sub/MST/SCS836357_38.jpg"
															style="width: 100%;" class="img-responsive" /></a></div>
														</div>
													</div>
												</div>
												<div class="slick-slide slick-active" data-slick-index="1"
													aria-hidden="false" role="tabpanel" id="slick-slide41"
													style="width: 250px;">
													<div>
														<div style="width: 100%; display: inline-block;">
															<div class="slider-item" style="background: #fff;">
																<a href="https://mysuperbrain.com/school/view/mst_competition/426"
																	target="_blank"> <img src="https://mysuperbrain.com/user_images/Comp_Sub/MST/SCS307716_426.57"
															style="width: 100%;" class="img-responsive" /></a></div>
														</div>
													</div>
												</div>
												<div class="slick-slide slick-active" data-slick-index="2"
													aria-hidden="false" role="tabpanel" id="slick-slide42"
													style="width: 250px;">
													<div>
														<div style="width: 100%; display: inline-block;">
															<div class="slider-item" style="background: #fff;">
																<a href="https://mysuperbrain.com/school/view/mst_competition/415"
																	target="_blank"> <img src="https://mysuperbrain.com/user_images/Comp_Sub/MST/SCS250336_415.jpg"
															style="width: 100%;" class="img-responsive" /></a></div>
														</div>
													</div>
												</div>
												<div class="slick-slide slick-active" data-slick-index="3"
													aria-hidden="false" role="tabpanel" id="slick-slide43"
													style="width: 250px;">
													<div>
														<div style="width: 100%; display: inline-block;">
															<div class="slider-item" style="background: #fff;">
																<a href="https://mysuperbrain.com/school/view/mst_competition/411"
																	target="_blank"> <img src="https://mysuperbrain.com/user_images/Comp_Sub/MST/SCS580656_411.JPG"
															style="width: 100%;" class="img-responsive" /></a></div>
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
																<a href="https://mysuperbrain.com/school/view/mst_competition/410"
																	target="_blank"> <img src="https://mysuperbrain.com/user_images/Comp_Sub/MST/SCS568593_410.jpg"
															style="width: 100%;" class="img-responsive" /></a></div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- <div class="row d-block d-sm-none" style="padding: 0px;">
								<div class="main-card mb-3 card">
			                        <div class="card-body">
			                            <h5 class="card-title text-center">Top Paintings</h5>
			                            <div id="carouselExampleControls1" class="carousel slide" data-ride="carousel">
			                                <div class="carousel-inner">
			                                    <div class="carousel-item active">
			                                        <a href="https://mysuperbrain.com/school/view/mst_competition/38" target="_blank">
			                                        	<img class="d-block w-100" 
			                                        		src="https://mysuperbrain.com/user_images/Comp_Sub/MST/SCS836357_38.jpg" alt="First slide">
			                                        </a>
			                                    </div>
			                                    <div class="carousel-item">
				                                    <a href="https://mysuperbrain.com/school/view/mst_competition/426" target="_blank">
				                                        <img class="d-block w-100"
				                                        	src="https://mysuperbrain.com/user_images/Comp_Sub/MST/SCS307716_426.57" alt="Second slide">
				                                    </a>
			                                    </div>
			                                    <div class="carousel-item">
			                                    	<a href="https://mysuperbrain.com/school/view/mst_competition/415" target="_blank">
			                                        	<img class="d-block w-100" 
			                                        		src="https://mysuperbrain.com/user_images/Comp_Sub/MST/SCS250336_415.jpg" alt="Third slide">
			                                        </a>
			                                    </div>
			                                    <div class="carousel-item">
			                                    	<a href="https://mysuperbrain.com/school/view/mst_competition/411" target="_blank">
			                                        	<img class="d-block w-100" 
			                                        		src="https://mysuperbrain.com/user_images/Comp_Sub/MST/SCS580656_411.JPG" alt="Fourth slide">
			                                        </a>
			                                    </div>
			                                    <div class="carousel-item">
			                                    	<a href="https://mysuperbrain.com/school/view/mst_competition/410" target="_blank">
			                                        	<img class="d-block w-100" 
			                                        		src="https://mysuperbrain.com/user_images/Comp_Sub/MST/SCS568593_410.jpg" alt="Fifth slide">
			                                        </a>
			                                    </div>
			                                </div>
			                                <a class="carousel-control-prev" href="#carouselExampleControls1" role="button" data-slide="prev">
			                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			                                    <span class="sr-only">Previous</span>
			                                </a>
			                                <a class="carousel-control-next" href="#carouselExampleControls1" role="button" data-slide="next">
			                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			                                    <span class="sr-only">Next</span>
			                                </a>
			                            </div>
			                        </div>
			                    </div>
							</div> -->
							
							<div class="row d-none d-lg-block">
								<br> <br>
								<div class="main-card mb-3 card text-center">
									<div class="card-body">
								<h5 class="card-title text-center">MUSIC ENTRIES</h5>
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
																			src="https://mysuperbrain.com/user_images/Comp_Sub/MST/SCS573324_1070.mp4"
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
																			src="https://mysuperbrain.com/user_images/Comp_Sub/MST/SCS472759_1117.mp4"
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
																			src="https://mysuperbrain.com/user_images/Comp_Sub/MST/SCS481248_1091.mp4"
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
																			src="https://mysuperbrain.com/user_images/Comp_Sub/MST/SCS927513_495.mp4"
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
							
							<div class="row">
								<section class="testimonial-section2" style="width: 100%; background: #f75757;">
							 		<div class="row text-center">
										<div class="col-12">
						              		<div class="h2" style="color: #FFF;">Testimonial</div>
							           		</div>
								        </div>
							       		<div id="testim" class="testim">
									
										<!-- <div class="testim-cover"> -->
									            <div class="wrap">
									
									                <span id="right-arrow" class="arrow right fa fa-chevron-right"></span>
									                <span id="left-arrow" class="arrow left fa fa-chevron-left "></span>
									                <ul id="testim-dots" class="dots">
									                    <li class="dot active"></li><!--
									                    --><li class="dot"></li><!--
									                    --><li class="dot"></li>
									                </ul>
									                <div id="testim-content" class="cont">                    
									                    <div class="active">
									                        <div class="img"><img src="<%=request.getContextPath() %>/img/testimonials/Varun.jpeg" alt=""></div>
									                        <div class="h4">Varun Chand Bandlamudi</div>
									                        <p>I always wondered why there so much focus on just marks and ranks, and so little on the other talents that the kids have. Brilliant idea and an amazing platform. Way to go guys!</p>                    
									                    </div>
									
									                    <div>
									                        <div class="img"><img src="<%=request.getContextPath() %>/img/testimonials/Bhagavathi.jpeg" alt=""></div>
									                        <div class="h4">Bhagavathi Telukuntla, Mother (USA)</div>
									                        <p>My little one always loved painting and showing her paintings to different people. MySuperBrain is making that so easy for her and millions like her. All the Best!</p>                    
									                    </div>
									
									                    <div>
									                        <div class="img"><img src="<%=request.getContextPath() %>/img/testimonials/kushagra.PNG" alt=""></div>
									                         <div class="h4">Kushagra, Lakhanpur, Student</div>
									                        <p>MySuperBrain.com is giving an opportunity to students like me who are not from metros to showcase my talents to the whole world. Thanks to MySuperBrain.</p>                    
									                    </div>
									
									                    <!-- <div>
									                        <div class="img"><img src="https://image.ibb.co/kL6AES/Top_SA_Nicky_Oppenheimer.jpg" alt=""></div>
									                        <div class="h4">Jessica</div>
									                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>                    
									                    </div> -->
									
									                    <!-- <div>
									                        <div class="img"><img src="https://image.ibb.co/gUPag7/image.jpg" alt=""></div>
									                        <div class="h4">Kellie</div>
									                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>                    
									                    </div> -->
									
									                </div>
									                 </div>
									            </div>
									<!--         </div> -->
									    </section>
							</div>
							
							
							<!-- team section -->
							<section id="team" class="pb-5">
							    <div class="container">
							        <h5 class="section-title h1">OUR TEAM</h5>
							        <div class="row">
							            <!-- Team member -->
							            <div class="col-xs-12 col-sm-6 col-md-4">
							                <div class="image-flip" >
							                    <div class="mainflip flip-0">
							                        <div class="frontside">
							                            <div class="card">
							                                <div class="card-body text-center">
							                                    <p><img class=" img-fluid" src="<%=request.getContextPath() %>/img/team/raghu.jpg" alt="card image"></p>
							                                    <h4 class="card-title">Raghu</h4>
							                                    <h6 class="card-title">Co-founder & CEO</h6>
							                                    <p class="card-text">Raghu is an alumnus of IIM Kozhikode. He is passionate about making a difference in the lives of students.</p>
							                                    <!-- <a href="https://www.fiverr.com/share/qb8D02" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a> -->
							                                </div>
							                            </div>
							                        </div>
							                        <div class="backside">
							                            <div class="card">
							                                <div class="card-body text-center mt-4">
							                                    <h4 class="card-title">Raghu</h4>
							                                    <p class="card-text">Raghu is an alumnus of IIM Kozhikode. He is passionate about making a difference in the lives of students.
							                                    	 He firmly believes that the students need to be provided a lot of opportunities in the areas of their interest so that 
							                                    	 their full potential can come to fruition.</p>
							                                    <p>Before MySuperBrain, he worked in the US and always believed that students across the world should be able to connect on one 
							                                    	platform and the connecting thread should the talents in them.</p>
							                                    <ul class="list-inline">
							                                        <li class="list-inline-item">
							                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.facebook.com/bojjareddy">
							                                                <img src="<%=request.getContextPath() %>/img/icons/facebook.webp" 
							                                                	style="width: 20px;"/>
							                                            </a>
							                                        </li>
							                                        <li class="list-inline-item">
							                                            <a class="social-icon text-xs-center" target="_blank" href="#">
							                                                <img src="<%=request.getContextPath() %>/img/icons/instagram.webp" 
							                                                	style="width: 20px;"/>
							                                            </a>
							                                        </li>
							                                        <li class="list-inline-item">
							                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.linkedin.com/in/raghavendar-reddy-bojja-a018b16/">
							                                                <img src="<%=request.getContextPath() %>/img/icons/linkedin.webp" 
							                                                	style="width: 20px;"/>
							                                            </a>
							                                        </li>
							                                        <li class="list-inline-item">
							                                            <a class="social-icon text-xs-center" target="_blank" href="#">
							                                                <i class="fa fa-google"></i>
							                                            </a>
							                                        </li>
							                                    </ul>
							                                </div>
							                            </div>
							                        </div>
							                    </div>
							                </div>
							            </div>
							            <!-- ./Team member -->
							            <!-- Team member -->
							            <div class="col-xs-12 col-sm-6 col-md-4">
							                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
							                    <div class="mainflip">
							                        <div class="frontside">
							                            <div class="card">
							                                <div class="card-body text-center">
							                                    <p><img class=" img-fluid" src="<%=request.getContextPath() %>/img/team/yuva.jpg" alt="card image"></p>
							                                    <h4 class="card-title">Yuvraj</h4>
							                                    <h6 class="card-title">Co-founder & COO</h6>
							                                    <p class="card-text">Yuva is an alumnus of IIM Kozhikode. He strongly believes that education should not be restricted to the classroom or the syllabus.</p>
							                                    <!-- <a href="https://www.fiverr.com/share/qb8D02" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a> -->
							                                </div>
							                            </div>
							                        </div>
							                        <div class="backside">
							                            <div class="card">
							                                <div class="card-body text-center mt-4">
							                                    <h4 class="card-title">Yuvraj</h4>
							                                    <p class="card-text">Yuva is an alumnus of IIM Kozhikode. He strongly believes that education should not be restricted to the classroom or the syllabus. 
							                                    	A great believer in the potential of the gen Y and the force behind mysuperbrain.com.</p>
							                                    <ul class="list-inline">
							                                        <li class="list-inline-item">
							                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.facebook.com/yuvaraj256">
							                                                <img src="<%=request.getContextPath() %>/img/icons/facebook.webp" 
							                                                	style="width: 20px;"/>
							                                            </a>
							                                        </li>
							                                        <li class="list-inline-item">
							                                            <a class="social-icon text-xs-center" target="_blank" href="#">
							                                                <img src="<%=request.getContextPath() %>/img/icons/instagram.webp" 
							                                                	style="width: 20px;"/>
							                                            </a>
							                                        </li>
							                                        <li class="list-inline-item">
							                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.linkedin.com/in/yuvaraju-atmakuri-3b1b2614/">
							                                                <img src="<%=request.getContextPath() %>/img/icons/linkedin.webp" 
							                                                	style="width: 20px;"/>
							                                            </a>
							                                        </li>
							                                        <li class="list-inline-item">
							                                            <a class="social-icon text-xs-center" target="_blank" href="#">
							                                                <i class="fa fa-google"></i>
							                                            </a>
							                                        </li>
							                                    </ul>
							                                </div>
							                            </div>
							                        </div>
							                    </div>
							                </div>
							            </div>
							            <!-- ./Team member -->
							            <!-- Team member -->
							            <div class="col-xs-12 col-sm-6 col-md-4">
							                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
							                    <div class="mainflip">
							                        <div class="frontside">
							                            <div class="card">
							                                <div class="card-body text-center">
							                                    <p><img class=" img-fluid" src="<%=request.getContextPath() %>/img/team/amar1.jpg" alt="card image"></p>
							                                    <h4 class="card-title">Amar</h4>
							                                    <h6 class="card-title">CTO</h6>
							                                    <p class="card-text">Amar is the guy behind the platform hundreds of thousands of students are now using to showcase their talents.</p>
							                                    <!-- <a href="https://www.fiverr.com/share/qb8D02" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a> -->
							                                </div>
							                            </div>
							                        </div>
							                        <div class="backside">
							                            <div class="card">
							                                <div class="card-body text-center mt-4">
							                                    <h4 class="card-title">Amar</h4>
							                                    <p class="card-text">Amar is the guy behind the platform hundreds of thousands of students are now using to showcase their talents. 
							                                    	He is continuously finding new ways to showcase the talents in students and also give them an opportunity to hone those talents.</p>
							                                    <ul class="list-inline">
							                                        <li class="list-inline-item">
							                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.facebook.com/amareshwarr/">
							                                                <img src="<%=request.getContextPath() %>/img/icons/facebook.webp" 
							                                                	style="width: 20px;"/>
							                                            </a>
							                                        </li>
							                                        <li class="list-inline-item">
							                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.instagram.com/amar.r_/">
							                                                <img src="<%=request.getContextPath() %>/img/icons/instagram.webp" 
							                                                	style="width: 20px;"/>
							                                            </a>
							                                        </li>
							                                        <li class="list-inline-item">
							                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.linkedin.com/in/amareshwar-reddypally/">
							                                                <img src="<%=request.getContextPath() %>/img/icons/linkedin.webp" 
							                                                	style="width: 20px;"/>
							                                            </a>
							                                        </li>
							                                        <li class="list-inline-item">
							                                            <a class="social-icon text-xs-center" target="_blank" href="#">
							                                                <i class="fa fa-google"></i>
							                                            </a>
							                                        </li>
							                                    </ul>
							                                </div>
							                            </div>
							                        </div>
							                    </div>
							                </div>
							            </div>
							        </div>
							    </div>
							</section>
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
	<script src="<%=request.getContextPath()%>/assets/summernote/summernote.js"></script>
	<!------ Include the above in your HEAD tag ---------->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js"></script>
	<script>
		$('document').ready(function(){
		    $('.customer-logos').slick({
		        slidesToShow: 1,
		        slidesToScroll: 1,
		        autoplay: true,
		        autoplaySpeed: 1500,
		        arrows: false,
		        dots: false,
		        pauseOnHover: false,
		        responsive: [{
		            breakpoint: 368,
		            settings: {
		                slidesToShow: 1
		            }
		        }, {
		            breakpoint: 320,
		            settings: {
		                slidesToShow: 1.5
		            }
		        }]
		    });
		});
	</script>
	<script>
		$({ Counter: 0 }).animate({
		  Counter: $('.Single1').text()
		}, {
		  duration: 3000,
		  easing: 'swing',
		  step: function() {
		    $('.Single1').text(Math.ceil(this.Counter));
		  }
		});
		$({ Counter: 0 }).animate({
		  Counter: $('.Single3').text()
		}, {
		  duration: 2000,
		  easing: 'swing',
		  step: function() {
		    $('.Single3').text(Math.ceil(this.Counter));
		  }
		});
		
		$('document').ready(function() {
			//$('#home').addClass('mm-active');
		});

		// vars
		'use strict'
		var	testim = document.getElementById("testim"),
				testimDots = Array.prototype.slice.call(document.getElementById("testim-dots").children),
		    testimContent = Array.prototype.slice.call(document.getElementById("testim-content").children),
		    testimLeftArrow = document.getElementById("left-arrow"),
		    testimRightArrow = document.getElementById("right-arrow"),
		    testimSpeed = 4500,
		    currentSlide = 0,
		    currentActive = 0,
		    testimTimer,
				touchStartPos,
				touchEndPos,
				touchPosDiff,
				ignoreTouch = 30;
		;

		window.onload = function() {

		    // Testim Script
		    function playSlide(slide) {
		        for (var k = 0; k < testimDots.length; k++) {
		            testimContent[k].classList.remove("active");
		            testimContent[k].classList.remove("inactive");
		            testimDots[k].classList.remove("active");
		        }

		        if (slide < 0) {
		            slide = currentSlide = testimContent.length-1;
		        }

		        if (slide > testimContent.length - 1) {
		            slide = currentSlide = 0;
		        }

		        if (currentActive != currentSlide) {
		            testimContent[currentActive].classList.add("inactive");            
		        }
		        testimContent[slide].classList.add("active");
		        testimDots[slide].classList.add("active");

		        currentActive = currentSlide;
		    
		        clearTimeout(testimTimer);
		        testimTimer = setTimeout(function() {
		            playSlide(currentSlide += 1);
		        }, testimSpeed)
		    }

		    testimLeftArrow.addEventListener("click", function() {
		        playSlide(currentSlide -= 1);
		    })

		    testimRightArrow.addEventListener("click", function() {
		        playSlide(currentSlide += 1);
		    })    

		    for (var l = 0; l < testimDots.length; l++) {
		        testimDots[l].addEventListener("click", function() {
		            playSlide(currentSlide = testimDots.indexOf(this));
		        })
		    }

		    playSlide(currentSlide);

		    // keyboard shortcuts
		    document.addEventListener("keyup", function(e) {
		        switch (e.keyCode) {
		            case 37:
		                testimLeftArrow.click();
		                break;
		                
		            case 39:
		                testimRightArrow.click();
		                break;

		            case 39:
		                testimRightArrow.click();
		                break;

		            default:
		                break;
		        }
		    })
				
				testim.addEventListener("touchstart", function(e) {
						touchStartPos = e.changedTouches[0].clientX;
				})
			
				testim.addEventListener("touchend", function(e) {
						touchEndPos = e.changedTouches[0].clientX;
					
						touchPosDiff = touchStartPos - touchEndPos;
					
						console.log(touchPosDiff);
						console.log(touchStartPos);	
						console.log(touchEndPos);	

					
						if (touchPosDiff > 0 + ignoreTouch) {
								testimLeftArrow.click();
						} else if (touchPosDiff < 0 - ignoreTouch) {
								testimRightArrow.click();
						} else {
							return;
						}
					
				})
		}


	</script>
</body>
</html>