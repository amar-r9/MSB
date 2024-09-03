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
<title>Competitions | MySuperBrain</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
	content="Competitions categories">
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
		<jsp:include page="/common/schoolympicsheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/schoolympicsmenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner" style="padding: 0px;">
					<div class="tab-content">
						<div class="tab-pane tabs-animation fade show active"
							id="tab-content-0" role="tabpanel">
							<div class="main-card mb-3 card">
								<%-- <div class="card-body">
									<div id="carouselExampleControls1"
										class="carousel slide" data-ride="carousel">
										<div class="carousel-inner">
											<div class="carousel-item active text-center">
												<br>
												<h3 style="font-weight: 800;">Do you want the World to see your Talent?</h3>
												<h4 style="font-weight: 800;">In less than 10 minutes, you can share your talents with the whole world and start getting fans from across the world. Participate in the competitions below or Upload a Talent.</h4>
												<h5 style="font-weight: 800;">All the Best!</h5>
												<br>
											</div>
										</div>
									</div>
									<div class="row text-center">
										<div class="col-md-3">
											<div class="alert ">
												<a
													href="<%=request.getContextPath()%>/schoolympics/comedystars/competition-list">
													<img style="height: 150px; width: 150px;" class="rounded-circle"
													src="<%=request.getContextPath()%>/assets/images/competitions/comedy1.jpg" />
												<h6>COMEDY STARS</h6>
												</a>
											</div>
										</div>
										<div class="col-md-3">
											<div class="alert ">
												<a href="<%=request.getContextPath()%>/schoolympics/tests/sc"> <img
													src="<%=request.getContextPath()%>/assets/images/competitions/quiz.png" 
													style="height: 150px; width: 150px;" class="rounded-circle">
													<h6>QUIZ</h6>
												</a>
											</div>
										</div>
										<div class="col-md-3">
											<div class="alert ">
												<a
													href="<%=request.getContextPath()%>/schoolympics/music/competition-list">
													<img style="height: 150px; width: 150px;" class="rounded-circle"
													src="<%=request.getContextPath()%>/assets/images/competitions/Music.png" />
													<h6>MUSIC</h6>
												</a>
											</div>
										</div>
										<div class="col-md-3">
											<div class="alert ">
												<a
													href="<%=request.getContextPath()%>/schoolympics/dance/competition-list">
													<img style="height: 150px; width: 150px;" class="rounded-circle"
													src="<%=request.getContextPath()%>/assets/images/competitions/Dance.png" />
													<h6>DANCE</h6>
												</a>
											</div>
										</div>
										<div class="col-md-3">
											<div class="alert ">
												<a
													href="<%=request.getContextPath()%>/schoolympics/painting/competition-list">
													<img style="height: 150px; width: 150px;" class="rounded-circle"
													src="<%=request.getContextPath()%>/assets/images/competitions/Painting.png" />
													<h6>PAINTING</h6>
												</a>
											</div>
										</div>
										<div class="col-md-3">
											<div class="alert ">
												<a
													href="<%=request.getContextPath()%>/schoolympics/writing/competition-list">
													<img style="height: 150px; width: 150px;" class="rounded-circle"
													src="<%=request.getContextPath()%>/assets/images/competitions/Writing.png" />
													<h6>WRITING</h6>
												</a>
											</div>
										</div>
										<div class="col-md-3">
											<div class="alert ">
												<a
													href="<%=request.getContextPath()%>/schoolympics/speaking/competition-list">
													<img style="height: 150px; width: 150px;" class="rounded-circle"
													src="<%=request.getContextPath()%>/assets/images/competitions/Speaking.png" />
													<h6>SPEAKING</h6>
												</a>
											</div>
										</div>
										<div class="col-md-3">
											<div class="alert ">
												<a
													href="<%=request.getContextPath()%>/schoolympics/drama/competition-list">
													<img style="height: 150px; width: 150px;" class="rounded-circle"
													src="<%=request.getContextPath()%>/assets/images/competitions/drama.png" />
												<h6>ACTION/DRAMA</h6>
												</a>
											</div>
										</div>
										<div class="col-md-3">
											<div class="alert ">
												<a
													href="<%=request.getContextPath()%>/schoolympics/science/competition-list">
													<img style="height: 150px; width: 150px;" class="rounded-circle"
													src="<%=request.getContextPath()%>/assets/images/competitions/science.png" />
													<h6>SCIENCE</h6>
												</a>
											</div>
										</div>
										<div class="col-md-3">
											<div class="alert ">
												<a
													href="#">
													<img style="height: 150px; width: 150px;" class="rounded-circle"
													src="<%=request.getContextPath()%>/assets/images/competitions/coding.png" />
												<h6>CODING</h6>
												</a>
											</div>
										</div>
										<div class="col-md-3">
											<div class="alert ">
												<a
													href="<%=request.getContextPath()%>/schoolympics/science/competition-list">
													<img style="height: 150px; width: 150px;" class="rounded-circle"
													src="<%=request.getContextPath()%>/assets/images/competitions/Craft.png" />
												<h6>ARTS & CRAFTS</h6>
												</a>
											</div>
										</div>
										<div class="col-md-3">
											<div class="alert ">
												<a
													href="#">
													<img style="height: 150px; width: 150px;" class="rounded-circle"
													src="<%=request.getContextPath()%>/assets/images/competitions/Debate.png" />
												<h6>DEBATES</h6>
												</a>
											</div>
										</div>
										<div class="col-md-3">
											<div class="alert ">
												<a
													href="<%=request.getContextPath()%>/schoolympics/poetry/competition-list">
													<img style="height: 150px; width: 150px;" class="rounded-circle"
													src="<%=request.getContextPath()%>/assets/images/competitions/poetry.png" />
												<h6>POETRY</h6>
												</a>
											</div>
										</div>
										<div class="col-md-3">
											<div class="alert ">
												<a
													href="<%=request.getContextPath()%>/schoolympics/photography/competition-list">
													<img style="height: 150px; width: 150px;" class="rounded-circle"
													src="<%=request.getContextPath()%>/assets/images/competitions/photo.png" />
												<h6>PHOTOGRAPHY</h6>
												</a>
											</div>
										</div>
										<div class="col-md-3">
											<div class="alert ">
												<a
													href="<%=request.getContextPath()%>/schoolympics/story/competition-list">
													<img style="height: 150px; width: 150px;" class="rounded-circle"
													src="<%=request.getContextPath()%>/assets/images/competitions/Story.png" />
												<h6>STORY TELLING</h6>
												</a>
											</div>
										</div>
									</div>
								</div> --%>
								<div class="card-body">
									<img src="<%=request.getContextPath() %>/assets/soon.gif" />
								</div>
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
			$('#competitions').addClass('mm-active');
		});
	</script>
	<script>
		$('document').ready(function() {
			if ($('#premium').val() == 0) {
				$('#clickForPremium').click();
			}
		});
	</script>
</body>
</html>
