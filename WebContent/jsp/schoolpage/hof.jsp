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
<title>${schoolname }'sLeaderBoard| MySuperBrain</title>
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
<link rel="icon" href="<%=request.getContextPath()%>/img/favicon.ico"
	type="image/x-icon">
</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<jsp:include page="/common/schoolheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/schoolmenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner">
					<div class="app-page-title">
						<div class="page-title-wrapper">
							<div class="page-title-heading">
								<div class="page-title-icon">
									<i class="pe-7s-news-paper icon-gradient bg-mean-fruit"> </i>
								</div>
								<div>
									LEADER BOARD
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
										<div class="col-md-9">
											<div class="card-body">
												<ul
													class="tabs-animated-shadow nav-justified tabs-animated nav">
													<li class="nav-item"><a role="tab"
														class="nav-link active" id="tab-c1-0" data-toggle="tab"
														href="#tab-animated1-0"> <span class="nav-text">LEADER
																BOARD</span>
													</a></li>
												</ul>
												<div class="tab-content">
													<div class="tab-pane active" id="tab-animated1-0"
														role="tabpanel">
														<div class="row text-center">
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<c:if test="${not empty toppers }">
																<div class="d-none d-lg-block" style="width: 100%;">
																	<table class="table table-bordered" id="students"
																		style="clear: none;">
																		<thead>
																			<tr>
																				<th id="name">Name</th>
																				<th>Grade</th>
																				<th>School</th>
																				<th>City</th>
																				<th id="points">Points</th>
																			</tr>
																		</thead>
																		<tbody>
																			<c:forEach items="${toppers}" var="student">
																				<c:if test="${not empty SchoolStudent}">
																					<c:choose>
																						<c:when
																							test="${SchoolStudent.username eq student.username }">
																							<tr class="bg-success text-white">
																								<th><c:choose>
																										<c:when test="${student.name eq null }">
																										${student.username }
																									</c:when>
																										<c:otherwise>
																										${student.name }
																									</c:otherwise>
																									</c:choose></th>
																								<th><c:choose>
																										<c:when test="${student.standard eq null }">
																										N/A
																									</c:when>
																										<c:otherwise>
																										${student.standard }
																									</c:otherwise>
																									</c:choose></th>
																								<th><c:choose>
																										<c:when test="${student.school eq null }">
																										N/A
																									</c:when>
																										<c:otherwise>
																										${student.school }
																									</c:otherwise>
																									</c:choose></th>
																								<th><c:choose>
																										<c:when test="${student.city eq null }">
																										N/A
																									</c:when>
																										<c:otherwise>
																										${student.city }
																									</c:otherwise>
																									</c:choose></th>
																								<th>${student.points }</th>
																							</tr>
																						</c:when>
																						<c:otherwise>
																							<tr>
																								<td><c:choose>
																										<c:when test="${student.name eq null }">
																										${student.username }
																									</c:when>
																										<c:otherwise>
																										${student.name }
																									</c:otherwise>
																									</c:choose></td>
																								<td><c:choose>
																										<c:when test="${student.standard eq null }">
																										N/A
																									</c:when>
																										<c:otherwise>
																										${student.standard }
																									</c:otherwise>
																									</c:choose></td>
																								<td><c:choose>
																										<c:when test="${student.school eq null }">
																										N/A
																									</c:when>
																										<c:otherwise>
																										${student.school }
																									</c:otherwise>
																									</c:choose></td>
																								<td><c:choose>
																										<c:when test="${student.city eq null }">
																										N/A
																									</c:when>
																										<c:otherwise>
																										${student.city }
																									</c:otherwise>
																									</c:choose></td>
																								<td>${student.points }</td>
																							</tr>
																						</c:otherwise>
																					</c:choose>
																				</c:if>
																				<c:if test="${empty SchoolStudent}">
																					<tr>
																						<td><c:choose>
																								<c:when test="${student.name eq null }">
																								${student.username }
																							</c:when>
																								<c:otherwise>
																								${student.name }
																							</c:otherwise>
																							</c:choose></td>
																						<td><c:choose>
																								<c:when test="${student.standard eq null }">
																								N/A
																							</c:when>
																								<c:otherwise>
																								${student.standard }
																							</c:otherwise>
																							</c:choose></td>
																						<td><c:choose>
																								<c:when test="${student.school eq null }">
																								N/A
																							</c:when>
																								<c:otherwise>
																								${student.school }
																							</c:otherwise>
																							</c:choose></td>
																						<td><c:choose>
																								<c:when test="${student.city eq null }">
																								N/A
																							</c:when>
																								<c:otherwise>
																								${student.city }
																							</c:otherwise>
																							</c:choose></td>
																						<td>${student.points }</td>
																					</tr>
																				</c:if>
																			</c:forEach>
																		</tbody>
																	</table>
																</div>
																<div class="d-sm-none d-block" style="width: 100%;">
																	<table class="table table-bordered no-footer display"
																		id="students" style="clear: none;">
																		<thead>
																			<tr>
																				<th id="name">Name</th>
																				<th>Grade</th>
																				<th id="points">Points</th>
																			</tr>
																		</thead>
																		<tbody>
																			<c:forEach items="${toppers}" var="student">
																				<c:if test="${not empty SchoolStudent}">
																					<c:choose>
																						<c:when
																							test="${SchoolStudent.username eq student.username }">
																							<tr class="bg-success text-white">
																								<th><c:choose>
																										<c:when test="${student.name eq null }">
																										${student.username }
																									</c:when>
																										<c:otherwise>
																										${student.name }
																									</c:otherwise>
																									</c:choose></th>

																								<th><c:choose>
																										<c:when test="${student.standard eq null }">
																										N/A
																									</c:when>
																										<c:otherwise>
																										${student.standard }
																									</c:otherwise>
																									</c:choose></th>

																								<th>${student.points }</th>
																							</tr>
																						</c:when>
																						<c:otherwise>
																							<tr>
																								<td><c:choose>
																										<c:when test="${student.name eq null }">
																										${student.username }
																									</c:when>
																										<c:otherwise>
																										${student.name }
																									</c:otherwise>
																									</c:choose></td>

																								<td><c:choose>
																										<c:when test="${student.school eq null }">
																										N/A
																									</c:when>
																										<c:otherwise>
																										${student.school }
																									</c:otherwise>
																									</c:choose></td>

																								<td>${student.points }</td>
																							</tr>
																						</c:otherwise>
																					</c:choose>
																				</c:if>
																				<c:if test="${empty SchoolStudent}">
																					<tr>
																						<td><c:choose>
																								<c:when test="${student.name eq null }">
																								${student.username }
																							</c:when>
																								<c:otherwise>
																								${student.name }
																							</c:otherwise>
																							</c:choose></td>

																						<td><c:choose>
																								<c:when test="${student.school eq null }">
																								N/A
																							</c:when>
																								<c:otherwise>
																								${student.school }
																							</c:otherwise>
																							</c:choose></td>

																						<td>${student.points }</td>
																					</tr>
																				</c:if>
																			</c:forEach>
																		</tbody>
																	</table>
																</div>
															</c:if>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-3"></div>
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
	<script>
		$('document').ready(function() {

		});
	</script>
</body>
</html>