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
<title>Articles List | MySuperBrain</title>
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
	href="<%=request.getContextPath()%>/assets/summernote/summernote.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/assets/main.cba69814a806ecc7945a.css"
	rel="stylesheet">
<link rel="icon" href="<%=request.getContextPath()%>/img/favicon.ico"
	type="image/x-icon">
<link
	href="<%=request.getContextPath()%>/assets/bootstrap.min.css"
	rel="stylesheet">
<style>

.container {
    padding: 20px;
}

.img-blog {
    height: 170px;
    width: 100%;
    object-fit: cover;
}

.Technology {
    background-color: #eca726;
}
.Space {
    background-color: #414df0;
}
.History {
    background-color: #b005ff;
}

. Education {
    background-color: #27e727;
}

.bg-org {
    text-transform: uppercase;
    cursor: pointer;
    border-radius: 3px;
    color: white;
    font-weight: 800;
    font-size: 14px;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 3px 20px;
}

.bg-org:hover {
    background-color: #eec67c;
}

.bg-blue {
    text-transform: uppercase;
    cursor: pointer;
    border-radius: 3px;
    color: white;
    font-weight: 800;
    font-size: 14px;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 3px 20px;
}

.bg-blue:hover {
    background-color: #abb0f5;
}

.bg-vio {
    text-transform: uppercase;
    cursor: pointer;
    border-radius: 3px;
    color: white;
    font-weight: 800;
    font-size: 14px;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 3px 20px;
}

.bg-vio:hover {
    background-color: #ce89ee;
}

.bg-green {
    border-radius: 10%;
    color: white;
    font-size: 14px;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 1px 4px;
}

.bg-orgn {
    background-color: #eca726;
    border-radius: 10%;
    color: white;
    font-size: 14px;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 1px 4px;
}

.bg-blu {
    background-color: #414df0;
    border-radius: 10%;
    color: white;
    font-size: 14px;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 1px 4px;
}

.bg-violet {
    background-color: #b005ff;
    border-radius: 10%;
    color: white;
    font-size: 14px;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 1px 4px;
}

.text-muted {
    font-size: 14px;
}

.fs5 {
    line-height: 20px;
    font-size: 16px;
}

.items {
    font-size: 15px;
    background-color: black;
    color: white;
    margin: 3px 3px;
    padding: 4px 10px;
    text-decoration: none;
    border: 1px solid #ddd;

}

.items:hover {
    background-color: #fcf7f7;
    color: black;
    transition: background-color .8s;
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
				<div class="app-main__inner">
					<div class="app-page-title">
						<div class="page-title-wrapper">
							<div class="page-title-heading">
								<div class="page-title-icon">
									<i class="pe-7s-news-paper icon-gradient bg-mean-fruit"> </i>
								</div>
								<div>
									Blogs
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
										<div class="container">
									        <div class="row">
									            <div class="col-lg-8 order-lg-0 order-2">
									            	<c:if test="${not empty articles }">
									            		<c:forEach items="${articles }" var="article">
											                <div class="row">
											                    <div class="col-md-4 mb-4">
											                        <img class="img-blog"
											                            src="<%=request.getContextPath() %>/img/blog/${article.article_category }.jpeg"
											                            alt="">
											                    </div>
											                    <div class="col-md-8 mb-4">
											                        <div class="d-flex align-items-center">
											                            <span class="bg-org ${article.article_category }">${article.article_category }</span>
											                            <span class="text-muted ps-4">${article.date_created }</span>
											                        </div>
											                        <div>
											                            <p class="text-capitalize fs5 my-3 fw-bolder">
											                            	<a href="<%=request.getContextPath() %>/school/article/${article.article_id }"
											                            		style="color: #212529; text-decoration: none;">${article.title }</a>
											                            <p class="text-muted">${article.summary }</p>
											                        </div>
											                    </div>
											                </div>
											        	</c:forEach>
										        	</c:if>
									            </div>
									            <div class="col-lg-4 order-lg-1 mb-3">
									                <span class="fs-4 mb-2 fw-bold text-capitalize">catagories</span>
									                <div class="d-flex flex-column">
										            	<c:forEach items="${categories}" var="category">
										                    <div class="d-flex align-items-center justify-content-between border-bottom py-2">
										                        <a style="color: #212529; text-decoration: none;" 
										                        	href="<%=request.getContextPath()%>/school/articles/${category}/0">
										                        	<span>${category}</span></a>
										                        <!-- <span class="bg-green">340</span> -->
										                    </div>
										                    <!-- <div class="d-flex align-items-center justify-content-between border-bottom py-2">
										                        <span>javascript</span>
										                        <span class="bg-orgn">74</span>
										                    </div> -->
										           		</c:forEach>
									                </div>
									                <div class="d-flex flex-wrap  my-5">
									                	<c:forEach items="${articles }" var="article">
									                		<c:forTokens items="${article.tags }" delims="," var="mySplit">
															   <a class="items" data-bs-toggle="tooltip" 
									                			data-bs-placement="top" title="<c:out value="${mySplit}"/>" href="#">
									                				<c:out value="${mySplit}"/></a>
															</c:forTokens>
									                	</c:forEach>
									                </div>
									            </div>
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

	<!-- [if lte IE 8]> -->
	<script src="<%=request.getContextPath()%>/assets/js/excanvas.js"></script>
	<!-- [endif] -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>

	<script type="text/javascript">
		var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
		var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
		    return new bootstrap.Tooltip(tooltipTriggerEl)
		})
		
		$('document').ready(function() {
			$('[data-toggle=tooltip]').tooltip();
		});
	</script>
</body>
</html>