<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Cache-Control"
	content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>Student Competition Entries By School | MySuperBrain</title>

<meta name="description"
	content="MySuperBrain.com is the first website that aims to encourage the all-round development in school students. MySuperBrain.com makes students more knoeledgeable and creative. MSB also provides the students an opportunity to showcase their amazing skills in multiple areas to people from around the world">
<meta name="keywords"
	content="MySuperBrain.com, mysuperbrain, all-rounder, education, overall development, IIM alumni, knowledge, creativity, recognition, students, school, children, Howard Gardner, multiple intelligences, quizzes, quizzes for kids, My">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/bootstrap.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/font-awesome.css" />

<!-- page specific plugin styles -->

<!-- text fonts -->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/ace-fonts.css" />

<!-- ace styles -->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/ace.css"
	class="ace-main-stylesheet" id="main-ace-style" />
<!-- fav icon -->
<link rel="icon" href="<%=request.getContextPath()%>/img/favicon.ico"
	type="image/x-icon">
<!-- page specific plugin styles -->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/jquery-ui.custom.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/jquery.gritter.css" />
<!--[if lte IE 9]>
			<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/ace-part2.css" class="ace-main-stylesheet" />
		<![endif]-->

<!--[if lte IE 9]>
		  <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/ace-ie.css" />
		<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script src="<%=request.getContextPath() %>/assets/js/ace-extra.js"></script>

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

<!--[if lte IE 8]>
		<script src="<%=request.getContextPath() %>/assets/js/html5shiv.js"></script>
		<script src="<%=request.getContextPath() %>/assets/js/respond.js"></script>
		<![endif]-->
<script src="<%=request.getContextPath()%>/js/analytics.js"></script>
<script src='https://www.google.com/recaptcha/api.js'></script>
</head>
<body class="no-skin">
	<jsp:include page="/common/header.jsp"></jsp:include>
	<!-- /section:basics/navbar.layout -->
	<div class="main-container" id="main-container">
		<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>
		<jsp:include page="/common/menu.jsp"></jsp:include>
		<!-- /section:basics/sidebar -->
		<div class="main-content">
			<div class="main-content-inner">
				<!-- #section:basics/content.breadcrumbs -->
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i> <a
							href="<%=request.getContextPath() %>/">Home</a></li>
						<li class="active">Entries</li>
					</ul>
					<!-- /.breadcrumb -->
					<!-- /section:basics/content.searchbox -->
				</div>
				<!-- /section:basics/content.breadcrumbs -->
				<div class="page-content">
					<!-- #section:settings.box -->
					<div class="page-content-area">
						<div class="page-header">
							<a href="<%=request.getContextPath()%>/school/${school_code}"
								class="btn btn-info btn-bold pull-right"><i
								class="ace-icon fa fa-bank bigger-130"></i>&nbsp;View
								School Page &nbsp;</a>
							<h1>
								${pageDetails.school_name } <small> <i
									class="ace-icon fa fa-angle-double-right"></i>&nbsp;Competition Entries
								</small>
							</h1>

						</div>
						<!-- /.page-header -->
						<div class="row">
							<div id="user-profile-1" class="user-profile row">								
								<div class="col-md-12">
									<div class="space-20"></div>
									
										<div class="widget-box transparent" id="recent-box" style="min-height: 230px;">
											<div class="widget-header">
												

												<div class="widget-toolbar no-border">
													<ul class="nav nav-tabs">
														<li class="active">
															<a data-toggle="tab" href="#essays-tab" aria-expanded="false">Essays</a>
														</li>

														<li class="">
															<a data-toggle="tab" href="#poems-tab" aria-expanded="false" id="get-poems">Poems</a>
														</li>

														<li class="">
															<a data-toggle="tab" href="#paints-tab" aria-expanded="true" id="get-paints">Painitngs</a>
														</li>
														<li class="">
															<a data-toggle="tab" href="#photos-tab" aria-expanded="false" id="get-photos">Photographs</a>
														</li>

														<li class="">
															<a data-toggle="tab" href="#dances-tab" aria-expanded="true" id="get-dances">Dances</a>
														</li>
														<li class="">
															<a data-toggle="tab" href="#musics-tab" aria-expanded="false" id="get-musics">Music</a>
														</li>

														<li class="">
															<a data-toggle="tab" href="#dialogues-tab" aria-expanded="true" id="get-dialogues">Dialogues</a>
														</li>
														<li class="">
															<a data-toggle="tab" href="#wiyts-tab" aria-expanded="true" id="get-wiyts">What is your talent</a>
														</li>
													</ul>
												</div>
											</div>

											<div class="widget-body">
												<div class="widget-main padding-4">
													<div class="tab-content padding-8">
														<div id="essays-tab" class="tab-pane active scroll" style="height: 450px;">
															<c:if test="${not empty essays }">
															<c:forEach items="${essays }" var="essay">
																<div class="profile-activity clearfix">
																	<div>
																		<h4 class="smaller">
																			${essay.competition.title} <small class="pull-right">${essay.user_name}&nbsp;&nbsp;</small>
																		</h4>
																		<div class="time">
																			<p style="text-align: justify;">${essay.summary}</p>
																		</div>
																	</div>
																	<div class="tools action-buttons">
																		<a
																			href="${pageContext.request.contextPath}/view/mysuperbrain/competition_textentry/${essay.id}"
																			class="btn btn-xs btn-primary" target="_blank">View
																			&amp; Share</a>

																	</div>
																</div>

															</c:forEach>
														</c:if>
														<c:if test="${empty essays }">
														<h6>No Entries Found</h6>
														</c:if>
														</div>

														<div id="poems-tab" class="tab-pane scroll" style="height: 450px;">
															
															
														</div>

														<div id="paints-tab" class="tab-pane scroll" style="height: 450px;">

															
														</div>
														
														<div id="photos-tab" class="tab-pane scroll" style="height: 450px;">

															
														</div>
														
														<div id="dances-tab" class="tab-pane scroll" style="height: 450px;">

															
														</div>
														
														<div id="musics-tab" class="tab-pane scroll" style="height: 450px;">

															
														</div>
														
														<div id="dialogues-tab" class="tab-pane scroll" style="height: 450px;">

															
														</div>
														
														<div id="wiyts-tab" class="tab-pane scroll" style="height: 450px;">

															
														</div>
													</div>
												</div><!-- /.widget-main -->
											</div><!-- /.widget-body -->
										</div><!-- /.widget-box -->								
								
								</div>
							</div>

							<!-- /.col -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.page-content-area -->
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<jsp:include page="/common/footer.jsp"></jsp:include>
		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>
		<span class="hide" id="is-poems-loaded">no</span>
		<span class="hide" id="is-paints-loaded">no</span>
		<span class="hide" id="is-photos-loaded">no</span>
		<span class="hide" id="is-dances-loaded">no</span>
		<span class="hide" id="is-musics-loaded">no</span>
		<span class="hide" id="is-dialogues-loaded">no</span>
		<span class="hide" id="is-wiyts-loaded">no</span>
	</div>
	<!-- /.main-container -->
	
	<!-- basic scripts -->

	<!--[if !IE]> -->
	

	<!-- <![endif]-->

	<!--[if IE]>
<script src="../assets/js/jquery1x.js"></script>
<![endif]-->
	<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='<%=request.getContextPath() %>/assets/js/jquery.mobile.custom.js'>"
							+ "<"+"/script>");
	</script>
	<script src="<%=request.getContextPath()%>/assets/js/bootstrap.js"></script>

	<!-- page specific plugin scripts -->

	<!-- [if lte IE 8]> -->
	<script src="<%=request.getContextPath()%>/assets/js/excanvas.js"></script>
	<!-- [endif] -->


	<!-- ace scripts -->
	<script
		src="<%=request.getContextPath()%>/assets/js/ace/elements.aside.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/ace/ace.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/js/ace/ace.sidebar.js"></script>
		<script
		src="<%=request.getContextPath()%>/assets/js/ace/elements.scroller.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/js/ace/ace.sidebar-scroll-1.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/js/ace/ace.submenu-hover.js"></script>

	<script type="text/javascript">
		
		$('document').ready(function() {
			$('[data-toggle=tooltip]').tooltip();
		});
		
		$('#get-poems').click(function(){
			if($('#is-poems-loaded').text()=='no'){
			$.ajax({
				type : "GET",
				url : "${pageContext.request.contextPath}/school/allpoems/${pageDetails.school_name}/${pageDetails.school_code}",
				timeout : 100000,
				beforeSend:function(){
					$('#poems-tab').append('<i class="col-md-6 col-md-offset-3 ace-icon fa fa-spinner fa-spin orange fa-5x center" id="loading"></i>');
				},
				success : function(data) {
					
					console.log("SUCCESS: ", data);
					
					$('#poems-tab').empty();
					$('#poems-tab').html(data);
					$('#is-poems-loaded').text('yes');
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

		});
		$('#get-paints').click(function(){
			if($('#is-paints-loaded').text()=='no'){
			$.ajax({
				type : "GET",
				url : "${pageContext.request.contextPath}/school/allpaints/${pageDetails.school_name}/${pageDetails.school_code}",
				timeout : 100000,
				beforeSend:function(){
					$('#paints-tab').append('<i class="col-md-6 col-md-offset-5 ace-icon fa fa-spinner fa-spin orange fa-5x center" id="loading"></i>');
				},
				success : function(data) {
					
					console.log("SUCCESS: ", data);
					
					$('#paints-tab').empty();
					$('#paints-tab').html(data);
					$('#is-paints-loaded').text('yes')
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
		});
		$('#get-photos').click(function(){
			if($('#is-photos-loaded').text()=='no'){
			$.ajax({
				type : "GET",
				url : "${pageContext.request.contextPath}/school/allphotos/${pageDetails.school_name}/${pageDetails.school_code}",
				timeout : 100000,
				beforeSend:function(){
					$('#photos-tab').append('<i class="col-md-6 col-md-offset-5 ace-icon fa fa-spinner fa-spin orange fa-5x center" id="loading"></i>');
				},
				success : function(data) {
					
					console.log("SUCCESS: ", data);
					
					$('#photos-tab').empty();
					$('#photos-tab').html(data);
					$('#is-photos-loaded').text('yes')
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
		});
		$('#get-dances').click(function(){
			if($('#is-dances-loaded').text()=='no'){
			$.ajax({
				type : "GET",
				url : "${pageContext.request.contextPath}/school/alldances/${pageDetails.school_name}/${pageDetails.school_code}",
				timeout : 100000,
				beforeSend:function(){
					$('#dances-tab').append('<i class="col-md-6 col-md-offset-5 ace-icon fa fa-spinner fa-spin orange fa-5x center" id="loading"></i>');
				},
				success : function(data) {
					
					console.log("SUCCESS: ", data);
					
					$('#dances-tab').empty();
					$('#dances-tab').html(data);
					$('#is-dances-loaded').text('yes')
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
		});
		$('#get-musics').click(function(){
			if($('#is-musics-loaded').text()=='no'){
			$.ajax({
				type : "GET",
				url : "${pageContext.request.contextPath}/school/allmusics/${pageDetails.school_name}/${pageDetails.school_code}",
				timeout : 100000,
				beforeSend:function(){
					$('#musics-tab').append('<i class="col-md-6 col-md-offset-5 ace-icon fa fa-spinner fa-spin orange fa-5x center" id="loading"></i>');
				},
				success : function(data) {
					
					console.log("SUCCESS: ", data);
					
					$('#musics-tab').empty();
					$('#musics-tab').html(data);
					$('#is-musics-loaded').text('yes')
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
		});
		$('#get-dialogues').click(function(){
			if($('#is-dialogues-loaded').text()=='no'){
			$.ajax({
				type : "GET",
				url : "${pageContext.request.contextPath}/school/alldialogues/${pageDetails.school_name}/${pageDetails.school_code}",
				timeout : 100000,
				beforeSend:function(){
					$('#dialogues-tab').append('<i class="col-md-6 col-md-offset-5 ace-icon fa fa-spinner fa-spin orange fa-5x center" id="loading"></i>');
				},
				success : function(data) {
					
					console.log("SUCCESS: ", data);
					
					$('#dialogues-tab').empty();
					$('#dialogues-tab').html(data);
					$('#is-dialogues-loaded').text('yes')
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
		});
		$('#get-wiyts').click(function(){
			if($('#is-wiyts-loaded').text()=='no'){
			$.ajax({
				type : "GET",
				url : "${pageContext.request.contextPath}/school/allwiyts/${pageDetails.school_name}/${pageDetails.school_code}",
				timeout : 100000,
				beforeSend:function(){
					$('#wiyts-tab').append('<i class="col-md-6 col-md-offset-5 ace-icon fa fa-spinner fa-spin orange fa-5x center" id="loading"></i>');
				},
				success : function(data) {
					
					console.log("SUCCESS: ", data);
					
					$('#wiyts-tab').empty();
					$('#wiyts-tab').html(data);
					$('#is-wiyts-loaded').text('yes')
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
		});		
	</script>
</body>
</html>