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
						

						<div class="tab-pane tabs-animation fade show active"
							id="tab-content-0" role="tabpanel">
							<div class="row col-md-12">
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
												class="mb-2 mr-2 btn-wide btn-lg btn-square btn btn-light">GO
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