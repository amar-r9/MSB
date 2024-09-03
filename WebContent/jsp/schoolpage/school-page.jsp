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
<title>${pageDetails.school_name } | MySuperBrain</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
	content="This is the microsite of ${pageDetails.school_name } on mysuperbrain.com. Check out the amazing talents and support the young students.">
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
<link rel="icon" href="<%=request.getContextPath()%>/img/favicon.ico"
	type="image/x-icon">
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
		<jsp:include page="/common/schoolheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/schoolmenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner" style="padding: 0px; background: #FFF;">
					<div class="tab-content">
						<div class="row d-none d-lg-block">
							<div id="carouselExampleControls1" class="carousel slide"
								data-ride="carousel">
								<div class="carousel-inner">
									<div class="carousel-item active">
										<img class="d-block w-100"
											src="https://mysuperbrain.com/user_images/SCHOOLS/${pageDetails.school_image }"
											alt="First slide" style="max-height: 500px;">
									</div>
								</div>
								<a class="carousel-control-prev"
									href="#carouselExampleControls1" role="button"
									data-slide="prev"> <span class="carousel-control-prev-icon"
									aria-hidden="true"></span> <span class="sr-only">Previous</span>
								</a> <a class="carousel-control-next"
									href="#carouselExampleControls1" role="button"
									data-slide="next"> <span class="carousel-control-next-icon"
									aria-hidden="true"></span> <span class="sr-only">Next</span>
								</a>
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
											<div class="card">
												<div class="card-body">
													<h6>${pageDetails.description }</h6>
												</div>
											</div>
											<br />
											<div class="row">
												<div class="col-md-6">
													<div class="card mb-3 widget-content text-dark"
														style="background: #FFF;">
				                                        <div class="widget-content-wrapper">
				                                            <div class="widget-content-left">
				                                                <div class="widget-heading">Total Strength</div>
				                                                <div class="widget-subheading"></div>
				                                            </div>
				                                            <div class="widget-content-right">
				                                                <div class="widget-numbers"><span>${pageDetails.strength }</span></div>
				                                            </div>
				                                        </div>
				                                    </div>
				                             	</div>
				                             	<div class="col-md-6">
				                             		<div class="card mb-3 widget-content text-dark"
														style="background: #FFF; color: #393939 !important;">
				                                        <div class="widget-content-wrapper text-dark">
				                                            <div class="widget-content-left">
				                                                <div class="widget-heading">Total Points</div>
				                                                <div class="widget-subheading"></div>
				                                            </div>
				                                            <div class="widget-content-right">
				                                                <div class="widget-numbers text-dark"><span><strong id="school-points">00</strong></span></div>
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
																href="#"
																class="btn-wide mb-2 mr-2 btn btn-square btn-info btn-lg btn-block">SEE ALL ENTRIES
																	FROM SCHOOL</a></span>
														</span>
													</h4>
												</div>
												<br>
												<div class="tab-content">
												</div>
											</div>
											<hr>
										</div>
										<div class="col-md-4">
											<div class="text-center">
												<img
													src="https://mysuperbrain.com/user_images/SCHOOLS/${pageDetails.school_logo }"
													class="img-thumbnail" alt="Invalid Format Logo">
											</div>

											<hr>
											<div align="center">
												<c:choose>
													<c:when test="${empty SchoolStudent}">
														<a href="<%=request.getContextPath() %>/school/register?school=${pageDetails.school_code}"
															class="btn-wide mb-2 mr-2 btn btn-square btn-warning btn-lg btn-block">REGISTER NOW</a>
													</c:when>
													<c:otherwise>
														<button type="button" class="btn-wide mb-2 mr-2 btn btn-square btn-danger btn-lg btn-block"
															id="add-school"><i class="fa fa-fw" aria-hidden="true" title="Copy to use hand-pointer-o"></i> I study at this school</button>
														<span id="add-school-wait"></span>
													</c:otherwise>
												</c:choose>
											</div>
											<hr>
											<a href="<%=request.getContextPath() %>/school/${pageDetails.school_name}/${pageDetails.school_code}/toppers"
											class="btn-wide mb-2 mr-2 btn btn-square btn-primary btn-lg btn-block">LEADERBOARD</a>
											<br>
											<div class="card mb-3 widget-content text-dark" style="display: block;">
												<div class="border-bottom title-part-padding">
								                  <h4 class="card-header bg-dark text-white">TOP STUDENTS</h4>
								                </div>
												<br>
												<!-- <div class="p-2 d-flex flex-row align-items-center mb-2 border-bottom">
													<img src="https://mysuperbrain.com/milo/profile/image/amar" width="40" class="rounded-circle">
							                        <div class="d-flex flex-column ml-2">
							                        	<span class="d-block font-weight-bold">Amar</span>
							                        	<small class="text-muted">Class 9 | Points 342</small>
							                        </div>
							                    </div> -->
							                    <span id="school-toppers">No list</span>
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
		$('document').ready(function() {
			$.ajax({
				type : "GET",
				url : "${pageContext.request.contextPath}/school/points/${pageDetails.school_name}/${pageDetails.school_code}",
				timeout : 100000,
				beforeSend:function(){
					//$('#school-points').append('<i class="fa fa-spinner fa-spin orange" id="loading"></i>');
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
					//$('#school-toppers').append('<i class="fa fa-spinner text-center fa-2x fa-spin orange" id="loading"></i>');
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