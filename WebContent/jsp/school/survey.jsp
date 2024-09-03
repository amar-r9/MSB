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
<title>Survey | MySuperBrain</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
	content="Know about what you can get at MySuperTalent.com">
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

<style type="text/css">
div.timer {
	/*border: 1px #666666 solid;*/
	width: 100px;
	height: 30px;
	/* line-height: 50px;*/
	font-size: 20px;
	text-align: center;
	float: right;
}
</style>
<style>


.val {
	cursor: pointer;
}

.answered {
	background-color: GREEN !important;
	color: #FFF !important;
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
				<div class="app-main__inner">
					<div class="app-page-title">
						<div class="page-title-wrapper">
							<div class="page-title-heading">
								<div class="page-title-icon">
									<i class="pe-7s-news-paper icon-gradient bg-mean-fruit"> </i>
								</div>
								<div>
									Survey
									<!-- <div class="page-title-subheading">Please read
										instructions carefully. Click on start test to begin your
										test.</div> -->
								</div>
							</div>
						</div>
					</div>
					<div class="tab-content">
						<div class="tab-pane tabs-animation fade show active"
							id="tab-content-0" role="tabpanel">
							<div class="main-card mb-3 card">
								<div class="card-body">
									<div class="row">
										<div class="col-md-9">
											<div class="row col-md-12">
												<c:choose>
													<c:when test="${isTestTaken eq true }">
														<h6 style="color: RED;">You already taken this
															survey.</h6>
													</c:when>
													<c:otherwise>
												<form style="width: 100%;"
													action="${pageContext.servletContext.contextPath}/school/user/submitsurvey"
													method="post" id="quiz-form" modelAttribute="surveySubmit">
													<c:forEach items="${survey}" var="que" varStatus="sno">
														<div class="row" id="qid1">
															<h5 class="row col-md-12">${sno.index+1}. ${que.question }</h5>
															<div class="col-md-12 text-center">
																<input type="radio" name="q${que.id}"
																	value="1"
																	id="radio-1-${que.id}" required >
																<label class="opt-btn btn btn-info" id="opt-a${que.id}"
																	for="radio-1-${que.id}">
																	<i class="icon icon_radio"></i> 1
																</label>
																<input type="radio" name="q${que.id}"
																	value="2"
																	id="radio-2-${que.id}" required >
																<label class="opt-btn btn btn-info" id="opt-b${que.id}"
																	for="radio-2-${que.id}">
																	<i class="icon icon_radio"></i> 2
																</label>
																<input type="radio" name="q${que.id}"
																	value="3"
																	id="radio-3-${que.id}" required >
																<label class="opt-btn btn btn-info" id="opt-c${que.id}"
																	for="radio-3-${que.id}">
																	<i class="icon icon_radio"></i> 3
																</label>
																<input type="radio" name="q${que.id}"
																	value="4"
																	id="radio-4-${que.id}" required >
																<label class="opt-btn btn btn-info" id="opt-d${que.id}"
																	for="radio-4-${que.id}">
																	<i class="icon icon_radio"></i> 4
																</label>
																<input type="radio" name="q${que.id}"
																	value="5"
																	id="radio-5-${que.id}" required >
																<label class="opt-btn btn btn-info" id="opt-e${que.id}"
																	for="radio-5-${que.id}">
																	<i class="icon icon_radio"></i> 5
																</label>
															</div>
														</div>
														<div class="divider"></div>
														<input type="hidden" name="survey_id" value="${que.survey_id }" id="survey_id" />
														
													</c:forEach>
													<input type="submit" class="btn btn-success btn-md" id="finish" 
														value="SUBMIT"/>
												</form>
												</c:otherwise>
												</c:choose>
											</div>
										</div>
										<div class="col-md-3"></div>
										<!-- /.col -->
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
	<script src="<%=request.getContextPath()%>/js/countdowntime.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/jquery.inputlimiter.1.3.1.js"></script>
	<script src="<%=request.getContextPath()%>/assets/jquery.autosize.js"></script>
	<script src="<%=request.getContextPath()%>/assets/jquery.validate.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/additional-methods.js"></script>
	<script src="<%=request.getContextPath()%>/assets/bootbox.js"></script>
	<script type="text/javascript">
		$('document').ready(function(){
			$('[data-toggle=tooltip]').tooltip();
		});
	</script>
</body>
</html>