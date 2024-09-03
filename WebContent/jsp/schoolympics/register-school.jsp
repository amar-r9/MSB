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
<title>Register School - Schoolympics | MySuperBrain</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
	content="Register your school at Schoolympics.">
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
									Register Your School
									<div class="page-title-subheading">All Fields are mandatory.</div>
								</div>
							</div>
						</div>
					</div>

					<div class="tab-content">
						<div class="tab-pane tabs-animation fade show active"
							id="tab-content-0" role="tabpanel">
							<div class="main-card mb-3 card">
								<div class="card-body">
									<form class=""
										action="<%=request.getContextPath()%>/schoolympics/registerSchool"
										method="post" id="text-form" modelAttribute="school">
										<div class="row">
											<div class="col-md-6">
												<div class="position-relative form-group">
													<label for="exampleEmail11" class="">School Name</label>
													<input type="text" class="form-control" required
														id="school_name" name="school_name" />
												</div>
											</div>
											<div class="col-md-6">
												<div class="position-relative form-group">
													<label for="exampleEmail11" class="">Contact Person</label>
													<input type="text" class="form-control" required
														id="contact_person" name="contact_person" />
												</div>
											</div>
											<div class="col-md-6">
												<div class="position-relative form-group">
													<label for="exampleEmail11" class="">Mobile</label>
													<input type="text" class="form-control" required
														id="mobile" name="mobile" />
												</div>
											</div>
											<div class="col-md-6">
												<div class="position-relative form-group">
													<label for="exampleEmail11" class="">Email</label>
													<input type="email" class="form-control" required
														id="email" name="email" />
												</div>
											</div>
											<div class="col-md-6">
												<div class="position-relative form-group">
													<label for="examplePassword" class=""><span
														class="text-danger">*</span> Country</label>
													<select name="country" required
														id="country" class="form-control">
													</select>
													<form:errors path="country" />
												</div>
											</div>
											<div class="col-md-6">
												<div class="position-relative form-group">
													<label for="examplePassword" class=""><span
														class="text-danger">*</span> State</label>
													<select name="state" required
														id="state" class="form-control">
													</select>
													<form:errors path="state" />
												</div>
											</div>
											<div class="col-md-6">
												<div class="position-relative form-group">
													<label for="exampleEmail" class=""><span
														class="text-danger">*</span> City</label><input name="city"
														id="city"  type="text" required
														class="form-control"><form:errors path="city" />
												</div>
											</div>
											<div class="col-md-6">
												<div class="position-relative form-group">
													<label for="exampleEmail11" class="">Location</label>
													<input type="text" class="form-control" required
														id="location" name="location" />
												</div>
											</div>
										</div>
										<button type="submit" class="mt-2 btn btn-primary">Submit</button>
									</form>
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
