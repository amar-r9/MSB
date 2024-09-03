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
<title>${article.title } | Blog | My Super Talent</title>
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
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
<style>
li:before {
  padding-right: 5px;
  color: green;
}
.cat {
	outline-style: auto;
	color: #FFF;
	padding: 2px;
  	text-align: center;
}
.cat:nth-child(1) {
  background-color: #F9A725;
	border-radius: 50px;
}

.cat:nth-child(2) {
  background-color: #48a747;
	border-radius: 50px;
}

.cat:nth-child(3) {
  background-color: #f15b2e;
	border-radius: 50px;
}

.cat:nth-child(4) {
  background-color: #002a3d;
	border-radius: 50px;
}

.cat:nth-child(5) {
  background-color: #668221;
	border-radius: 50px;
}

.cat:nth-child(6) {
  background-color: #117399;
	border-radius: 50px;
}
.cat:nth-child(7) {
  background-color: #F37321;
	border-radius: 50px;
}

.cat:nth-child(8) {
  background-color: #1d225a;
	border-radius: 50px;
}

li:nth-child(9) {
  background-color: #a716b1;
	border-radius: 50px;
}



.rece:nth-child(1) {
  color: #F9A725;
}
.rece:nth-child(2) {
  color: #48a747;
}
.rece:nth-child(3) {
  color: #f15b2e;
}
.rece:nth-child(4) {
  color: #002a3d;
}
.rece:nth-child(5) {
  color: #668221;
}


</style>
</head>
<body style="font-family: var(--font-base);">
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<jsp:include page="/common/schoolheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/schoolmenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner">
					<%-- <div class="app-page-title">
						<div class="page-title-wrapper">
							<div class="page-title-heading">
								<div class="page-title-icon">
									<i class="pe-7s-news-paper icon-gradient bg-mean-fruit"> </i>
								</div>
								<div>
									${article.title }
									<!-- <div class="page-title-subheading">This is an example
										dashboard created using build-in elements and components.</div> -->
								</div>
							</div>
						</div>
					</div> --%>
					<div class="tab-content">
						<div class="tab-pane tabs-animation fade show active"
							id="tab-content-0" role="tabpanel">
							<div class="row">
								<div class="col-md-9 text-justify">
									<div class="main-card mb-3 card">
										<div class="card-body" style="padding: 0px;">
											<img src="<%=request.getContextPath() %>/img/premium/c3.jpg" 
												style="width: 100%; max-height: 320px;"/>
											<%-- <c:choose> --%>
												<%-- <c:when test="${isPremium eq true }"> --%>           
				                                <div class="row" style="padding: 40px;">
	                      							
					                                <div class="row col-md-12" style="color: #6b6b6b; padding: 0px;">
					                                	<div class="col-md-6 col-6">
				                                			<i class="fa fa-calendar"></i>&nbsp; ${article.date_created } | <i class="fa fa-eye"></i>&nbsp;${article.views }
				                                		</div>
				                                		<div class="col-md-6 col-6">
				                                			<div class="pull-right"><i class="fa fa-user"></i>&nbsp; 
				                                			<small>
				                                				<a href="<%=request.getContextPath() %>/school/profile?usr=${article.user_saved}" target="_blank">${blogUser }</a>
				                                			</small>
				                                			</div>
				                                		</div>
				                                	</div>
					                                <h2 class="row col-md-12" style="font-weight: 600; color: #6b6b6b;">${article.title }</h2>
		                      						
					                                <div class="row col-md-12" style="color: #e05619;">
				                                		<div class="col-md-6 col-6">
				                                			<a href="#" class="btn btn-sm btn-warning btn-pill">${article.article_category }</a>
	                      								</div>
	                      								<div class="col-md-6 col-6">
	                      									<ul class="pull-right" style="list-style: none;"><li class="nav-link">Share: 
																<a class="fb-icon" href="#"><img src="<%=request.getContextPath() %>/img/social/facebook.png" 
																	style="height: 25px;"/></a>
																<a class="tw-icon" href="#"><img src="<%=request.getContextPath() %>/img/social/twitter.png" 
																	style="height: 25px;"/></a>
																<div class="d-none d-lg-block">
																<a href="https://web.whatsapp.com/send?text=https://mysuperbrain.com/"
																	target="_blank"><img src="<%=request.getContextPath() %>/img/social/whatsapp.png" 
																	style="height: 25px;"/></a>
																</div>
																<div class="d-block d-sm-none">
																<a href="https://api.whatsapp.com/send?text=https://mysuperbrain.com/"
																	target="_blank"><img src="<%=request.getContextPath() %>/img/social/whatsapp.png" 
																	style="height: 25px;"/></a>
																</div>
																
																	</li></ul>
	                      								</div>
	                      							</div>
				                                	
		                      						<div class="row col-md-12 post-content text-justify" style="font-size: 16px;">
						                              ${article.content }
						                            </div>
						                            <br>
					                       		</div>    
					                            <div class="d-none d-lg-block">
						                          	<div class="row">
							                          	<div class="col-md-10 pull-left">
						                       		 		<c:if test="${not empty previousArticle}">
						                           				<a href="<%=request.getContextPath()%>/school/article/${previousArticle}" class="btn btn-warning btn-sm"><i class="fa fa-chevron-left"></i>&nbsp;&nbsp;<small>Previous</small></a>
						                       				</c:if>
						                       			</div>
							                                                        
							                           	<div class="col-md-2 pull-right">
								                           	<c:if test="${not empty nextArticle}">
								                           		<a href="<%=request.getContextPath()%>/school/article/${nextArticle}" class="btn btn-alternate btn-sm"><small>Next</small>&nbsp;&nbsp;<i class="fa fa-chevron-right"></i></a> 
								                          	</c:if>
							                          	</div>
							                      	</div>
						                       	</div>
						                       	
						                       	<div class="d-block d-sm-none">
						                          	<div class="row">
							                          	<div class="pull-left">
						                       		 		<c:if test="${not empty previousArticle}">
						                           				<a href="<%=request.getContextPath()%>/school/article/${previousArticle}" class="btn btn-warning btn-sm"><i class="fa fa-chevron-left"></i>&nbsp;&nbsp;<small>Previous</small></a>
						                       				</c:if>
						                       			</div>
							                                                        
							                           	<div class="pull-right">
								                           	<c:if test="${not empty nextArticle}">
								                           		<a href="<%=request.getContextPath()%>/school/article/${nextArticle}" class="btn btn-alternate btn-sm"><small>Next</small>&nbsp;&nbsp;<i class="fa fa-chevron-right"></i></a> 
								                          	</c:if>
							                          	</div>
						                          	</div>
						                       	</div>
						                       	<%-- </c:when> --%>
						                       	<%-- <c:otherwise>
													<div class="text-center">
														<h4>You are not a premium user.</h4>
														<h5>Click below to get premium account.</h5>
														<a id="payment" class="im-checkout-btn text-center"
															href="https://www.instamojo.com/mysuperbrain/premium-account-quarterly/?data_amount=500&data_readonly=data_amount&data_name=${SchoolStudent.username}&data_readonly=data_name&data_email=${SchoolStudent.mail}&data_phone=${SchoolStudent.phone}"
															rel="im-checkout" data-text="MAKE PAYMENT" data-css-style="color:#ffffff; background:#1273de; width:300px; border-radius:4px"   data-layout="vertical"></a>
														<script src="https://js.instamojo.com/v1/button.js"></script>
														<a href="https://www.instamojo.com/mysuperbrain/premium-account-quarterly/" rel="im-checkout" data-text="MAKE PAYMENT" data-css-style="color:#ffffff; background:#1273de; width:300px; border-radius:4px"   data-layout="vertical"></a>
														<script src="https://js.instamojo.com/v1/button.js"></script>
													</div>
												</c:otherwise>
											</c:choose> --%>                       
                        			</div></div></div>
								 	<div class="col-md-3">
										<a href="<%=request.getContextPath() %>/school/user/write-article"
											class="btn btn-warning btn-block">WRITE AN ARTICLE</a>
										<br>
								 		<div class="main-card mb-3 card">
											<div class="card-body" style="padding: 25px;">
					                            <h4 class="sm" style="color: #6b6b6b;">Categories</h4>
					                            <ul style="font-size: 15px; list-style: none; padding: initial;">
						                            <c:forEach items="${categories}" var="category">
						                              <li class="cat" style="font-weight: 400; line-height: 2em;">
						                              	<span onclick="window.location='<%=request.getContextPath()%>/school/articles/${category}/0'">${category}</span></li>
						                            </c:forEach>                               
				                            	</ul>
				                       		</div>
				                       	</div>
				                       	<div class="main-card mb-3 card">
											<div class="card-body">
						                        <div class="widget widget_recent_post">
						                            <h4 class="sm" style="color: #6b6b6b;">Recent posts</h4>
						                            <ul style="font-size: 15px; list-style: none; padding: initial;">
						                          		<c:forEach items="${recentArticles}" var="article">
							                                <li class="rece" style="font-weight: 500; line-height: 2em;">
							                                    <span onclick="window.location='<%=request.getContextPath()%>/school/article/${article.article_id}'">${article.title}</span>
							                                </li>
						                               </c:forEach>
						                            </ul>
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
		$('document').ready(function(){
			$('[data-toggle=tooltip]').tooltip();
			$('.fb-icon').click(function(){
				
				 window.open('http://www.facebook.com/sharer.php?u=https://mysuperbrain.com/school/article/${article.article_id}','MySuperBrain Blog Article', 
				  'width=626,height=436');    
				return false;
			});
			$('.tw-icon').click(function(){
				window.open(
						  'https://twitter.com/share?url=https://mysuperbrain.com/school/article/${article.article_id}','MySuperBrain Blog Article', 
				  'width=626,height=436');  
							return false;
						
			});
		});
	</script>
</body>
</html>