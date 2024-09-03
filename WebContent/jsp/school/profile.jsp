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
<title>Profile | MySuperBrain</title>
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
	href="<%=request.getContextPath()%>/assets/main.cba69814a806ecc7945a.css"
	rel="stylesheet">
</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<jsp:include page="/common/schoolheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/schoolmenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner" style="padding: 0px;">
					<%-- <div class="app-page-title">
						<div class="page-title-wrapper">
							<div class="page-title-heading">
								<div class="page-title-icon">
									<i class="pe-7s-user icon-gradient bg-mean-fruit"> </i>
								</div>
								<div>
									${user.name }'s Profile
									<!-- <div class="page-title-subheading">This is an example
										dashboard created using build-in elements and components.</div> -->
								</div>
							</div>
						</div>
					</div> --%>
					<div class="tab-content card-body">
						<div class="tab-pane tabs-animation fade show active"
							id="tab-content-0" role="tabpanel">
							<div class="main-card mb-3 card">
								<div class="card-body">
									<div class="row">
										<div class="col-md-4">
											<div class="text-center">
												<img src="<%=request.getContextPath()%>/resources/DisplaySchoolUserProfileImage" 
													style="max-width: 100%; max-height: 250px;"/>
											</div>
											<div class="divider"></div>
											<div class="text-center d-none d-lg-block">
                                                <div class="grid-menu grid-menu-2col">
                                                    <div class="no-gutters row">
                                                        <div class="col-sm-6">
                                                            <button class="fb-icon btn-icon-vertical btn-square btn-transition btn btn-outline-primary">
                                                                <i class="fa fa-facebook-square btn-icon-wrapper"><img src="https://img.icons8.com/color/2x/facebook.png" style="height: 50px;"></i>Share on FB
                                                            </button>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <a class=" btn-icon-vertical btn-square btn-transition btn btn-outline-success"
                                                            	href="https://web.whatsapp.com/send?text=https://mysuperbrain.com/school/profile?usr=${user.username}">
                                                                <i class="fa fa-whatsapp btn-icon-wrapper btn-icon-lg mb-3"><img src="https://img.icons8.com/color/2x/whatsapp.png" style="height: 50px;"> </i>Share on Whatsapp
                                                            </a>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <button class="tw-icon btn-icon-vertical btn-square btn-transition btn btn-outline-info">
                                                                <i class="fa fa-twitter btn-icon-wrapper btn-icon-lg mb-3"><img src="https://img.icons8.com/color/2x/twitter.png" style="height: 50px;"> </i>Share on Twitter
                                                            </button>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <button class="copy-icon btn-icon-vertical btn-square btn-transition btn btn-outline-danger">
                                                                <i class="fa fa- btn-icon-wrapper btn-icon-lg mb-3"><img src="https://img.icons8.com/dotty/344/fa314a/copy.png" style="height: 50px;"> </i>Copy Link
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="divider"></div>
                                            </div>
										</div>
										<div class="col-md-8">
											<div class="row">
												<div class="col-md-12">
													<c:choose>
														<c:when test="${not empty user.name }">
															<h2 style="font-weight: 800; color: #393939;">${user.name }
															<span class="pull-right">
																<a href="<%=request.getContextPath() %>/school/user/edit-profile" class="btn btn-pill btn-info">Edit Profile</a></span>
															</h2>
														</c:when>
														<c:otherwise>
															<h2 style="font-weight: 800; color: #393939;">${user.username }</h2>
														</c:otherwise>
													</c:choose>
												</div>
												<div class="col-md-12 card-shadow-alternate border mb-3 card card-body border-info">
													<div class="row">
														<div class="col-md-4">
															<p><i class="fa fa-school icon-gradient bg-ripe-malin"></i>&nbsp;&nbsp;${user.school }<span class="pull-right d-none d-lg-block">|</span></p>
														</div>
														<div class="col-md-4">
															<p><i class="fa fa-graduation-cap icon-gradient bg-ripe-malin"></i>&nbsp;&nbsp;${user.standard }</p>
														</div>
													</div>
													<div class="row">
														<div class="col-md-4">
															<p><i class="fa fa-map-marker icon-gradient bg-ripe-malin"></i>&nbsp;&nbsp;${user.city }, ${user.state }<span class="pull-right d-none d-lg-block">|</span></p>
														</div>
														<div class="col-md-4">
															<p><i class="fa fa-star icon-gradient bg-ripe-malin"></i>&nbsp;&nbsp;${user.points }</p>
														</div>
														<br><br>
													</div>
												</div>
												<div class="row">
													<div class="col-md-6">
														<button type="button" class="btn btn-outline-danger btn-block">
															<i class="fa fa-user-plus"></i>&nbsp;&nbsp;Fans Count - 
															<span id="user-fans">
																
															</span>
														</button>
													</div>
													<div class="d-block d-sm-none"><p>&nbsp;</p></div>
													<div class="col-md-6">
														<a href="#" class="btn btn-outline-danger btn-block">
															<i class="fa fa-eye"></i>&nbsp;&nbsp;View Entries
														</a>
													<br><br>
													<br><br>
												</div>
												<div class="col-md-12">
													<br><br>
													<h5><b>Brief Profile</b></h5>
												</div>
												<div class="col-md-12 card-shadow-alternate border mb-3 
													card card-body border-alternate" style="margin: 15px;">
													<c:choose>
														<c:when test="${not empty user.about }">
															<h6>${user.about }</h6>
														</c:when>
														<c:otherwise>
															<h6>Hi, My name is <c:choose><c:when test="${not empty user.name }">${user.name }</c:when><c:otherwise>${user.username }</c:otherwise></c:choose>, I'm studying ${user.standard }<sup>th</sup> standard in ${user.school }.</h6>
														</c:otherwise>
													</c:choose>
                                            	</div>
											</div>
											<div class="d-block d-sm-none" style="width: 100%;">
                                                <div class="col-sm-12 col-12 grid-menu grid-menu-2col">
                                                    <div class="no-gutters row">
                                                        <div class="col-sm-12 col-12">
                                                            <button class="col-md-12 copy-icon btn-icon-vertical btn-square btn-block 
                                                            	btn-transition btn btn-danger" onclick="copyToClipboard('#copy-link')">
                                                                <i class="fa fa-copy fa-3x"></i><br>Copy Link
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="divider"></div>
                                            </div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div></div>
				</div>
				<jsp:include page="/common/footer.jsp"></jsp:include>
			</div>
			<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
		</div>
	</div>
	<span id="copy-link" class="hide">https://mysuperbrain.com/school/profile?usr=${user.username}</span>
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
    <script src="<%=request.getContextPath() %>/assets/toastr.min.js"></script>
    <script src="<%=request.getContextPath() %>/assets/toastr-init.js"></script>
	<script>
		function copyToClipboard(element) {
		  var $temp = $("<input>");
		  $("body").append($temp);
		  $temp.val($(element).text()).select();
		  document.execCommand("copy");
		  $temp.remove();
		  toastr.success(
		      "Link copied to clipboard.",
		      { showMethod: "slideDown", hideMethod: "slideUp", timeOut: 2000 }
		    );
		}
		
		$("#success-alert").on("click", function () {
		    toastr.success(
		      "Your ticket has been created",
		      { showMethod: "slideDown", hideMethod: "slideUp", timeOut: 2000 }
		    );
		  });
	
	
		$('document').ready(function() {
			//$('#home').addClass('mm-active');
			$('.fb-icon').click(function(){
				
				 window.open('http://www.facebook.com/sharer.php?u=https://mysuperbrain.com/school/profile?usr=${user.username}','MySuperBrain User Profile Share', 
				  'width=626,height=436');    
				return false;
			});
			$('.tw-icon').click(function(){
				window.open(
						  'https://twitter.com/share?url=https://mysuperbrain.com/school/profile?usr=${user.username}','MySuperBrain User Profile Share', 
				  'width=626,height=436');  
							return false;		
			});
		});
	</script>
	<script>
		$('document').ready(function(){
			if($('#premium').val()==0){
				$('#clickForPremium').click();
			}
		});
	</script>
	<script>
$.ajax({
	type : "GET",
	url : "${pageContext.request.contextPath}/school/fanscount?usr=${SchoolStudent.username}",
	timeout : 100000,
	beforeSend:function(){
		//$('#milo-points').append('<i class="fa fa-spinner fa-spin orange" id="loading"></i>');
	},
	success : function(data) {
		
		console.log("SUCCESS: ", data);
		$('#user-fans').empty();
		$('#user-fans').html(+data);
		
	},
	error : function(e) {
		console.log("ERROR: ", e);
		
	},
	done : function(e) {
		console.log("DONE");
		$('#loading').remove();
		
	}
});
</script>
</body>
</html>
