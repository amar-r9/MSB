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
<title>Top Schools of MILO HOMEGROUND | MySuperTalent</title>
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
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<jsp:include page="/common/mheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/mmenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner">
					<div class="app-page-title">
						<div class="page-title-wrapper">
							<div class="page-title-heading">
								<div class="page-title-icon">
									<i class="pe-7s-news-paper icon-gradient bg-mean-fruit"> </i>
								</div>
								<div>
									TOP SCHOOLS
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
											<h6 align="justify"> These are the top schools of the MILO HOMEGROUND so far. Is your school on this list yet?</h6>
											<div class="row">
												<table class="table table-bordered no-footer" id="blog">
													<thead>
														<tr>
															<th>#</th>
															<th>School</th>
															<th>City</th>
															<th>State</th>
															<th>Points</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<th>1</th>
															<th>Delhi Public School</th>
															<th>Delhi</th>
															<th>Delhi</th>
															<th>1001</th>
														</tr>
														<tr>
															<th>2</th>
															<th>Hyderabad Public School</th>
															<th>Hyderabad</th>
															<th>Telangana</th>
															<th>981</th>
														</tr>
														<tr>
															<th>3</th>
															<th>Bangalore Public School</th>
															<th>Bengaluru</th>
															<th>Karnatala</th>
															<th>961</th>
														</tr>
														<tr>
															<th>4</th>
															<th>Chennai Public School</th>
															<th>Chennai</th>
															<th>Tamil Nadu</th>
															<th>950</th>
														</tr>
														<tr>
															<th>5</th>
															<th>Mumbai Public School</th>
															<th>Mumbai</th>
															<th>Maharashtra</th>
															<th>940</th>
														</tr>
														<tr>
															<th>6</th>
															<th>Pune Public School</th>
															<th>Pune</th>
															<th>Maharashtra</th>
															<th>930</th>
														</tr>
														<tr>
															<th>7</th>
															<th>Kolkata Public School</th>
															<th>Kolkata</th>
															<th>West Bengal</th>
															<th>901</th>
														</tr>														
													</tbody>
												</table>
											</div>
											
										</div>
										<div class="col-md-3"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<jsp:include page="/common/mfooter.jsp"></jsp:include>
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