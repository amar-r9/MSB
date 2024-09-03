<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Language" content="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><c:choose><c:when test="${not empty userData.name }">${userData.name }</c:when><c:otherwise>${userData.username }</c:otherwise></c:choose>'s Profile | MySuperBrain</title>
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
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
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
									<i class="pe-7s-news-paper icon-gradient bg-mean-fruit"> </i>
								</div>
								<div>
									<c:choose>
										<c:when test="${empty userData}">
											Profile <small> <i
												class="ace-icon fa fa-angle-double-right"></i>${userData.name}
											</small>
										</c:when>
										<c:otherwise></c:otherwise>
									</c:choose>
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
												<img src="<%=request.getContextPath()%>/school/profile/image?usr=${userData.username}" 
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
														<c:when test="${not empty userData.name }">
															<h2 style="font-weight: 800; color: #393939;">${userData.name }</h2>
														</c:when>
														<c:otherwise>
															<h2 style="font-weight: 800; color: #393939;">${userData.username }</h2>
														</c:otherwise>
													</c:choose>
												</div>
												<div class="col-md-12 card-shadow-alternate border mb-3 card card-body border-info">
												<div class="row">
													<div class="col-md-4">
														<p><i class="fa fa-school icon-gradient bg-ripe-malin"></i>&nbsp;&nbsp;${userData.school }<span class="pull-right d-none d-lg-block">|</span></p>
													</div>
													<div class="col-md-4">
														<p><i class="fa fa-graduation-cap icon-gradient bg-ripe-malin"></i>&nbsp;&nbsp;${userData.standard }</p>
													</div>
												</div>
												<div class="row">
													<div class="col-md-4">
														<p><i class="fa fa-map-marker icon-gradient bg-ripe-malin"></i>&nbsp;&nbsp;${userData.city }, ${userData.state }<span class="pull-right d-none d-lg-block">|</span></p>
													</div>
													<div class="col-md-4">
														<p><i class="fa fa-star icon-gradient bg-ripe-malin"></i>&nbsp;&nbsp;${userData.points }</p>
													</div>
													<br><br>
												</div>
											</div>
											<div class="row">
												<div class="col-md-6">
													<div class="fade show" id="fan-alert" role="alert"></div>
													<button class="btn btn-outline-danger btn-block btn-square" id="fan-button" onclick="beAFan()"
																data-loading-text="Please Wait.....">
														<i class="fa fa-user-plus"></i>&nbsp;&nbsp;Become a Fan
													</button>
												</div>
												<div class="d-block d-sm-none"><p>&nbsp;</p></div>
												<div class="col-md-6">
													<a href="#" class="btn btn-outline-danger btn-block btn-square">
														<i class="fa fa-eye"></i>&nbsp;&nbsp;View Entries
													</a>
													<br><br>
												</div>
												<div class="col-md-12">
													<br><br>
													<h5><b>Brief Profile</b></h5>
												</div>
												<div class="col-md-12 card-shadow-alternate border mb-3 
													card card-body border-alternate" style="margin: 15px;">
														<c:choose>
															<c:when test="${not empty userData.about }">
																<h6>${userData.about }</h6>
															</c:when>
															<c:otherwise>
																<h6>Hi, My name is <c:choose><c:when test="${not empty userData.name }">${userData.name }</c:when><c:otherwise>${userData.username }</c:otherwise></c:choose>, I'm studying ${userData.standard }<sup>th</sup> standard in ${userData.school }.</h6>
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
					</div>
				</div>
				<jsp:include page="/common/footer.jsp"></jsp:include>
			</div>
		</div>
	</div>
	<span id="copy-link" class="hide">https://mysuperbrain.com/school/profile?usr=${userData.username}</span>
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
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
	
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
		$('document').ready(function() {
			//$('#home').addClass('mm-active');
			$('.fb-icon').click(function(){
				
				 window.open('http://www.facebook.com/sharer.php?u=https://mysuperbrain.com/school/profile?usr=${userData.username}','MySuperBrain User Profile Share', 
				  'width=626,height=436');    
				return false;
			});
			$('.tw-icon').click(function(){
				window.open(
						  'https://twitter.com/share?url=https://mysuperbrain.com/school/profile?usr=${userData.username}','MySuperBrain User Profile Share', 
				  'width=626,height=436');  
							return false;		
			});
			
			$('#user_entries').DataTable({
		    	"pageLength" : 1,
		    	"ordering": false,
		    	"info":     false
		    });
			$('#user_entries_length').hide();
			$('#user_entries_filter').hide();
		});
	</script>

	<script type="text/javascript">
		function beAFan() {
			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/school/beafan",
				data : {"username" : '${userData.username}'},
				timeout : 100000,
				beforeSend : function() {
					$("#fan-button").button('loading');
				},
				success : function(data) {
	
					console.log("SUCCESS: ", data);
	
					if (data == 'login-required') {
						bootbox.confirm("Please login to become a fan.Login now?",
						function(yes) {
							if (yes) {
								var next = "${requestScope['javax.servlet.forward.request_uri']}".replace('${pageContext.request.contextPath}',"");
								location.href = "${pageContext.request.contextPath}/school/login?invalidsession=true&next="+ next;
							} else {
								return true;
							}
						});
					} else if (data == 'success') {
						$('#fan-alert').removeClass();
						$('#fan-alert').addClass('alert alert-info');
						$('#fan-alert').text('You are now a fan');
						$('#fan-count').text(parseInt($('#fan-count').text()) + 1);
					} else if (data == 'fan') {
						$('#fan-alert').removeClass();
						$('#fan-alert').addClass('alert alert-warning');
						$('#fan-alert').text('You are already a fan');
					}
	
					$("#fan-button").button('reset');
				},
				error : function(e) {
					console.log("ERROR: ", e);
					bootbox.alert(e);
					$("#fan-button").button('reset');
				},
				done : function(e) {
					console.log("DONE");
					$("#fan-button").button('reset');
	
				}
			});

		}
	</script>
</body>
</html>