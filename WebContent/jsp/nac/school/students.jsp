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
<title>Participants from ${schoolname } for CodingStar | MySuperTalent</title>
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
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/buttons/1.6.4/css/buttons.dataTables.min.css">
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
									PARTICIPANTS LIST FROM ${schoolname }
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
										<div class="col-md-7">
											<div class="card-body">
												<div class="tab-content">
													<div class="tab-pane active" id="tab-animated1-0"
														role="tabpanel">
														<div class="row">
														<c:if test="${not empty students }">
															<table class="table table-bordered no-footer display" id="students" style="clear: none;">
																
																<tbody>
														<div class="main-card mb-3 card">
				                                            <ul class="list-group list-group-flush">
																<c:forEach items="${students}" var="student">
																<tr><td>
				                                                <li class="list-group-item">
				                                                    <div class="widget-content p-0">
				                                                        <div class="widget-content-wrapper">
				                                                            <div class="widget-content-left mr-3">
				                                                                <img width="42" class="rounded" src="<%=request.getContextPath()%>/milo/profile/image/${student.username}" alt="">
				                                                            </div>
				                                                            <div class="widget-content-left">
				                                                                <div class="widget-heading">${student.username}</div>
				                                                                <div class="widget-subheading">Class : ${student.standard}</div>
				                                                            </div>
				                                                            <div class="widget-content-right">
				                                                                <div class="ml-auto badge badge-pill badge-warning">${student.points}</div>
				                                                            </div>
				                                                        </div>
				                                                    </div>
				                                                </li></td></tr>
				                                                </c:forEach>
				                                            </ul>
				                                        </div>
				                                        </tbody></table></c:if>
														<c:if test="${empty students }">
															<h6>Invalid school or no participation from school.</h6>
														</c:if>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-5">
											
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
	
	<script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/1.6.4/js/dataTables.buttons.min.js"></script>
	<script type="text/javascript" charset="utf8" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
	<script type="text/javascript" charset="utf8" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
	<script type="text/javascript" charset="utf8" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/1.6.4/js/buttons.html5.min.js"></script>
	
	<script>
		$('document').ready(function() {
			$('#students').DataTable({
				dom: 'Bfrtip',
				"pageLength" : 10,
		    	//"ordering": false,
		    	//"info":     false
		    	buttons: [
		            'copyHtml5',
		            'excelHtml5',
		            'csvHtml5',
		            'pdfHtml5'
		        ]
		    });
			$('#students_length').hide();
		});
	</script>
</body>
</html>