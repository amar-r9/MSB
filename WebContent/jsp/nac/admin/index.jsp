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
<title>Admin | CodingStar | MySuperTalent</title>
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
</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<jsp:include page="/common/codingheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/codingmenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner">
					<div class="app-page-title">
						<div class="page-title-wrapper">
							<div class="page-title-heading">
								<div class="page-title-icon">
									<i class="pe-7s-news-paper icon-gradient bg-mean-fruit"> </i>
								</div>
								<div>
									Admin
									<div class="page-title-subheading">
										
										<%-- <a href="<%=request.getContextPath() %>/admin/add-student" class="btn btn-info">Add Student</a>
										<a href="<%=request.getContextPath() %>/admin/hof" class="btn btn-info">Hall of Fame</a> --%>
										<%-- <a href="<%=request.getContextPath() %>/admin/topzones" class="btn btn-info">Top Zones</a>
										<a href="<%=request.getContextPath() %>/admin/topbranches" class="btn btn-info">Top Branches</a>
										<button type="button" class="btn btn-info" data-toggle="modal" data-target="#exampleModal1"
											id="clickForPremium">Add Competition
									  	</button> --%>
									</div>
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
										<div class="col-md-12">
											<div class="row text-center">
												<div class="col-md-4">
													<div class="card mb-3 widget-content bg-arielle-smile">
				                                        <div class="widget-content-wrapper text-white">
				                                            <div class="widget-content-left">
				                                                <div class="widget-heading">Total Participants</div>
				                                                <div class="widget-subheading"></div>
				                                            </div>
				                                            <div class="widget-content-right">
				                                                <div class="widget-numbers text-white"><span>${noOfStudents }</span></div>
				                                            </div>
				                                        </div>
				                                    </div>
												</div>
												<div class="col-md-8">
												</div>
											</div>
											
					                        <div class="row">
					                        	<div class="col-md-6">
						                        	<a href="<%=request.getContextPath() %>/codingstar/admin/topschools"
						                        		class="btn btn-success btn-block">TOP SCHOOLS</a>
					                        	</div>
					                        	<div class="col-md-6">
						                        	<a href="<%=request.getContextPath() %>/codingstar/admin/leaderboard"
						                        		class="btn btn-warning btn-block">TOP STUDENTS</a>
					                        	</div>
					                        </div>
					                        <div class="divider"></div>
					                        <div class="row">
					                        	<div class="col-md-6">
						                        	<a href="<%=request.getContextPath() %>/codingstar/admin/schools"
						                        		class="btn btn-info btn-block">ALL SCHOOLS</a>
					                        	</div>
					                        	<div class="col-md-6">
						                        	<a href="<%=request.getContextPath() %>/codingstar/admin/students"
						                        		class="btn btn-alternate btn-block">ALL STUDENTS</a>
					                        	</div>
					                        </div>
					                        <div class="divider"></div>
											<!-- PAGE CONTENT ENDS -->
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
	
	<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	    <div class="modal-dialog" role="document">
	        <div class="modal-content">
	            <div class="modal-header">
	                <h5 class="modal-title" id="exampleModalLabel">Add Competition</h5>
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                    <span aria-hidden="true">&times;</span>
	                </button>
	            </div>
	            <div class="modal-body">
	                <p class="mb-0">Sorry! You don't have the permissions to add competitions.</p>
	            </div>
	            <div class="modal-footer">
	                <%-- <a class="btn btn-primary" href="<%=request.getContextPath() %>/narayana/user/premium">Get Premium</a> --%>
	            </div>
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
	<script>
		
	</script>
</body>
</html>