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
<title>Team | MySuperBrain</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description" content="Team MySuperBrain.com">
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
					<div class="app-page-title">
						<div class="page-title-wrapper">
							<div class="page-title-heading">
								<div class="page-title-icon">
									<i class="pe-7s-news-paper icon-gradient bg-mean-fruit"> </i>
								</div>
								<div>
									Team
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
										<div class="col-md-1"></div>
										<div class="col-md-10">
											<section id="team" class="pb-5"
												style="background-color: #FFF !important;">
												<div class="container">
													<div class="row">
														<!-- Team member -->
														<div class="col-xs-12 col-sm-6 col-md-4">
															<div class="image-flip">
																<div class="mainflip flip-0">
																	<div class="frontside">
																		<div class="card">
																			<div class="card-body text-center">
																				<p>
																					<img class=" img-fluid"
																						src="<%=request.getContextPath()%>/img/team/raghu.jpg"
																						alt="card image">
																				</p>
																				<h4 class="card-title">Raghu</h4>
																				<h6 class="card-title">Co-founder & CEO</h6>
																				<p class="card-text">Raghu is an alumnus of IIM
																					Kozhikode. He is passionate about making a
																					difference in the lives of students.</p>
																				<!-- <a href="https://www.fiverr.com/share/qb8D02" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a> -->
																			</div>
																		</div>
																	</div>
																	<div class="backside">
																		<div class="card">
																			<div class="card-body text-center mt-4">
																				<h4 class="card-title">Raghu</h4>
																				<p class="card-text">Raghu is an alumnus of IIM
																					Kozhikode. He is passionate about making a
																					difference in the lives of students. He firmly
																					believes that the students need to be provided a
																					lot of opportunities in the areas of their interest
																					so that their full potential can come to fruition.</p>
																				<p>Before MySuperBrain, he worked in the US and
																					always believed that students across the world
																					should be able to connect on one platform and the
																					connecting thread should the talents in them.</p>
																				<ul class="list-inline">
																					<li class="list-inline-item"><a
																						class="social-icon text-xs-center" target="_blank"
																						href="https://www.facebook.com/bojjareddy"> <img
																							src="<%=request.getContextPath()%>/img/icons/facebook.webp"
																							style="width: 20px;" />
																					</a></li>
																					<li class="list-inline-item"><a
																						class="social-icon text-xs-center" target="_blank"
																						href="#"> <img
																							src="<%=request.getContextPath()%>/img/icons/instagram.webp"
																							style="width: 20px;" />
																					</a></li>
																					<li class="list-inline-item"><a
																						class="social-icon text-xs-center" target="_blank"
																						href="https://www.linkedin.com/in/raghavendar-reddy-bojja-a018b16/">
																							<img
																							src="<%=request.getContextPath()%>/img/icons/linkedin.webp"
																							style="width: 20px;" />
																					</a></li>
																					<li class="list-inline-item"><a
																						class="social-icon text-xs-center" target="_blank"
																						href="#"> <i class="fa fa-google"></i>
																					</a></li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<!-- ./Team member -->
														<!-- Team member -->
														<div class="col-xs-12 col-sm-6 col-md-4">
															<div class="image-flip"
																ontouchstart="this.classList.toggle('hover');">
																<div class="mainflip">
																	<div class="frontside">
																		<div class="card">
																			<div class="card-body text-center">
																				<p>
																					<img class=" img-fluid"
																						src="<%=request.getContextPath()%>/img/team/yuva.jpg"
																						alt="card image">
																				</p>
																				<h4 class="card-title">Yuvraj</h4>
																				<h6 class="card-title">Co-founder & COO</h6>
																				<p class="card-text">Yuva is an alumnus of IIM
																					Kozhikode. He strongly believes that education
																					should not be restricted to the classroom or the
																					syllabus.</p>
																				<!-- <a href="https://www.fiverr.com/share/qb8D02" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a> -->
																			</div>
																		</div>
																	</div>
																	<div class="backside">
																		<div class="card">
																			<div class="card-body text-center mt-4">
																				<h4 class="card-title">Yuvraj</h4>
																				<p class="card-text">Yuva is an alumnus of IIM
																					Kozhikode. He strongly believes that education
																					should not be restricted to the classroom or the
																					syllabus. A great believer in the potential of the
																					gen Y and the force behind mysuperbrain.com.</p>
																				<ul class="list-inline">
																					<li class="list-inline-item"><a
																						class="social-icon text-xs-center" target="_blank"
																						href="https://www.facebook.com/yuvaraj256"> <img
																							src="<%=request.getContextPath()%>/img/icons/facebook.webp"
																							style="width: 20px;" />
																					</a></li>
																					<li class="list-inline-item"><a
																						class="social-icon text-xs-center" target="_blank"
																						href="#"> <img
																							src="<%=request.getContextPath()%>/img/icons/instagram.webp"
																							style="width: 20px;" />
																					</a></li>
																					<li class="list-inline-item"><a
																						class="social-icon text-xs-center" target="_blank"
																						href="https://www.linkedin.com/in/yuvaraju-atmakuri-3b1b2614/">
																							<img
																							src="<%=request.getContextPath()%>/img/icons/linkedin.webp"
																							style="width: 20px;" />
																					</a></li>
																					<li class="list-inline-item"><a
																						class="social-icon text-xs-center" target="_blank"
																						href="#"> <i class="fa fa-google"></i>
																					</a></li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<!-- ./Team member -->
														<!-- Team member -->
														<div class="col-xs-12 col-sm-6 col-md-4">
															<div class="image-flip"
																ontouchstart="this.classList.toggle('hover');">
																<div class="mainflip">
																	<div class="frontside">
																		<div class="card">
																			<div class="card-body text-center">
																				<p>
																					<img class=" img-fluid"
																						src="<%=request.getContextPath()%>/img/team/amar1.jpg"
																						alt="card image">
																				</p>
																				<h4 class="card-title">Amar</h4>
																				<h6 class="card-title">CTO</h6>
																				<p class="card-text">Amar is the guy behind the
																					platform hundreds of thousands of students are now
																					using to showcase their talents.</p>
																				<!-- <a href="https://www.fiverr.com/share/qb8D02" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a> -->
																			</div>
																		</div>
																	</div>
																	<div class="backside">
																		<div class="card">
																			<div class="card-body text-center mt-4">
																				<h4 class="card-title">Amar</h4>
																				<p class="card-text">Amar is the guy behind the
																					platform hundreds of thousands of students are now
																					using to showcase their talents. He is continuously
																					finding new ways to showcase the talents in
																					students and also give them an opportunity to hone
																					those talents.</p>
																				<ul class="list-inline">
																					<li class="list-inline-item"><a
																						class="social-icon text-xs-center" target="_blank"
																						href="https://www.facebook.com/amareshwarr/">
																							<img
																							src="<%=request.getContextPath()%>/img/icons/facebook.webp"
																							style="width: 20px;" />
																					</a></li>
																					<li class="list-inline-item"><a
																						class="social-icon text-xs-center" target="_blank"
																						href="https://www.instagram.com/amar.r_/"> <img
																							src="<%=request.getContextPath()%>/img/icons/instagram.webp"
																							style="width: 20px;" />
																					</a></li>
																					<li class="list-inline-item"><a
																						class="social-icon text-xs-center" target="_blank"
																						href="https://www.linkedin.com/in/amareshwar-reddypally/">
																							<img
																							src="<%=request.getContextPath()%>/img/icons/linkedin.webp"
																							style="width: 20px;" />
																					</a></li>
																					<li class="list-inline-item"><a
																						class="social-icon text-xs-center" target="_blank"
																						href="#"> <i class="fa fa-google"></i>
																					</a></li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</section>
											<div class="row">
												<div class="card-body text-center">
													<h3>Advisors</h3>
												</div>
												<table class="table">
													<tr>
														<td><img
															src="<%=request.getContextPath()%>/img/team/bhanu.jpg"
															style="width: 200px;" /></td>
														<td>
															<h4 class="card-title">
																Varla Bhanu Prakash Reddy
																</h4>
																<h6>
																	Speaker @ TedX
																	</h6>
																	Mr. Bhanu is alumnus of IIT & IIM and a serial
																	entrepreneur with experience in diverse fields like
																	agriculture, technology, IOT, blockchain etc. He is a
																	Charter member of TiE and is passionate about helping
																	startups scale up. He is passionate about giving the
																	next generation an opportunity to chase their dreams.
																	<p class="pull-right">
																		<a href="<%=request.getContextPath()%>/bhanu">
																			Read more..</a>
																	</p>
														</td>
													</tr>
												</table>
												<table class="table">
													<tr>
														<td><img
															src="<%=request.getContextPath()%>/img/team/vineet.jpg"
															style="width: 200px;" /></td>
														<td>
															<h4 class="card-title">
																Vineet Dwivedi
																</h4>
																<h6>
																	Founder & CEO of HireSure.ai
																	</h6>
																	Vineet is the Founder & CEO of HireSure.ai, an offer
																	closing platform that brings intelligence and
																	predictability in talent acquisition with its
																	AI-powered tools. A graduate from IIT Kanpur, Vineet
																	has been a serial entrepreneur. He has founded
																	successful companies in Telecom and Education
																	Technology (EdTech) domains.
																	<p class="pull-right">
																		<a href="<%=request.getContextPath()%>/vineet">
																			Read more..</a>
																	</p>
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