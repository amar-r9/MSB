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
<title>SchoolPage | MySuperBrain</title>
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
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<jsp:include page="/common/mheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/mmenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner">
					<div class="app-page-title">
						<div class="page-title-wrapper">
							<div class="page-title-heading">
								<div class="page-title-icon">
									<i class="pe-7s-news-paper icon-gradient bg-mean-fruit"> </i>
								</div>
								<div>
									School
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
										<div class="col-md-12">
											
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
	<script>
		$('document').ready(function() {
			//$('#home').addClass('mm-active');
			    $('#crafts').DataTable({
			    	//"dom": false,               //'<"top"i>rt<"bottom"flp><"clear">',
			    	//"fixedHeader": false,
				    //"LengthChange": false,
				    //"filter": false,
				    //"info": false,
				    //"AutoWidth": false,
			    	
			    	
			    	
			    	"pageLength" : 4,
			    	"ordering": false,
			    	"info":     false
					//"LengthChange" : false
					//"Length" : false
			    });
			//$('#crafts').dataTable({
				//'pageLength' : 2,
				//"aLengthMenu" : [ [ 4, 10, 20, -1 ], [ 4, 10, 20, "All" ] ]
			//});
			$('#crafts_length').hide();
			$('#crafts_filter').hide();
		});
	</script>
</body>
</html>