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
<title>Schools List - Schoolympics | MySuperBrain</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
	content="List of schools registered at Schoolympics.">
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
</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<jsp:include page="/common/schoolympicsheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/schoolympicsmenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner">
					<div class="app-page-title">
						<div class="page-title-wrapper">
							<div class="page-title-heading">
								<div class="page-title-icon">
									<i class="fa fa-building icon-gradient bg-mixed-hopes"> </i>
								</div>
								<div>
									School List
									<c:if test="${success eq true }">
										<div class="page-title-subheading">Created.</div>
									</c:if>
									<c:if test="${added eq true }">
										<div class="page-title-subheading">Created.</div>
									</c:if>
								</div>
							</div>
						</div>
					</div>

					<div class="tab-content">
						<div class="tab-pane tabs-animation fade show active"
							id="tab-content-0" role="tabpanel">
							<div class="main-card mb-3 card">
								<div class="card-body">
									<c:if test="${not empty schools }">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th>#</th>
													<th>Name</th>
													<th>Code</th>
													<th>City</th>
													<th>State</th>
													<th>POC</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${schools }" var="school" varStatus="sno">
													<tr>
														<td>${sno.index+1}</td>
														<td>${school.school_name }</td>
														<td>${school.school_code }</td>
														<td>${school.city }</td>
														<td>${school.state }</td>
														<td>${school.contact_person }</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</c:if>
								</div>
							</div>
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
	<script src="<%=request.getContextPath() %>/assets/country-state.js"></script>
	<script>
		$('document').ready(function(){
			populateCountries("country", "state");
			//$('#country option:contains("India")').prop('selected',true);
			populateStates("country", "state");
			$('#competitions').addClass('mm-active');
		});
	</script>
</body>
</html>
