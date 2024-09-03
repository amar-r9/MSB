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
<title><c:choose><c:when test="${not empty name }">${name }</c:when><c:otherwise>${quizScore.user_name }</c:otherwise></c:choose> has scored ${quizScore. score} in the ${quizName } Quiz MySuperBrain.com | MySuperBrain</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
	content="Congratulate <c:choose><c:when test="${not empty name }">${name }</c:when><c:otherwise>${quizScore.user_name }</c:otherwise></c:choose> for performing well on the ${quizName } Quiz">
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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link href="<%=request.getContextPath()%>/assets/jquerysctipttop.css"
	rel="stylesheet">
</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<jsp:include page="/common/schoolheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/schoolmenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner" style="background: #FFF;">
					<div class="app-page-title">
						<div class="page-title-wrapper">
							<div class="page-title-heading">
								<div class="page-title-icon">
									<i class="pe-7s-news-paper icon-gradient bg-mean-fruit"> </i>
								</div>
								<div style="text-transform: capitalize;">
									<c:choose><c:when test="${not empty name }">${name }</c:when><c:otherwise>${quizScore.user_name }</c:otherwise></c:choose>'s Test result
									<!-- <div class="page-title-subheading">Your test submitted successfully.</div> -->
								</div>
							</div>
						</div>
					</div>
					<div class="tab-content">
						<div class="tab-pane tabs-animation fade show active"
							id="tab-content-0" role="tabpanel">
							<div class="main-card mb-3 card">
								<div class="card-body">
									<div class="row text-center" id="imgs">
										<div class="col-md-12 text-center">
											<br>
											<img width="100"
												class="text-center rounded-circle" alt="Profile pic"
												src="<%=request.getContextPath()%>/school/profile/image?usr=${quizScore.user_name}" />		
											<p>&nbsp;</p>
											<h3 style="text-transform: capitalize;"><c:choose><c:when test="${not empty name }">${name }</c:when><c:otherwise>${quizScore.user_name }</c:otherwise></c:choose> has scored <span class="btn btn-pill btn-wide btn-lg btn-warning">
												${quizScore.score}/${quizScore.max_score}</span> in ${quizName } quiz</h3>
											<h4>Congratulate <c:choose><c:when test="${not empty name }">${name }</c:when><c:otherwise>${quizScore.user_name }</c:otherwise></c:choose> or Challenge <c:choose><c:when test="${not empty name }">${name }</c:when><c:otherwise>${quizScore.user_name }</c:otherwise></c:choose> and better the score.</h4>
											<h4>Celebration of Talent!</h4>
											<p>&nbsp;</p>
										</div>
									</div>
									<div class="text-center">
										<a href="<%=request.getContextPath() %>/school/tests/all"
											class="btn btn-info btn-pill">CLICK HERE TO PARTICIPATE</a>
										<p>&nbsp;</p>
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
	<script
		src="<%=request.getContextPath()%>/assets/jquery.fireworks.js"></script>

	<script type="text/javascript">
		$('document').ready(function(){
			setTimeout(function() {
		        $('#imgs').fireworks();
		    });
		});
	</script>
</body>
</html>
