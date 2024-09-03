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
<title>Welcome | MySuperBrain</title>
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
						<div class="tab-pane tabs-animation fade show active"
							id="tab-content-0" role="tabpanel">
							<div class="row">
								<div class="col-md-12">
									<div class="card-body row col-md-12">
										<div class="col-md-6 thumbnail">
											<p>
												<small>CURRENT COMPETITIONS</small>
											</p>
											<h3 style="font-weight: 500;">Schoolympics</h3>
											<p>Every student is special. Every student has amazing talents. 
												This is your opportunity to showcase that talent and gain global recognition. 
												It is also an opportunity to make your parents, teachers and schools proud. 
												Schoolympics is the Olympics for school students and it is not restricted to sports.</p>
											<a href="<%=request.getContextPath()%>/schoolympics"
												class="mb-2 mr-2 btn-wide btn-lg btn-pill btn btn-light">GO
												AHEAD</a>
										</div>
										<div class="col-md-6">
											<p>
												<small>CURRENT COMPETITIONS</small>
											</p>
											<h3 style="font-weight: 500;">National Aptitude Challenge</h3>
											<p>You are smart. Here is your opportunity to show the whole country how smart you are. National Aptitude Challenge 
												is a multi level Math and English Quiz competition. You can participate at your comfort and see where you stand.</p>
											<a href="<%=request.getContextPath()%>/nac"
												class="mb-2 mr-2 btn-wide btn-lg btn-pill btn btn-light">GO
												AHEAD</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3"></div>
								<div class="col-md-6">
									<a href="<%=request.getContextPath() %>/school/user/upload_a_talent" class="btn btn-info btn-lg btn-pill btn-wide btn-block">
										UPLOAD A TALENT
									</a>
								</div>
							</div>
							<p>&nbsp;</p>
							<div class="row col-md-12" style="padding-left: 10%;">
							<div class="card-body row">
								<div class="col-md-3"></div>
								<h4 class="col-md-6">Premium Account at just INR 999/-</h4>
								<div class="col-md-3"></div>
							</div>
							<div class="row col-md-12"><p>&nbsp;</p><p>&nbsp;</p></div>
							<div class="row">
								<div class="col-md-6 row ">
									<div class="col-md-2"><span style="color: #de4545;"><i class="fa fa-outdent fa-3x"></i></span></div>
									<div class="col-md-8">
										<h4><b>Blog</b></h4>
										<h5>Personal blog where the student can share their views, talents, stories, pictures etc.</h5>
										<br><br>
									</div>
								</div>
								<div class="col-md-6 row">
									<div class="col-md-2"><span style="color: #efe038;"><i class="fa fa-cloud fa-3x"></i></span></div>
									<div class="col-md-8">
										<h4><b>Online Courses</b></h4>
										<h5>Over 1,000 hours of courses. One membership is all it takes to unlock all these.</h5>
										<br><br>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6 row">
									<div class="col-md-2"><span style="color: #16aaff;"><i class="fa fa-gift fa-3x"></i></span></div>
									<div class="col-md-8">
										<h4><b>Special Gift</b></h4>
										<h5>One extremely special gift at your doorstep on the New Year's Day 2021.</h5>
									</div>
								</div>
								<div class="col-md-6 row">
									<div class="col-md-2"><span style="color: #339c36;"><i class="fa fa-comments fa-3x"></i></span></div>
									<div class="col-md-8">
										<h4><b>Updates</b></h4>
										<h5>Get SMS updates about any offline and online events that are extremely useful for the students.</h5>
									</div>
								</div>
							</div>
						</div>
						<br><br>
						<div class="row text-center">
							<div class="col-md-4"></div>
							<div class="col-md-4">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://www.instamojo.com/mysuperbrain/premium-account-quarterly/" class="btn btn-lg btn-info btn-wide btn-pill"
									 rel="im-checkout" data-text="Get Premium
									account" data-css-style="color:#ffffff; background:#1273de; width:300px; border-radius:4px; align: center;"   data-layout="vertical"></a>
								<script src="https://js.instamojo.com/v1/button.js"></script>
							</div>
						</div>
						<div class="divider"></div>
							<div class="row">
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

							

							<div class="row d-none d-lg-block">
								<br> <br>
								<div class="main-card mb-3 card text-center">
									<h2>TOP TALENTS</h2>
									<div class="card-body row">
										<div class="col-md-1"></div>
										<div class="col-md-2">
											<div>
												<div style="width: 100%; display: inline-block;">
													<div class="" style="background: #fff;">
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
										<div class="col-md-2">
											<div>
												<div style="width: 100%; display: inline-block;">
													<div class="" style="background: #fff;">
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
										<div class="col-md-2">
											<div>
												<div style="width: 100%; display: inline-block;">
													<div class="" style="background: #fff;">
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
										<div class="col-md-2">
											<div>
												<div style="width: 100%; display: inline-block;">
													<div class="" style="background: #fff;">
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
										<div class="col-md-2">
											<div>
												<div style="width: 100%; display: inline-block;">
													<div class="" style="background: #fff;">
														<video style="width: 100%;" class="img-responsive"
															controls>
															<source
																src="https://mysuperbrain.com/user_images/Comp_Sub/MST/SCS485780_430.mp4"
																class="img-responsive" type="video/mp4">
														</video>
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
															src="https://mysuperbrain.com/user_images/Comp_Sub/MST/SCS573324_1070.mp4"
															class="img-responsive" type="video/mp4">
													</video>
													<!-- </a> -->
												</div>
												<div class="carousel-item">
													<!-- <a href="http://mysupertalent.com/srichaitanya/view/mst_competition/426" target="_blank"> -->
													<video style="width: 100%;" class="img-responsive" controls>
														<source
															src="https://mysuperbrain.com/user_images/Comp_Sub/MST/SCS472759_1117.mp4"
															class="img-responsive" type="video/mp4">
													</video>
													<!-- </a> -->
												</div>
												<div class="carousel-item">
													<!-- <a href="http://mysupertalent.com/srichaitanya/view/mst_competition/415" target="_blank"> -->
													<video style="width: 100%;" class="img-responsive" controls>
														<source
															src="https://mysuperbrain.com/user_images/Comp_Sub/MST/SCS481248_1091.mp4"
															class="img-responsive" type="video/mp4">
													</video>
													<!-- </a> -->
												</div>
												<div class="carousel-item">
													<!-- <a href="http://mysupertalent.com/srichaitanya/view/mst_competition/411" target="_blank"> -->
													<video style="width: 100%;" class="img-responsive" controls>
														<source
															src="https://mysuperbrain.com/user_images/Comp_Sub/MST/SCS927513_495.mp4"
															class="img-responsive" type="video/mp4">
													</video>
													<!-- </a> -->
												</div>
												<div class="carousel-item">
													<!-- <a href="http://mysupertalent.com/srichaitanya/view/mst_competition/410" target="_blank"> -->
													<video style="width: 100%;" class="img-responsive" controls>
														<source
															src="https://mysuperbrain.com/user_images/Comp_Sub/MST/SCS485780_430.mp4"
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