<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.cultode.constants.MsbConstants" %>	
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
<title>Test Categories | MySuperBrain.com</title>

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
<style>
.nav-tabs > li.active > a, .nav-tabs > li.active > a:hover, .nav-tabs > li.active > a:focus {
    color: #FFF;
    border-color: #c5d0dc;
    border-top: 2px solid #4c8fbd;
    border-bottom-color: transparent;
    background-color: #ff6161;
    z-index: 1;
    line-height: 18px;
    margin-top: -1px;
    box-shadow: 0 -2px 3px 0 rgba(0, 0, 0, 0.15);
}
.nav-tabs > li:first-child > a {
    margin-left: 0;
}
</style>
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
						<li><i class="ace-icon fa fa-home home-icon"></i> <a href="<%=request.getContextPath() %>/">Home</a>
						</li>
						<li class="active">Test Categories</li>
					</ul>
					<!-- /.breadcrumb -->
					<!-- /section:basics/content.searchbox -->
				</div>
				<!-- /section:basics/content.breadcrumbs -->
				<div class="page-content">
					<!-- #section:settings.box -->
					<div class="page-content-area">
						<div class="page-header">
							<h1>
								Test Categories<small> <i
									class="ace-icon fa fa-angle-double-right"></i> List of tests under each category
								</small>
							</h1>
						</div>
						<!-- /.page-header -->
						<div class="row">
							<div class="col-md-12">	
								<div class="tabbable">
									<ul class="nav nav-tabs padding-16">
				
										<li class="tabsclick" id="kids-li" class="active"><a data-toggle="tab" href="#kids"> <i
												class="yellow ace-icon fa fa-user bigger-125"> </i> Kids (1<sup>st</sup>
												to 3<sup>rd</sup> Grades)
										</a></li>
										<li class="tabsclick" id="junior-li"><a data-toggle="tab" href="#juniors">
												<i class="green ace-icon fa fa-user bigger-125"> </i> Juniors
												(4<sup>th</sup> to 6<sup>th</sup> Grades)
										</a></li>
				
										<li class="tabsclick" id="senior-li"><a data-toggle="tab" href="#seniors">
												<i class="blue ace-icon fa fa-user bigger-125"> </i> Seniors (7<sup>th</sup>
												to 9<sup>th</sup> Grades)
										</a></li>
				
									</ul>
				
									<div class="tab-content profile-edit-tab-content">
										<!-- <p>
											<font color="red">Please select your category above before
												you proceed to participating</font>
										</p> -->
										<div id="kids" class="tab-pane active">
											<h4 class="center alert alert-info">KIDS</h4>
											<div class="space-12"></div>
											<div style="margin-left: 120px;" id="kidload">
												<%-- <c:forEach items="${quizGenres}" var="genre">
													<a href="${pageContext.servletContext.contextPath}/tests/${client}/${MsbConstants.KIDS}/${genre.genre_id}/0"><img alt=""
														src="<%=request.getContextPath()%>/img/quiz/${genre.genre_id}.png"
														class="img-rounded" height="160px" width="160px"></a>
												</c:forEach> --%>
											<!-- <a href="${pageContext.servletContext.contextPath}/tests/${client}/${MsbConstants.KIDS}/1/0"><img alt=""
														src="<%=request.getContextPath()%>/img/quiz/1.png"
														class="img-rounded" height="160px" width="160px"></a> -->
											<!-- <a href="${pageContext.servletContext.contextPath}/tests/${client}/${MsbConstants.KIDS}/2/0"><img alt=""
														src="<%=request.getContextPath()%>/img/quiz/2.png"
														class="img-rounded" height="160px" width="160px"></a> -->
												<a href="${pageContext.servletContext.contextPath}/tests/${client}/${MsbConstants.KIDS}/3/0"><img alt=""
														src="<%=request.getContextPath()%>/img/quiz/3.png"
														class="img-rounded" height="160px" width="160px"></a>
											<!-- <a href="${pageContext.servletContext.contextPath}/tests/${client}/${MsbConstants.KIDS}/4/0"><img alt=""
														src="<%=request.getContextPath()%>/img/quiz/4.png"
														class="img-rounded" height="160px" width="160px"></a> -->
												<a href="${pageContext.servletContext.contextPath}/tests/${client}/${MsbConstants.KIDS}/5/0"><img alt=""
														src="<%=request.getContextPath()%>/img/quiz/5.png"
														class="img-rounded" height="160px" width="160px"></a>
												<a href="${pageContext.servletContext.contextPath}/tests/${client}/${MsbConstants.KIDS}/6/0"><img alt=""
														src="<%=request.getContextPath()%>/img/quiz/6.png"
														class="img-rounded" height="160px" width="160px"></a>
											<!-- <a href="${pageContext.servletContext.contextPath}/tests/${client}/${MsbConstants.KIDS}/7/0"><img alt=""
														src="<%=request.getContextPath()%>/img/quiz/7.png"
														class="img-rounded" height="160px" width="160px"></a> -->
											</div>
				
										</div>
										<div id="juniors" class="tab-pane">
											<h4 class="center alert alert-success">JUNIORS</h4>
											<div class="space-12"></div>
											<div style="margin-left: 120px;" id="junload">												
												<%-- <c:forEach items="${quizGenres}" var="genre">												
												<a href="${pageContext.servletContext.contextPath}/tests/${client}/${MsbConstants.JUNIOR}/${genre.genre_id}/0"><img alt=""
													src="<%=request.getContextPath()%>/img/quiz/${genre.genre_id}.png"
													class="img-rounded" height="160px" width="160px"></a>												
												</c:forEach> --%>
												
												<a href="${pageContext.servletContext.contextPath}/tests/${client}/${MsbConstants.JUNIOR}/1/0"><img alt=""
													src="<%=request.getContextPath()%>/img/quiz/1.png"
													class="img-rounded" height="160px" width="160px"></a>
												<a href="${pageContext.servletContext.contextPath}/tests/${client}/${MsbConstants.JUNIOR}/2/0"><img alt=""
													src="<%=request.getContextPath()%>/img/quiz/2.png"
													class="img-rounded" height="160px" width="160px"></a>
												<a href="${pageContext.servletContext.contextPath}/tests/${client}/${MsbConstants.JUNIOR}/3/0"><img alt=""
													src="<%=request.getContextPath()%>/img/quiz/3.png"
													class="img-rounded" height="160px" width="160px"></a>
											<!-- <a href="${pageContext.servletContext.contextPath}/tests/${client}/${MsbConstants.JUNIOR}/4/0"><img alt=""
													src="<%=request.getContextPath()%>/img/quiz/4.png"
													class="img-rounded" height="160px" width="160px"></a> -->
												<a href="${pageContext.servletContext.contextPath}/tests/${client}/${MsbConstants.JUNIOR}/5/0"><img alt=""
													src="<%=request.getContextPath()%>/img/quiz/5.png"
													class="img-rounded" height="160px" width="160px"></a>
											<!-- <a href="${pageContext.servletContext.contextPath}/tests/${client}/${MsbConstants.JUNIOR}/6/0"><img alt=""
													src="<%=request.getContextPath()%>/img/quiz/6.png"
													class="img-rounded" height="160px" width="160px"></a> -->
											<!-- <a href="${pageContext.servletContext.contextPath}/tests/${client}/${MsbConstants.JUNIOR}/7/0"><img alt=""
													src="<%=request.getContextPath()%>/img/quiz/7.png"
													class="img-rounded" height="160px" width="160px"></a> -->
											</div>
										</div>
				
										<div id="seniors" class="tab-pane">
											<h4 class="center alert alert-warning">SENIORS</h4>
											<div class="space-12"></div>				
											<div style="margin-left: 120px;" id="senload">											
												<%-- <c:forEach items="${quizGenres}" var="genre">
												<a href="${pageContext.servletContext.contextPath}/tests/${client}/${MsbConstants.SENIOR}/${genre.genre_id}/0"><img alt=""
													src="<%=request.getContextPath()%>/img/quiz/${genre.genre_id}.png"
													class="img-rounded" height="160px" width="160px"></a>
												</c:forEach> --%>
												
												<a href="${pageContext.servletContext.contextPath}/tests/${client}/${MsbConstants.SENIOR}/1/0"><img alt=""
													src="<%=request.getContextPath()%>/img/quiz/1.png"
													class="img-rounded" height="160px" width="160px"></a>
												<a href="${pageContext.servletContext.contextPath}/tests/${client}/${MsbConstants.SENIOR}/2/0"><img alt=""
													src="<%=request.getContextPath()%>/img/quiz/2.png"
													class="img-rounded" height="160px" width="160px"></a>
												<a href="${pageContext.servletContext.contextPath}/tests/${client}/${MsbConstants.SENIOR}/3/0"><img alt=""
													src="<%=request.getContextPath()%>/img/quiz/3.png"
													class="img-rounded" height="160px" width="160px"></a>
											<!-- <a href="${pageContext.servletContext.contextPath}/tests/${client}/${MsbConstants.SENIOR}/4/0"><img alt=""
													src="<%=request.getContextPath()%>/img/quiz/4.png"
													class="img-rounded" height="160px" width="160px"></a> -->
												<a href="${pageContext.servletContext.contextPath}/tests/${client}/${MsbConstants.SENIOR}/5/0"><img alt=""
													src="<%=request.getContextPath()%>/img/quiz/5.png"
													class="img-rounded" height="160px" width="160px"></a>
												<a href="${pageContext.servletContext.contextPath}/tests/${client}/${MsbConstants.SENIOR}/6/0"><img alt=""
													src="<%=request.getContextPath()%>/img/quiz/6.png"
													class="img-rounded" height="160px" width="160px"></a>
											<!-- <a href="${pageContext.servletContext.contextPath}/tests/${client}/${MsbConstants.SENIOR}/7/0"><img alt=""
													src="<%=request.getContextPath()%>/img/quiz/7.png"
													class="img-rounded" height="160px" width="160px"></a> -->
				
											</div>
										</div>
									</div>
				
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
	</div><!-- /.main-container -->

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
		src="<%=request.getContextPath()%>/assets/js/ace/ace.sidebar-scroll-1.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/js/ace/ace.submenu-hover.js"></script>

	<script type="text/javascript">
		$('document').ready(function(){
			$('[data-toggle=tooltip]').tooltip();
		});
	</script>
	<script>
	$(function(){
	    
	    $('.tabsclick').click(function () {
            $('#senload').hide();
            $('#junload').hide();
            $('#kidload').hide();
	    	setTimeout(function(){
	            $('#loadbar').fadeOut();
	            $('#senload').show();
	            $('#junload').show();
	            $('#kidload').show();
	    	}, 100);
	    }); 
	});	

	</script>
</body>
</html>