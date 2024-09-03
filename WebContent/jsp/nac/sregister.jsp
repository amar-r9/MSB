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
<title>Register School | NAC | MySuperBrain</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
	content="This is an example dashboard created using build-in elements and components.">
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
	href="<%=request.getContextPath()%>/assets/summernote/summernote.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/assets/main.cba69814a806ecc7945a.css"
	rel="stylesheet">
<style>
.error-msg {
	color: RED;
}
</style>
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
									Register School
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
										<div class="col-md-8">
											<c:if test="${param.success eq true}">
												<div class="alert alert-success"><h4>School Registered
													successfully</h4>
												<a href="<%=request.getContextPath() %>/nac/school/${param.id}"
													class="btn btn-sm btn-info pull-right">CLICK HERE FOR SCHOOL MICRO SITE</a></div>
											</c:if>
											<c:if test="${param.success eq false}">
												<div class="alert alert-warning">There is a technical
													problem..! Try again later</div>
											</c:if>
											<div class="row col-md-12">
												<h4>Instructions :</h4>
												<ul>
													<li>Please fill out these details to register your school for MySuperBrain’s online activities for your students</li>
													<li>You will get a school microsite link upon completion of this form</li>
													<li>One of our team members will reach out to you to make the school micro site more special</li>
													<li>You can share the school microsite link with your students so that they can showcase their talents to the whole world</li>
												</ul>
											</div>
											<form class=""
												action="<%=request.getContextPath()%>/nac/enrolschool"
												method="post" id="school-form" enctype="multipart/form-data">

												<div class="position-relative form-group">
													<label for="exampleEmail11" class="">School Name</label> <input
														type="text" name="school_name" id="school_name"
														class="form-control" />
												</div>
												<div class="row">
													<div class="col-md-4">
														<div class="position-relative form-group">
															<label for="exampleEmail11" class="">Incharge
																Teacher</label> <input type="text" class="form-control"
																id="incharge" name="incharge" />
														</div>
													</div>
													<div class="col-md-4">
														<div class="position-relative form-group">
															<label for="exampleFile" class="">Strength</label>
															<input type="text" id="strength" name="strength" class="form-control" />
	                                                    </div>
                                                    </div>
													<div class="col-md-4">
														<div class="position-relative form-group">
															<label for="exampleEmail11" class="">Location</label> <input
																type="text" class="form-control" id="location"
																name="location" />
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-md-6">
														<div class="position-relative form-group">
															<label for="exampleFile" class="">Email</label> <input
																type="email" id="email" name="email"
																class="form-control" />
														</div>
													</div>
													<div class="col-md-6">
														<div class="position-relative form-group">
															<label for="exampleEmail11" class="">Phone</label> <input
																type="text" class="form-control" id="phone" name="phone" />
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-md-6">
														<div class="position-relative form-group">
															<label for="exampleEmail11" class="">Country</label>
															<select class="form-control" name="country" id="country"></select>
														</div>
													</div>
													<div class="col-md-6">
														<div class="position-relative form-group">
															<label for="exampleFile" class="">State</label> <input
																type="text" id="state" name="state" class="form-control" />
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-md-6">
														<div class="position-relative form-group">
															<label for="exampleEmail11" class="">City</label> <input
																type="text" class="form-control" id="city" name="city" />
														</div>
													</div>
                                                    <div class="col-md-6">
	                                                    <div class="position-relative form-group">
															<label for="exampleEmail11" class="">Board</label>
															<select name="board" id="board" class="form-control">
																<option value="">Select Board</option>
																<option value="STATE">STATE</option>
																<option value="CBSE">CBSE</option>
																<option value="ICSE">ICSE</option>
																<option value="IGCSE">IGCSE</option>
																<option value="IB">IB</option>
															</select>
														</div>
													</div>
												</div>
												
												<button type="submit" class="mt-2 btn btn-primary">Submit</button>
											</form>
										</div>
										<div class="col-md-4"></div>
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

	<!-- [if lte IE 8]> -->
	<script src="<%=request.getContextPath()%>/assets/js/excanvas.js"></script>
	<!-- [endif] -->
	<script
		src="<%=request.getContextPath()%>/assets/county-state.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/summernote/summernote.js"></script>

	<script type="text/javascript">
		$('document').ready(function() {
			populateCountries("country", "state");
			$('#country option:contains("India")').prop('selected',true);
			populateStates("country", "state");

			$('#school-form').validate({
				errorElement : 'div',
				errorClass : 'error-msg',
				focusInvalid : true,

				rules : {
					school_name : {
						required : true
					},
					location : {
						required : true
					},
					city : {
						required : true
					},
					state : {
						required : true
					},
					incharge : {
						required : true
					},
					email : {
						required : true
					},
					phone : {
						required : true
					},
					strength : {
						required : true
					},
					board : {
						required : true
					}
				},
				messages : {

				},

				submitHandler : function(form) {
					$('#school-form button[type=submit]').prop(
							"disabled", "disabled");
					form.submit();
				}

			});
		});
	</script>
</body>
</html>