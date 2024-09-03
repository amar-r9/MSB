<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.msb.constants.MsbConstants"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Language" content="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Workout Videos by students from ${schoolname } on Milo HomeGrounds | MySuperTalent</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
	content="Watch these amazing workouts of the students. Watch the videos, share them and encourage young talents. Singing & Music Instruments">
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

<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">

<link href="<%=request.getContextPath()%>/assets/main.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/assets/main.cba69814a806ecc7945a.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
<style>
/* .btn:focus, .btn:active, button:focus, button:active {
  outline: none !important;
  box-shadow: none !important;
}

#image-gallery .modal-footer{
  display: block;
}

.thumb{
  margin-top: 15px;
  margin-bottom: 15px;
} */
.modal-backdrop.show, .show.blockOverlay {
    opacity: 0 !important;
}
.videosize {
    /*position:absolute;*/
    z-index:-1;
    top:0;
    left:0;
    width:100%; 
    height:100%;
}
</style>
</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<jsp:include page="/common/adminheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/adminmenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner">
					<div class="app-page-title">
						<div class="page-title-wrapper">
							<div class="page-title-heading">
								<div class="page-title-icon">
									<i class="pe-7s-news-paper icon-gradient bg-mean-fruit"> </i>
								</div>
								<div>
									Work out Videos
									<div class="page-title-subheading">
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
									<div class="col-md-8">
										<div class="tab-content">
											<div class="tab-pane active" id="texts-tab" role="tabpanel">
												
												<c:if test="${not empty miloSubmissions }">
													<table class="table" id="session_entries">
														<thead style="display: none;"><tr><th></th></tr></thead>
														<tbody>
														<c:forEach items="${miloSubmissions }" var="essay">
															<tr>
																<td>
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
																			href="<%=request.getContextPath()%>/milo/view_entry/${essay.id }">VIEW
																			ENTRY</a>
																	</div>
																</div>
																</td>
															</tr>
														</c:forEach>
													</tbody>
													</table>
												</c:if>
												<c:if test="${empty miloSubmissions }">
													<h4>There are no entries uploaded from this school yet.</h4>
												</c:if>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<jsp:include page="/common/mfooter.jsp"></jsp:include>
			</div>
		</div>
	</div>
	<!-- jQuery library -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/assets/scripts/main.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/assets/scripts/main.cba69814a806ecc7945a.js"></script>
	<!-- jQuery library -->
	<script
		src="<%=request.getContextPath()%>/assets/jquery.js"></script>
	<script src="<%=request.getContextPath()%>/assets/bootstrap.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/jquery.inputlimiter.1.3.1.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/jquery.autosize.js"></script>
	<script	
		src="<%=request.getContextPath()%>/assets/jquery.validate.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/additional-methods.js"></script>
	<script	
		src="<%=request.getContextPath()%>/assets/bootbox.js"></script>
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
	<script>
		$('document').ready(function() {
			//$('#home').addClass('mm-active');
			$('#session_entries').DataTable({
		    	"pageLength" : 3,
		    	"ordering": false,
		    	"info":     false
		    });
			$('#session_entries_length').hide();
			$('#session_entries_filter').hide();
		});
	</script>
</body>
</html>