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
<title>Future Entrepreneurs Course for School and College
	Students | My Super Talent</title>
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
				<div class="app-main__inner">
					<div class="app-page-title" style="margin-bottom: 0px;">
						<div class="page-title-wrapper">
							<div class="page-title-heading">
								<div class="page-title-icon">
									<i class="pe-7s-news-paper icon-gradient bg-mean-fruit"> </i>
								</div>
								<div>
									Gift/Register
									<!-- <div class="page-title-subheading">This is an example
										dashboard created using build-in elements and components.</div> -->
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane tabs-animation fade show active"
						id="tab-content-0" role="tabpanel">


						<div class="row">
							<div class="col-md-12">
								<div class="main-card mb-3 card">
									<div class="card-body">
										<div class="row">
											<div class="col-md-6">
												<table class="mb-0 table table-bordered">
													<thead>
														<!-- <tr>
															<th>#</th>
															<th>First Name</th>
															<th>Last Name</th>
															<th>Username</th>
														</tr> -->
													</thead>
													<tbody>
														<tr>
															<th scope="row">1</th>
															<td>Single participant</td>
															<td>INR 500</td>
															<td><a
																href="https://www.instamojo.com/mysuperbrain/entrepreneurship-b60b5/"
																rel="im-checkout" data-text="BUY NOW"
																data-css-style="color:#ffffff; background:#d92550; width:200px;"
																data-layout="vertical"></a> <script
																	src="https://js.instamojo.com/v1/button.js"></script></td>
														</tr>
														<tr>
															<th scope="row">2</th>
															<td>Two Participants</td>
															<td>INR 750</td>
															<td><a
																href="https://www.instamojo.com/mysuperbrain/entrepreneurship-for-two/"
																rel="im-checkout" data-text="BUY NOW (FOR 2)"
																data-css-style="color:#ffffff; background:#d92550; width:200px; border-radius:4px"
																data-layout="vertical"></a> <script
																	src="https://js.instamojo.com/v1/button.js"></script></td>
														</tr>
														<tr>
															<th scope="row">3</th>
															<td>Group (upto 5)</td>
															<td>INR 1,000</td>
															<td><a
																href="https://www.instamojo.com/mysuperbrain/entrepreneurship-for-group/"
																rel="im-checkout" data-text="BUY NOW (GROUP)"
																data-css-style="color:#ffffff; background:#d92550; width:200px; border-radius:4px"
																data-layout="vertical"></a> <script
																	src="https://js.instamojo.com/v1/button.js"></script></td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="col-md-6"></div>
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