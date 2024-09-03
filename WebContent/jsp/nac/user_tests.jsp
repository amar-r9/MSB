<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="tag" uri="/WEB-INF/customTaglib.tld"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Language" content="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Tests | NAC | MySuperBrain</title>
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
</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<jsp:include page="/common/nacheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/nacmenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner">
					<div class="app-page-title">
						<div class="page-title-wrapper">
							<div class="page-title-heading">
								<div class="page-title-icon">
									<i class="pe-7s-news-paper icon-gradient bg-mean-fruit"> </i>
								</div>
								<div>
									Tests
									<!-- <div class="page-title-subheading">This is an example
										dashboard created using build-in elements and components.</div> -->
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
								<div role="group" class="btn-group-lg nav btn-group">
									<a data-toggle="tab" href="#tab-eg12-0"
										class="btn-pill pl-3 btn btn-warning">Junior (Upto Grade 6)</a>
									
									<a data-toggle="tab" href="#tab-eg12-3"
										class="btn-pill pr-3 btn btn-success">Seniors (Grade 7&above)</a>
								</div>
								<div class="tab-content">
									<br>
									<div class="tab-pane tabs-animation fade show" id="tab-eg12-0" role="tabpanel">
										<div class="mb-3 card card-body">
											<h4 class="text-center alert alert-warning">JUNIOR</h4>
											<div class="row">
												<div class="col-md-8">
													<h4 class="md">
														<a href="#">NAC Junior Test 1</a>
													</h4>
												</div>
												<div class="col-md-4 pull-right">
													<i class="fa fa-calendar"></i>
													23-12-2020
												</div>
											</div>
											<div class="space-10"></div>
											<div class="text-justify">
												<p align="justify">First test in the NAC</p>
											</div>
											<div class="pull-right">
												<a class="btn btn-success" href="<%=request.getContextPath() %>/nac/user/test/659">
													<i class="fa fa-play-circle-o"></i> Take Test
												</a>
											</div>
										</div>
									</div>
									<div class="tab-pane tabs-animation fade" id="tab-eg12-3" role="tabpanel">
										<div class="mb-3 card card-body">
											<h4 class="text-center alert alert-success">SENIOR</h4>
											<div class="row">
												<div class="col-md-8">
													<h4 class="md">
														<a href="#">NAC Senior Test 1</a>
													</h4>
												</div>
												<div class="col-md-4 pull-right">
													<i class="fa fa-calendar"></i>
													23-12-2020
												</div>
											</div>
											<div class="space-10"></div>
											<div class="text-justify">
												<p align="justify">First test in the NAC</p>
											</div>
											<div class="pull-right">
												<a class="btn btn-success" href="<%=request.getContextPath() %>/nac/user/test/660">
													<i class="fa fa-play-circle-o"></i> Take Test
												</a>
											</div>
										</div>
										<br><br>
									</div>
								</div>
							
							
							<%-- <c:choose>
							
								<c:when test="${not empty quizList }">
								  <table class="table table-striped table-bordered table-condensed table-hover">
								   <tr>
								    <th>S.No</th>
								    <th>Name</th>
								    <th>No. Of Questions</th>
								    <th>Duration(Minutes)</th>
								    <th></th>
								   </tr>
								   <c:forEach items="${quizList}" var="quiz" varStatus="itr">
								    <tr>
								     <td>${offset + itr.index +1 }</td>
								     <td>${quiz.name }</td>
								       <td>${quiz.noq }</td>
								         <td>${quiz.duration }</td>
								     <td><a href="${pageContext.servletContext.contextPath}/codingstar/user/test/${quiz.quiz_id}" class="btn btn-primary btn-sm"> Take Test</a></td>
								    </tr>
								   </c:forEach>
								  </table>
								 
							</c:when>
							<c:otherwise>
							<h3>No Tests listed under this category..!</h3>
							</c:otherwise>
							</c:choose> --%>
							
							</div>
							<div class="col-md-3"></div>
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

	<script type="text/javascript">
		$('document').ready(function(){
			$('[data-toggle=tooltip]').tooltip();
		});
	</script>
</body>
</html>