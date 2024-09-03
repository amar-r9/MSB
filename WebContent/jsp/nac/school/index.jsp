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
<title>${pageDetails.school_name } | NAC | MySuperBrain</title>
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
<style>
.fa-spin {
    -animation: spin .10s infinite linear;
    -webkit-animation: spin2 .7s infinite linear;
}

@-webkit-keyframes spin2 {
    from { -webkit-transform: rotate(0deg);}
    to { -webkit-transform: rotate(360deg);}
}

@keyframes spin {
    from { transform: scale(1) rotate(0deg);}
    to { transform: scale(1) rotate(360deg);}
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
				<div class="app-main__inner" style="padding: 0px; background: #FFF;">
					<div class="tab-content">
						<div class="row d-none d-lg-block">
						<div id="carouselExampleControls2"
							class="carousel slide carousel-fade" data-ride="carousel">
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img class="d-block w-100"
										src="<%=request.getContextPath() %>/img/coding/starcoding.png"
										alt="First slide">
									<div class="carousel-caption d-none d-md-block"
										style="right: 50%; text-align: inherit; left: 5%; top: 15%; font-size: 3rem !important;">
										<h1 style="color: #FFF;">StayQrious CODING STAR</h1>
										<h5 align="justify" style="color: #FFF;">What does it take to be a good programmer/ coder? Find out with this multi-level 
										competition that focuses on the basics of coding. This is a <font color='black'><b>FREE</b></font> contest where students in the age group of 8 to 16 can participate
										and showcase their talents and get analysis on how they can improve.</h5>
										<a href="<%=request.getContextPath() %>/nac/register?school=${pageDetails.school_code}"
											class="mb-2 mr-2 btn-wide btn-lg btn-square btn btn-light">GET
											STARTED <i class="fa fa-fw" aria-hidden="true"
											title="Copy to use angle-right"></i>
										</a>
									</div>
								</div>
							</div>

						</div>
					</div>
						<div class="tab-pane tabs-animation fade show active"
							id="tab-content-0" role="tabpanel">
							<div class="main-card mb-3 card">
								<div class="card-body">
									<div class="row">
										<div class="col-md-8">
											<div class="mb-3 card text-white card-body bg-dark">
												<h2 class="text-center">${pageDetails.school_name }</h2>
											</div>
											<br />
											<h6></h6>
											<div class="space-20"></div>
											<div class="row">
												<div class="col-md-6">
													<div class="card mb-3 widget-content bg-arielle-smile">
				                                        <div class="widget-content-wrapper text-white">
				                                            <div class="widget-content-left">
				                                                <div class="widget-heading">Total Strength</div>
				                                                <div class="widget-subheading"></div>
				                                            </div>
				                                            <div class="widget-content-right">
				                                                <div class="widget-numbers text-white"><span>${pageDetails.strength }</span></div>
				                                            </div>
				                                        </div>
				                                    </div>
				                             	</div>
				                             	<div class="col-md-6">
				                             		<div class="card mb-3 widget-content bg-happy-green">
				                                        <div class="widget-content-wrapper text-white">
				                                            <div class="widget-content-left">
				                                                <div class="widget-heading">Total Points</div>
				                                                <div class="widget-subheading"></div>
				                                            </div>
				                                            <div class="widget-content-right">
				                                                <div class="widget-numbers text-dark"><span><strong id="school-points"></strong></span></div>
				                                            </div>
				                                        </div>
				                                    </div>
				                             	</div>
				                        	</div>
											<%-- 	<h4><a class="pull-right" href="<%=request.getContextPath() %>/entries/${user.username}" target="_blank">View all entries</a></h4> --%>
											<div class="space-20"></div>
											<hr>
											<div class="widget-box transparent" id="recent-box"
												style="min-height: 230px;">
												<div class="widget-header">
													<h4 class="widget-title lighter smaller">
														<i class="ace-icon fa fa-rss orange"></i> Recent
														Submissions <span class="pull-right"> <span
															style="font-size: 14px;"><a
																href="<%=request.getContextPath()%>/nac/school/submissions/${pageDetails.school_name }/${pageDetails.school_code}"
																class="btn btn-sm btn-info btn-wide">SEE ALL ENTRIES
																	FROM SCHOOL</a></span>
														</span>
													</h4>
												</div>
												<br>
												<div class="tab-content">
													<div class="tab-pane active" id="texts-tab" role="tabpanel">
														<c:if test="${not empty essays }">
															<c:forEach items="${essays }" var="essay">
																<div class="mb-3 card text-white bg-success">
																	<div class="card-header">
																		<div class="col-md-12">
																			${essay.competition.name}<div
																			class="pull-right"><small>By:
																					${essay.user_name }&nbsp;&nbsp;</small></div>
																		</div>
																	</div>
																	<div class="card-body">${essay.entry_summary }</div>
																	<div class="card-footer">
																		<a class="btn btn-light pull-right" target="_blank"
																			href="<%=request.getContextPath()%>/nac/view_entry/${essay.id }">VIEW
																			ENTRY</a>
																	</div>
																</div>

															</c:forEach>
														</c:if>
														<c:if test="${empty essays }">
															<h6>No Entries Found</h6>
														</c:if>

													</div>
													<!-- /.widget-main -->
													<%-- <c:if test="${not empty pageDetails.achievements }"> --%>
												</div>
											</div>
											<hr>
											<!-- <div class="card-shadow-primary border mb-3 card card-body border-primary">
										<div class="widget-header widget-header-flat">
											<h4 class="smaller">
												<i class="ace-icon fa fa-trophy"></i> Student Achievers
											</h4>
										</div>

										<div class="widget-body">
											<div class="widget-main">

												<ol class="linenums"><li>Harshit from class IX stood 1<sup>st</sup> in painting competition at MySuperBrain.com</li>
													<li>Simran from class VI stood 1<sup>st</sup> in GK.</li>
												</ol>

											</div>
										</div>
									</div> -->
											<%-- </c:if> --%>

											<%-- <c:if test="${not empty pageDetails.message }"> --%>
											<!-- <div class="card-shadow-alternate border mb-3 card card-body border-alternate">
									<div class="widget-header widget-header-flat">
											<h4 class="widget-title smaller">
												<i class="ace-icon fa fa-quote-left smaller-80"></i>
												Principal's Message
											</h4>
										</div>

										<div class="widget-body">
											<div class="widget-main">
												<div class="row">
													<div class="col-md-12">
														<blockquote class="pull-right">
															<p class="text-justify">With 41 years of Academic Excellency….. The Narayana Group is Asia’s largest educational conglomerate with over 400,000 students and 40,000 experienced teaching and non-teaching faculty in over 590 centres. Spread across 13 states, Narayana is hosting a bouquet of schools, junior colleges, engineering, medical and management institutions, coaching centres along with IAS training academy, has already set a benchmark in academic excellence by continuously delivering top and matchless results in Intra and International competitive examinations.</p>
														</blockquote>
													</div>
												</div>
											</div>
										</div>
									</div> -->
											<%-- </c:if>
								<c:if test="${not empty pageDetails.introduction }">
									<h5>
										<b>Introduction:</b>
									</h5>

									<p class="text-justify">${pageDetails.introduction }</p>
								</c:if> --%>

										</div>
										<div class="col-md-4">
											<div class="text-center">
												<%-- <img
										src="<%=request.getContextPath()%>/img/narayana-logo.png"
										class="img-thumbnail" alt="Invalid Format Logo"> --%>
											</div>

											<hr>
											<div align="center">
												<c:choose>
													<c:when test="${empty SchoolStudent}">
														<a href="<%=request.getContextPath() %>/nac/register?school=${pageDetails.school_code}"
															class="btn btn-primary btn-block">REGISTER NOW</a>
													</c:when>
													<c:otherwise>
														<button type="button" class="btn btn-primary btn-block"
															id="add-school">I study at this school</button>
														<span id="add-school-wait"></span>
													</c:otherwise>
												</c:choose>
											</div>
											<hr>
											<a href="<%=request.getContextPath() %>/nac/school/${pageDetails.school_name}/${pageDetails.school_code}/toppers"
											class="btn btn-success btn-block btn-square">TOP STUDENTS</a>
											<br>
											<div class="main-card mb-3 card">
												<div class="card-body"
													style="background-color: #4d538c; color: #FFF;">
													<h5 class=" text-center">TOP STUDENTS</h5>
													<div class="divider"></div>
													<h6>
														<div id="school-toppers"></div>
													</h6>
												</div>
											</div>
											<br>
											<a href="<%=request.getContextPath() %>/nac/school/${pageDetails.school_name}/${pageDetails.school_code}/students"
											class="btn btn-warning btn-block btn-square">ALL STUDENTS</a>
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
		$('document').ready(function() {
			$.ajax({
				type : "GET",
				url : "${pageContext.request.contextPath}/school/points/${pageDetails.school_name}/${pageDetails.school_code}",
				timeout : 100000,
				beforeSend:function(){
					$('#school-points').append('<i class="fa fa-spinner fa-spin orange" id="loading"></i>');
				},
				success : function(data) {
					
					console.log("SUCCESS: ", data);
					
					$('#school-points').empty();
					$('#school-points').html(+data);
					
				},
				error : function(e) {
					console.log("ERROR: ", e);
					
				},
				done : function(e) {
					console.log("DONE");
					$('#loading').remove();
					
				}
			});
			$.ajax({
				type : "GET",
				url : "${pageContext.request.contextPath}/school/toppers/${pageDetails.school_name}/${pageDetails.school_code}",
				timeout : 100000,
				beforeSend:function(){
					$('#school-toppers').append('<i class="fa fa-spinner text-center fa-2x fa-spin orange" id="loading"></i>');
				},
				success : function(data) {
					
					console.log("SUCCESS: ", data);
					
					$('#school-toppers').empty();
					$('#school-toppers').html(data);
					
				},
				error : function(e) {
					console.log("ERROR: ", e);
					
				},
				done : function(e) {
					console.log("DONE");
					$('#loading').remove();
					
				}
			});
			$('#add-school').click(function(){
				bootbox.confirm({
					title:'Confirm Your School',
					message:'Do you really study at this school?',
					buttons:{
						'cancel': {
							label:'No',
							className:'btn btn-danger'
						},
						confirm: {
							label:'Yes,I study at this school',
							className:'btn btn-primary'
						}
					},
					callback:function(confirm){
						if(confirm){
							$.ajax({
								type : "GET",
								url : "${pageContext.request.contextPath}/school/add/${pageDetails.school_name}/${pageDetails.school_code}",
								timeout : 100000,
								beforeSend:function(){
									$('#add-school-wait').append('<i class="col-md-6 col-md-offset-3 ace-icon fa fa-spinner fa-spin orange fa-5x center" id="loading"></i>');
								},
								success : function(data) {
									
									console.log("SUCCESS: ", data);
									
									$('#add-school-wait').empty();
									$('#add-school-wait').addClass('alert alert-info');
									$('#add-school-wait').html(data);
									
								},
								error : function(e) {
									console.log("ERROR: ", e);
									
								},
								done : function(e) {
									console.log("DONE");
									$('#loading').remove();
									
								}
							});
						}
					}			
				});
			});
		});
	</script>
</body>
</html>