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
<title>Blog | My Super Talent</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
	content="Blog for Future Entrepreneurship course.">
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
	href="<%=request.getContextPath()%>/assets/summernote/summernote.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/assets/main.cba69814a806ecc7945a.css"
	rel="stylesheet">
</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<jsp:include page="/common/eheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/emenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner">
					<div class="app-page-title">
						<div class="page-title-wrapper">
							<div class="page-title-heading">
								<div class="page-title-icon">
									<i class="pe-7s-news-paper icon-gradient bg-mean-fruit"> </i>
								</div>
								<div>
									Blog
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
											<c:choose>
												<c:when test="${isPremium eq true }">
													<c:if test="${not empty articles }">
														<table class="table" id="blog">
															<thead style="display: none;">
																<tr>
																	<th></th>
																</tr>
															</thead>
															<tbody>
																<c:forEach items="${articles}" var="article">
																	<tr>
																		<td>
																			<!-- POST BODY -->
																			<div class="mb-3 card card-body">
																				<div class="row">
																					<div class="col-md-8">
																						<h3 class="md">
																							<a
																								href="<%=request.getContextPath()%>/entrepreneur/user/article/${article.article_id}">${article.title}</a>
																						</h3>
																					</div>
																					<div class="col-md-4 pull-right">
																						by <a href="#">${article.user_saved}</a> on
																						${article.date_created}
																					</div>
																				</div>
																				<div class="space-10"></div>
																				<div class="text-justify">
																					<p align="justify">${article.summary}</p>
																				</div>
																				<div class="pull-right">
																					<a class="btn btn-success"
																						href="<%=request.getContextPath()%>/entrepreneur/user/article/${article.article_id}">
																						<i class="fa fa-play-circle-o"></i> Read More
																					</a>
																				</div>
																			</div> <!-- END / POST BODY -->
																		</td>
																	</tr>
																</c:forEach>
															</tbody>
														</table>
													</c:if>
													<c:if test="${empty articles }">
														<h3>There are no articles yet.</h3>
													</c:if>
												</c:when>
												<c:otherwise>
													<div class="text-center">
														<h4>You have not registered for Entrepreneurship.</h4>
														<h5>Click below to Register.</h5>
														<%-- <a id="payment" class="im-checkout-btn text-center"
															href="https://www.instamojo.com/mysuperbrain/premium-account-quarterly/?data_amount=500&data_readonly=data_amount&data_name=${SchoolStudent.username}&data_readonly=data_name&data_email=${SchoolStudent.mail}&data_phone=${SchoolStudent.phone}"
															rel="im-checkout" data-text="MAKE PAYMENT" data-css-style="color:#ffffff; background:#1273de; width:300px; border-radius:4px"   data-layout="vertical"></a>
														<script src="https://js.instamojo.com/v1/button.js"></script> --%>
														<a href="<%=request.getContextPath()%>/entrepreneur/gift-register" class="btn-wide mb-2 mr-2 btn btn-square btn-danger btn-lg btn-block">REGISTER</a>
													</div>
												</c:otherwise>
											</c:choose>
										</div>
										<div class="col-md-3 text-center">
											<h4>TESTS</h4>
											<div class="divider"></div>
											<a href="<%=request.getContextPath() %>/entrepreneur/user/taketest/659">Quiz 1</a>
										</div>
										<!-- /.col -->
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

	<!-- [if lte IE 8]> -->
	<script src="<%=request.getContextPath()%>/assets/js/excanvas.js"></script>
	<!-- [endif] -->
	<script
		src="<%=request.getContextPath()%>/assets/summernote/summernote.js"></script>

	<script type="text/javascript">
		$('document').ready(function() {
			$('[data-toggle=tooltip]').tooltip();
		});
	</script>
</body>
</html>