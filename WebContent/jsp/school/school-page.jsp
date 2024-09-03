<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<c:choose>
<c:when test="${not empty pageDetails && empty invalidcode}">
<title>${pageDetails.school_name } Page | MySuperBrain.com</title>
</c:when>
<c:otherwise>
<title>School Page | MySuperBrain.com</title>
</c:otherwise>
</c:choose>



<meta name="description"
	content="MySuperBrain.com is the first website that aims to encourage the all-round development in school students. MySuperBrain.com makes students more knoeledgeable and creative. MSB also provides the students an opportunity to showcase their amazing skills in multiple areas to people from around the world">
<meta name="keywords"
	content="MySuperBrain.com, mysuperbrain, all-rounder, education, overall development, IIM alumni, knowledge, creativity, recognition, students, school, children, Howard Gardner, multiple intelligences, quizzes, quizzes for kids, My">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

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
		<jsp:include page="/common/schoolheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/schoolmenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="row">
					<c:choose>
						<c:when test="${not empty pageDetails}">
							<div class="col-md-12">
								<div class="col-md-8">
									<div style="height: 35px; background-color: #F8E0EC;">
										<h2 align="center">${pageDetails.school_name }</h2>
									</div>
									<br />
									<div align="center">
										<img
											src="<%=request.getContextPath()%>/school/school-image/${pageDetails.school_code }"
											class="img-thumbnail" alt="${pageDetails.school_name } Image">
									</div>
									<div class="space-20"></div>
										<%-- 	<h4><a class="pull-right" href="<%=request.getContextPath() %>/entries/${user.username}" target="_blank">View all entries</a></h4> --%>
										<div class="space-20"></div>
										<hr>
										<div class="widget-box transparent" id="recent-box" style="min-height: 230px;">
											<div class="widget-header">
												<h4 class="widget-title lighter smaller">
													<i class="ace-icon fa fa-rss orange"></i> Recent Competition
												Entry Submissions
												<span class="pull-right">
													<a href="<%=request.getContextPath() %>/school/school-entries/${pageDetails.school_code}">See All Entries From School</a>
												</span>
												</h4>

												<div class="widget-toolbar no-border">
													<ul class="nav nav-tabs" id="recent-tab">
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
														<div id="essays-tab" class="tab-pane active scroll">
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

														<div id="poems-tab" class="tab-pane scroll">
															
															
														</div>

														<div id="paints-tab" class="tab-pane scroll">

															
														</div>
														
														<div id="photos-tab" class="tab-pane scroll">

															
														</div>
														
														<div id="dances-tab" class="tab-pane scroll">

															
														</div>
														
														<div id="musics-tab" class="tab-pane scroll">

															
														</div>
														
														<div id="dialogues-tab" class="tab-pane scroll">

															
														</div>
														
														<div id="wiyts-tab" class="tab-pane scroll">

															
														</div>
													</div>
												</div><!-- /.widget-main -->
											</div><!-- /.widget-body -->
										</div><!-- /.widget-box -->
									<c:if test="${not empty pageDetails.achievements }">



										<div class="widget-box">
											<div class="widget-header widget-header-flat">
												<h4 class="smaller">
													<i class="ace-icon fa fa-trophy"></i> Student Achievers
												</h4>
											</div>

											<div class="widget-body">
												<div class="widget-main">

													<ol class="linenums">${pageDetails.achievements}
													</ol>

												</div>
											</div>
										</div>
									</c:if>
									<hr>
									<c:if test="${not empty pageDetails.message }">
										<div class="widget-box">
											<div class="widget-header widget-header-flat">
												<h4 class="widget-title smaller">
													<i class="ace-icon fa fa-quote-left smaller-80"></i>
													Principal's Message
												</h4>
											</div>

											<div class="widget-body">
												<div class="widget-main">
													<div class="row">
														<div class="col-xs-12">
															<blockquote class="pull-right">
																<p class="text-justify">${pageDetails.message }</p>
															</blockquote>
														</div>
													</div>




												</div>
											</div>
										</div>
									</c:if>
									<c:if test="${not empty pageDetails.introduction }">
										<h5>
											<b>Introduction:</b>
										</h5>

										<p class="text-justify">${pageDetails.introduction }</p>
									</c:if>

								</div>
								<div class="col-md-3">
									<div>
										<img
											src="<%=request.getContextPath()%>/school/school-logo/${pageDetails.school_code }"
											class="img-thumbnail" alt="Invalid Format Logo">
									</div>
									<hr>

									<hr>
									<div align="center">
										<button type="button" class="btn btn-primary btn-block"
											id="add-school">I study at this school</button>
											<span id="add-school-wait"></span>
									</div>
									<hr>
									<div class="well" style="background-color: #A9F5BC">


										<h4 align="center">School Data</h4>
										<hr>
										
												<strong id="school-points"></strong>
											



									</div>
									<div class="well" style="background-color: #F3E2A9">
										<h4 align="center">Top Students</h4>
										<hr>
										<div id="school-toppers"></div>
										
									</div>

								</div>

							</div>
						</c:when>
						<c:otherwise>
							<h3>No School Details Found..!</h3>
						</c:otherwise>
						</c:choose>
							
							<!-- /.col -->
						</div>
						<!-- /.row -->
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
			$('[data-toggle=tooltip]').tooltip();
			$.ajax({
				type : "GET",
				url : "${pageContext.request.contextPath}/school/points/${pageDetails.school_name}/${pageDetails.school_code}",
				timeout : 100000,
				beforeSend:function(){
					$('#school-points').append('<i class="col-md-6 col-md-offset-3 ace-icon fa fa-spinner fa-spin orange fa-2x center" id="loading"></i>');
				},
				success : function(data) {
					
					console.log("SUCCESS: ", data);
					
					$('#school-points').empty();
					$('#school-points').html("Total Points :"+data);
					
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
					$('#school-toppers').append('<i class="col-md-6 col-md-offset-3 ace-icon fa fa-spinner fa-spin orange fa-2x center" id="loading"></i>');
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
		$('#get-poems').click(function(){
			if($('#is-poems-loaded').text()=='no'){
			$.ajax({
				type : "GET",
				url : "${pageContext.request.contextPath}/school/poems/${pageDetails.school_name}/${pageDetails.school_code}",
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
				url : "${pageContext.request.contextPath}/school/paints/${pageDetails.school_name}/${pageDetails.school_code}",
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
				url : "${pageContext.request.contextPath}/school/photos/${pageDetails.school_name}/${pageDetails.school_code}",
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
				url : "${pageContext.request.contextPath}/school/dances/${pageDetails.school_name}/${pageDetails.school_code}",
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
				url : "${pageContext.request.contextPath}/school/musics/${pageDetails.school_name}/${pageDetails.school_code}",
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
				url : "${pageContext.request.contextPath}/school/dialogues/${pageDetails.school_name}/${pageDetails.school_code}",
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
				url : "${pageContext.request.contextPath}/school/wiyts/${pageDetails.school_name}/${pageDetails.school_code}",
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