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
<title>Teaching Form | My Super Talent</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description" content="Interested in teaching">
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
		<jsp:include page="/common/schoolheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/schoolmenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner">
					<!-- <div class="app-page-title">
						<div class="page-title-wrapper">
							<div class="page-title-heading">
								<div class="page-title-icon">
									<i class="pe-7s-news-paper icon-gradient bg-mean-fruit"> </i>
								</div>
								<div>
									Teaching Form
									<div class="page-title-subheading">This is an example
										dashboard created using build-in elements and components.</div>
								</div>
							</div>
						</div>
					</div> -->
					<div class="tab-content">
						<div class="tab-pane tabs-animation fade show active"
							id="tab-content-0" role="tabpanel">
							<div class="main-card mb-3 card">
								<div class="card-body">
									<div class="row">
										<div class="col-md-9">
											<c:if test="${param.success eq true}">
												<div class="alert alert-success">Your Interest has been submitted
													successfully</div>
											</c:if>
											<c:if test="${param.success eq false}">
												<div class="alert alert-warning">There is a technical
													problem..! Try again later</div>
											</c:if>
											<form class=""
												action="<%=request.getContextPath()%>/school/teaching-interest"
												method="post" id="teaching-form"
												enctype="multipart/form-data">
												
												<div class="position-relative form-group">
													<label for="exampleFile" class="">Name</label> <input
														type="text" id="name" name="name" class="form-control" />
												</div>

												<div class="row">
													<div class="col-md-6">
														<div class="position-relative form-group">
															<label for="exampleEmail11" class="">Interest in
																Teaching</label> <select name="teaching_category"
																id="teaching_category" class="form-control">
																<option value="">Select Category</option>
																<option value="Music">Music</option>
																<option value="Dance">Dance</option>
																<option value="Art & Craft">Art & Craft</option>
																<option value="Robotics">Robotics</option>
																<option value="Coding">Coding</option>
																<option value="Photography">Photography</option>
																<option value="Public Speaking">Public Speaking</option>
																<option value="Writing">Writing</option>
																<option value="Drama">Drama</option>
																<option value="Yoga">Yoga</option>
															</select>
														</div>
													</div>
													<div class="col-md-6">
														<div class="position-relative form-group">
															<label for="exampleEmail11" class="">How many hours can you spend every week?</label> <select
																name="hours" id="hours" class="form-control">
																<option value="">Select Time</option>
																<option value="1 – 2 hours">1 - 2 hours</option>
																<option value="3 – 4 hours">3 - 4 hours</option>
																<option value="5 – 6 hours">5 - 6 hours</option>
																<option value="7 – 12 hours">7 - 12 hours</option>
																<option value="12+ hours">12+ hours</option>
															</select>
														</div>
													</div>
												</div>
												<div class="position-relative form-group">
													<label for="exampleEmail11" class="">Preferred days and hours for teaching</label>
													<textarea class="form-control" id="summary" name="summary">
														</textarea>
												</div>
												<div class="position-relative form-group">
													<label for="exampleFile" class="">Profile
														Highlights</label>
													<textarea id="highlights" name="highlights"
														class="form-control"
														style="overflow-y: scroll; word-wrap: break-word; resize: horizontal; height: 272px;"></textarea>
												</div>
												<div class="row">
													<div class="col-md-6">
														<div class="position-relative form-group">
															<label for="exampleFile" class="">Phone</label> <input
																type="text" id="phone" name="phone" class="form-control" />
														</div>
													</div>
													<div class="col-md-6">
														<div class="position-relative form-group">
															<label for="exampleFile" class="">Email</label> <input
																type="email" id="email" name="email" class="form-control" />
														</div>
													</div>
												</div>
												<button type="submit" class="mt-2 btn btn-primary">Submit</button>
											</form>
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

	<!-- [if lte IE 8]> -->
	<script src="<%=request.getContextPath()%>/assets/js/excanvas.js"></script>
	<!-- [endif] -->
	<script
		src="<%=request.getContextPath()%>/assets/summernote/summernote.js"></script>

	<script type="text/javascript">
		$('document').ready(function() {
			$('[data-toggle=tooltip]').tooltip();
			$('textarea[class*=autosize]').autosize({append : "\n"});
			$('textarea.limited').inputlimiter({
				remText : '%n character%s remaining...',
				limitText : 'max allowed : %n.'
			});

			$('#content').summernote({
				height : 300, // set editor height
				placeholder : 'Start writing content here',
				toolbar : 	[ //['img', ['picture']],
							['style',
							['bold', 'italic', 'underline', 'clear' ] ],
							[ 'fontsize',
							[ 'fontsize' ] ],
							[ 'color', [ 'color' ] ],
							['para',
							[ 'ul', 'ol', 'paragraph' ] ]

							], theme : 'superhero'
			});

			$('#teaching-form').validate({
				errorElement : 'div',
				errorClass : 'error-msg',
				focusInvalid : true,
	
				rules : {
					name : {
						required : true
					},
					teaching_category : {
						required : true
					},
					hours : {
						required : true
					},
					summary : {
						required : true
					},
					highlights : {
						required : true
					},
					phone : {
						required : true,
			            minlength: 10,
			            maxlength: 12
					},
					email : {
						required : true
					}
	
				},
				messages : {
	
				},
	
				submitHandler : function(form) {
					if ($('#content').val().length == 0) {
						alert("Please enter the content");
						return false;
					}
					$(
							'#article-form button[type=submit]')
							.prop("disabled",
									"disabled");
					form.submit();
				}
	
			});
		});
	</script>
</body>
</html>