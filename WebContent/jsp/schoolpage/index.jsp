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
<title>Narayana | My Super Talent</title>
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
</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<jsp:include page="/common/eheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/emenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner" style="padding: 0px; background: #FFF;">
					<div class="tab-content">
						<div class="row d-none d-lg-block">
							<div id="carouselExampleControls1" class="carousel slide"
								data-ride="carousel">
								<div class="carousel-inner">
									<div class="carousel-item active">
										<img class="d-block w-100"
											src="https://www.narayanaschools.in/wp-content/webp-images/Slider-Home/narayana_award_01.webp"
											alt="First slide">
									</div>
									<div class="carousel-item">
										<img class="d-block w-100"
											src="https://www.narayanaschools.in/wp-content/uploads/2020/07/OnlineClassesBanner.jpg"
											alt="Third slide">
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
						<div class="tab-pane tabs-animation fade show active"
							id="tab-content-0" role="tabpanel">
							<div class="main-card mb-3 card">
								<div class="card-body">
						<div class="row">
							<div class="col-md-8">
								<div>
									<h2 class="alert alert-warning text-center">NARAYANA TECHNO SCHOOLS</h2>
								</div>
								<br />
								<h6>Narayana Schools retain World No. 1 position in NASA Space settlement Contest for 5th Consecutive year. In NASA Space Settlement Contest - 2019, 38% of the Worl dwide school level Selections from Narayana Schools alone.</h6>
								<div class="space-20"></div>
								<%-- 	<h4><a class="pull-right" href="<%=request.getContextPath() %>/entries/${user.username}" target="_blank">View all entries</a></h4> --%>
								<div class="space-20"></div>
								<hr>
								<div class="widget-box transparent" id="recent-box"
									style="min-height: 230px;">
									<div class="widget-header">
										<h4 class="widget-title lighter smaller">
											<i class="ace-icon fa fa-rss orange"></i> Recent Competition
											Entry Submissions <span class="pull-right"> <span style="font-size: 14px;"><a
												href="<%=request.getContextPath()%>/school/school-entries/narayana">See
													All Entries From School</a></span>
											</span>
										</h4>

										<div class="widget-toolbar no-border">
											<ul class="tabs-animated-shadow tabs-animated nav">
												<li class="nav-item"><a role="tab"
													class="nav-link active" data-toggle="tab" href="#texts-tab"
													id="get-texts"> <span>Music</span>
												</a></li>
												<li class="nav-item"><a role="tab" class="nav-link"
													data-toggle="tab" href="#paints-tab" id="get-paints"> <span>Painting</span>
												</a></li>
												<!-- <li class="nav-item">
														<a data-toggle="tab" class="nav-link" href="#paints-tab" aria-expanded="true" id="get-paints">Painitngs</a>
													</li> -->
												<li class="nav-item"><a role="tab" class="nav-link"
													data-toggle="tab" href="#dances-tab" id="get-dances"> <span>Dance</span>
												</a></li>
												<li class="nav-item"><a role="tab" class="nav-link"
													data-toggle="tab" href="#dialogues-tab" id="get-dialogues">
														<span>Speaking</span>
												</a></li>
											</ul>
										</div>
									</div>
									<div class="tab-content">
										<div class="tab-pane active" id="texts-tab" role="tabpanel">
											<%-- <c:if test="${not empty essays }">
													<c:forEach items="${essays }" var="essay"> --%>
											<div class="alert alert-info">
												<h5 class="card-title">Vocal/Instrumental
													<small class="pull-right">amar&nbsp;&nbsp;</small>
												</h5>
												<p style="text-align: justify;">I like to sing songs and play instruments which are commenly in my house

												</p>
												<div class="divider"></div>
												<a class="btn btn-primary" target="_blank"
													href="<%=request.getContextPath() %>/srichaitanya/view/text_competition/${essay.id}">VIEW
													ENTRY</a>
											</div>

											<%-- </c:forEach>
												</c:if>
												<c:if test="${empty essays }">
												<h6>No Entries Found</h6>
												</c:if> --%>

										</div>
								<!-- /.widget-main -->
								<%-- <c:if test="${not empty pageDetails.achievements }"> --%>
</div></div>

<hr>
									<div class="widget-box">
										<div class="widget-header widget-header-flat">
											<h4 class="smaller">
												<i class="ace-icon fa fa-trophy"></i> Student Achievers
											</h4>
										</div>

										<div class="widget-body">
											<div class="widget-main">

												<ol class="linenums"><li>Harshit from class IX stood 1<sup>st</sup> in painting competition at MySuperBrain.com</li>
													<li>Simran from class VI stood 1<sup>st</sup> in GK.</li>
												</ol>

											</div>
										</div>
									</div>
								<%-- </c:if> --%>
								<hr>
								<%-- <c:if test="${not empty pageDetails.message }"> --%>
									<div class="widget-box">
										<div class="widget-header widget-header-flat">
											<h4 class="widget-title smaller">
												<i class="ace-icon fa fa-quote-left smaller-80"></i>
												Principal's Message
											</h4>
										</div>

										<div class="widget-body">
											<div class="widget-main">
												<div class="row">
													<div class="col-md-12">
														<blockquote class="pull-right">
															<p class="text-justify">With 41 years of Academic Excellency….. The Narayana Group is Asia’s largest educational conglomerate with over 400,000 students and 40,000 experienced teaching and non-teaching faculty in over 590 centres. Spread across 13 states, Narayana is hosting a bouquet of schools, junior colleges, engineering, medical and management institutions, coaching centres along with IAS training academy, has already set a benchmark in academic excellence by continuously delivering top and matchless results in Intra and International competitive examinations.</p>
														</blockquote>
													</div>
												</div>




											</div>
										</div>
									</div>
								<%-- </c:if>
								<c:if test="${not empty pageDetails.introduction }">
									<h5>
										<b>Introduction:</b>
									</h5>

									<p class="text-justify">${pageDetails.introduction }</p>
								</c:if> --%>

							</div>
							<div class="col-md-4">
								<div class="text-center">
									<img
										src="<%=request.getContextPath()%>/img/narayana-logo.png"
										class="img-thumbnail" alt="Invalid Format Logo">
								</div>

								<hr>
								<div align="center">
									<button type="button" class="btn btn-primary btn-block"
										id="add-school">I study at this school</button>
									<span id="add-school-wait"></span>
								</div>
								<hr>
								<div class="main-card mb-3 card">
										<div class="card-body" style="background-color: #4d538c; color: #FFF;">
											<h5 class=" text-center">TOP STUDENTS</h5>
											<div class="divider"></div>
											<h6>
												<ul>
													<!-- <li>START DATE: 5th July, 2020</li> -->
													<li>Harshith</li>
													<li>Shivali</li>
													<li>Soonith</li>
												</ul>
											</h6>
										</div>
									</div>
								
							</div>
						</div></div></div></div>
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