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
<title>Advisor | MySuperBrain</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
	content="Know about MySuperBrain.com and what can you get here.">
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
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/testimonials.css">
<style>
.error-msg {
	color: RED;
	padding-bottom: 10px;
}
</style>
</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<jsp:include page="/common/schoolheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main" style="background: #FFF;">
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
									Advisor
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
										<div class="col-md-1"></div>
										<div class="col-md-10">
											<div class="row">
												<table class="table">
													<tr>
														<td><img
															src="<%=request.getContextPath()%>/img/team/vineet.jpg"
															style="width: 200px;" /></td>
														<td>
															<h2 class="card-title">Vineet Dwivedi</h2>
															<p><b>Founder & CEO of HireSure.ai</b></p>
															<h6>
																Vineet is the <b>Founder & CEO of HireSure.ai</b>, an offer closing platform that brings intelligence and predictability in talent acquisition with its AI-powered tools.
															</h6>
															<h6>
																A graduate from IIT Kanpur, Vineet has been a serial entrepreneur. He has founded successful companies in Telecom and Education Technology (EdTech) domains.
															</h6>
														</td>
													</tr>
													<tr>
														<td colspan="2">		
															<h6>Vineet is a passionate programmer and an expert in data science. He has experience building several large scale data-driven platforms in the cloud. He built a <b>highly automated algorithmic trading server</b> which is in open-source now.</h6>
															<h6>When not building companies, he prefers to go to <b>high altitudes treks in the Himalayas.</b></h6>
															<h6>He spends his free time playing golf, reading books, or listening to music.</h6>
															<h6>Vineet is <b>an angel investor and is on the global panel of MIT Technology Review.</b> </h6>
														</td>
													</tr>
												</table>
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

	<script type="text/javascript">
		$('document').ready(
				function() {
					$('[data-toggle=tooltip]').tooltip();
					$('textarea[class*=autosize]').autosize({
						append : "\n"
					});
					$('textarea.limited').inputlimiter({
						remText : '%n character%s remaining...',
						limitText : 'max allowed : %n.'
					});

					$('#mobile-form').validate(
							{
								errorElement : 'div',
								errorClass : 'error-msg',
								focusInvalid : true,

								rules : {
									phone : {
										required : true
									}

								},
								messages : {

								},

								submitHandler : function(form) {
									$('#mobile-form button[type=submit]').prop(
											"disabled", "disabled");
									form.submit();
								}

							});

					$('#vote-form').validate(
							{
								errorElement : 'div',
								errorClass : 'error-msg',
								focusInvalid : true,

								rules : {
									vote : {
										required : true
									},
									summary : {
										required : true
									}

								},
								messages : {

								},

								submitHandler : function(form) {
									$('#vote-form button[type=submit]').prop(
											"disabled", "disabled");
									form.submit();
								}

							});
				});
		function verifyOTP() {
			var verify = document.getElementById("verify").value;
			var otp = document.getElementById("otp").value;
			var ans = verify.localeCompare(otp);
			if (ans == 0) {
				document.getElementById("otp-form").style.display = "none";
				document.getElementById("verified").style.display = "block";
				document.getElementById("getotp").style.display = "none";
				document.getElementById("otpmsg").style.display = "none";
			} else {
				document.getElementById("error").style.display = "block";
			}
			/* if(verify!=null){
				if(verify==otp){
					$('#icon').addClass('fa fa-check-circle icon-gradient bg-happy-fisher fa-3x');
					$('#verified').text('Verified');
					$('#otp-form').hide();
				} else {
					$('#errormsg').text('Try again.');
				}
			} else {
				$('#errormsg').text('Enter OTP.');
			} */

			/* $.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/verify-otp",
				//data : formData,
				data : {"otp":$('#otp').text(), "verify":$('#verify').text()},
				timeout : 100000,
				beforeSend:function(){
					$("#verifyotp").button('loading');
				},
				success : function(data) {
					
					console.log("SUCCESS: ", data);
					
					if(data=='success'){
						$('#icon').removeClass();
						$('#icon').addClass('fa fa-check-circle icon-gradient bg-happy-fisher fa-3x');
						$('#verified').text('Verified');
						$('#otp-form').hide();
					}else
					if(data=='error'){
						$('#errormsg').text('Try again.');
					} else if(data=='empty'){
						$('#errormsg').text('Enter OTP.');
					}
					$("#verifyotp").button('reset');
				},
				error : function(e) {
					console.log("ERROR: ", e);
					bootbox.alert(e);
					$("#verifyotp").button('reset');
				},
				done : function(e) {
					console.log("DONE");
					$("#verifyotp").button('reset');
					
				}
			}); */
		}
	</script>
</body>
</html>