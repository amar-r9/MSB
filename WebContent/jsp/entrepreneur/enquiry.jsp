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
								<div>Enquiry</div>
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
											<div class="col-md-8">
												<form action="#" id="enquiry-form">
													<div class="form-row">
				                                        <div class="col-md-12">
				                                            <div class="position-relative form-group">
				                                            	<label for="exampleEmail" class="">Name</label>
				                                            	<input name="name" id="name" placeholder="Name here..." type="text" class="form-control">
				                                            </div>
				                                        </div>
				                                        <div class="col-md-12">
				                                            <div class="position-relative form-group">
				                                            	<label for="examplePassword" class="">Email</label>
				                                            	<input name="email" id="email" placeholder="Email here..." type="email" class="form-control">
				                                            </div>
				                                        </div>
				                                        <div class="col-md-12">
				                                            <div class="position-relative form-group">
				                                            	<label for="exampleEmail" class="">Mobile</label>
				                                            	<input name="mobile" id="mobile" placeholder="Mobile Number here..." type="text" class="form-control">
				                                            </div>
				                                        </div>
				                                        <div class="col-md-12">
				                                            <div class="position-relative form-group">
				                                            	<label for="examplePassword" class="">Description</label>
				                                            	<textarea name="description" id="description" placeholder="Description here..." class="form-control"></textarea>
				                                            </div>
				                                        </div>
				                                    </div>
													<button type="submit" data-toggle="tooltip" id="enquiry"
														class="btn-shadow mr-3 btn btn-warning">
														SUBMIT
													</button>
												</form>
											</div>
											<div class="col-md-4">
												<img src="<%=request.getContextPath() %>/img/trainer/entrepreneurshipquote1.png"
													style="height: 300px; width: 300px;" />
											</div>
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
			$('#enquiry-form').validate({
				errorElement : 'div',
				errorClass : 'error-msg',
				focusInvalid : true,
				rules : {
					name :{
						required:true,
						minlength:4
					},
					email :{
						required:true
					},
					mobile :{
						required:true
					},
					description :{
						required:true,
						minlength:8
					}
				},
				messages : {
					
				},
				submitHandler : function(form) {
					$('#enquiry').prop("disabled", "disabled");		
					//form.submit();
					enquiryHere();
				}
			});
			//$("#enquiry-form").submit(function(event) {
				//event.preventDefault();
				//enquiryHere();
			//});
		});
		
		function enquiryHere() {
			var formData=$("#enquiry-form").serialize();
			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/entrepreneur/enquiry-submit",
				data : formData,
				timeout : 100000,
				beforeSend:function(){
					$('#enquiry').prop('disabled',true);
				},
				success : function(data) {
					console.log("SUCCESS: ", data);
					if(data=='submitted'){
						alert("Thank you, We'll get back to you.");
						//var points=$('#points').text();
						//$('#points').text(parseInt(points)+2);
						//var votes=$('#votes').text();
						//$('#votes').text(parseInt(votes)+1);
					}else if(data=='errorsubmitting'){
						alert("Technical error, Please try again later.");
					}	
					//$('#fb_username').val("");
					//$('#fb_login').val("");
					$('#enquiry').prop('disabled',false);
				},
				error : function(e) {
					console.log("ERROR: ", e);
					bootbox.alert(e);
					$('#enquiry').prop('disabled',false);
				},
				done : function(e) {
					console.log("DONE");
					$('#enquiry').prop('disabled',false);
					//$('#fb_username').val("");
					//$('#fb_login').val("");
				}
			});
		}
		
	</script>
</body>
</html>