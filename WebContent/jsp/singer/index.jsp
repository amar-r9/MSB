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
<title> Fantastic Singer Contest for all singing enthusiasts  | MySuperTalent</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
	content="Fantastic Singer is India's Biggest Online Singing Competition ever. Participate and get National recognition and over 5 lakhs worth of prizes.">
<meta name="keywords"
	content="singing, competition, music, mysupertalent, talent, online, competition, fantastic singer">
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
<link href="<%=request.getContextPath()%>/assets/main.cba69814a806ecc7945a.css"
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
		<jsp:include page="/common/singerheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/singermenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner" style="padding: 0px; background-color: #FFF;">
					<div class="row d-none d-lg-block">
						<a href="<%=request.getContextPath()%>/singer/user/upload_singing/18">
							<img src="<%=request.getContextPath()%>/img/starsinger.png" style="width: 100%;"/></a>
					</div>
					<div class="row d-block d-sm-none" style="padding: 0px;">
						<a href="<%=request.getContextPath()%>/singer/user/upload_singing/18">
							<img src="<%=request.getContextPath()%>/img/fantasticmobile.png" style="width: 100%;" /></a>
					</div><p>&nbsp;</p>
					<div class="row text-center">
						<div class="col-md-4"><div class="divider"></div></div>
						<div class="col-md-4">
						<button class="btn-wide mb-2 mr-2 btn btn-primary btn-lg">Total submissions so far : 3673</button>
						</div>
						<div class="col-md-4"><div class="divider"></div></div>
					</div><p>&nbsp;</p>
					<div class="row d-none d-lg-block">
						<div class="main-card mb-3 card text-center">
							<div class="card-body">
								<h5 class="card-title">Music</h5>
								<div class="slick-slider-responsive slick-initialized slick-slider slick-dotted">
									<div class="slick-list draggable">
										<div class="slick-track"
											style="opacity: 1;">
											<div class="slick-slide slick-current slick-active"
												style="width: 250px;">
												<div>
													<div style="width: 100%; display: inline-block;">
														<div class="slider-item" style="background: #fff;">
															<video style="width: 100%;" class="img-responsive" controls><source src="http://mysupertalent.com/user_images/Comp_Sub/MST/SCS573324_1070.mp4"
																class="img-responsive" type="video/mp4"></video></div>
													</div>
												</div>
											</div>
											<div class="slick-slide slick-active" data-slick-index="1"
												aria-hidden="false" role="tabpanel" id="slick-slide41"
												style="width: 250px;">
												<div>
													<div style="width: 100%; display: inline-block;">
														<div class="slider-item" style="background: #fff;">
															<video style="width: 100%;" class="img-responsive" controls><source src="http://mysupertalent.com/user_images/Comp_Sub/MST/SCS472759_1117.mp4"
																class="img-responsive" type="video/mp4"></video></div>
													</div>
												</div>
											</div>
											<div class="slick-slide slick-active" data-slick-index="2"
												aria-hidden="false" role="tabpanel" id="slick-slide42"
												style="width: 250px;">
												<div>
													<div style="width: 100%; display: inline-block;">
														<div class="slider-item" style="background: #fff;">
															<video style="width: 100%;" class="img-responsive" controls><source src="http://mysupertalent.com/user_images/Comp_Sub/MST/SCS481248_1091.mp4"
																class="img-responsive" type="video/mp4"></video></div>
													</div>
												</div>
											</div>
											<div class="slick-slide slick-active" data-slick-index="3"
												aria-hidden="false" role="tabpanel" id="slick-slide43"
												style="width: 250px;">
												<div>
													<div style="width: 100%; display: inline-block;">
														<div class="slider-item" style="background: #fff;">
															<video style="width: 100%;" class="img-responsive" controls><source src="http://mysupertalent.com/user_images/Comp_Sub/MST/SCS927513_495.mp4"
																class="img-responsive" type="video/mp4"></video></div>
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
															<video style="width: 100%;" class="img-responsive" controls><source src="http://mysupertalent.com/user_images/Comp_Sub/MST/SCS485780_430.mp4"
																class="img-responsive" type="video/mp4"></video></div>
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
	                            <h5 class="card-title">Music</h5>
	                            <div id="carouselExampleControls1" class="carousel slide" data-ride="carousel">
	                                <div class="carousel-inner">
	                                    <div class="carousel-item active">
	                                        <!-- <a href="http://mysupertalent.com/srichaitanya/view/mst_competition/38" target="_blank"> -->
	                                        	<video style="width: 100%;" class="img-responsive" controls>
	                                        		<source src="http://mysupertalent.com/user_images/Comp_Sub/MST/SCS573324_1070.mp4"
													class="img-responsive" type="video/mp4"></video>
	                                        <!-- </a> -->
	                                    </div>
	                                    
	                                    
	                                   
	                                   
	                                </div>
	                                
	                            </div>
	                        </div>
	                    </div>
					</div>
				</div>
				<div class="row">
						<div class="alert alert-info col-md-12" style="background-color: #4d538c; color: #FFF; padding: 40px;">
							<h3>India is Home to amazing singers. You are never too far from a great singer, but most of these singers sing only in their drawing rooms, classrooms, offices or, in a majority of cases, bathrooms. Let's celebrate the singing talents of everyone.</h3>
							<h3>How good a singer you are will be known only when more people listen to you. Here is your chance. No stage fear. All you need to do is record a video of you singing and then upload it.</h3>
							<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
									<a href="<%=request.getContextPath() %>/singer/list"
										class="btn btn-warning btn-block btn-lg" style="color: #FFF; font-size: 24px;">PARTICIPATE NOW</a>
								</div>
							</div>
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
	<script>
		$('document').ready(function(){
			//$('#competitions').addClass('mm-active');
		});
	</script>
</body>
</html>
