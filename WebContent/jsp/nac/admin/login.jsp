<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Admin Login | CodingStar | MySuperTalent</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no"
    />
    <meta name="description" content="Admin Dashboard For Milo HomeGrounds">

    <!-- Disable tap highlight on IE -->
    <meta name="msapplication-tap-highlight" content="no">

<link href="<%=request.getContextPath()%>/assets/main.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/assets/main.cba69814a806ecc7945a.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
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
									Admin Login
									
								</div>
							</div>
						</div>
					</div>
					<div class="tab-content">
						<div class="tab-pane tabs-animation fade show active"
							id="tab-content-0" role="tabpanel">
							<div class="main-card mb-3 card">
								<div class="card-body">
									<div class="col-md-12">
			                            <!-- <div class="app-logo"></div> -->
			                            <h4>Login</h4>
			                            <h4>Welcome back, Please sign in to your account.</h4>
			                            <%-- <h6 class="mt-3">No account? <a href="<%=request.getContextPath() %>/srichool/register" class="text-primary">Sign up now</a></h6> --%>
			                            <div class="divider row"></div>
			                            <c:if test="${param.invalidsession eq true }">
											<div class="row alert alert-danger"> Session Expired!/Login Required. Please login below</div>
										</c:if>
										<c:if test="${AuthError != null}">
											<div class="alert alert-warning"> ${AuthError }</div>
										</c:if>	
			                            <div>
			                                <form:form method="POST" action="validateAdminLogin"
															modelAttribute="admin" autocomplete="off" class="">
			                                    <div class="form-row">
			                                        <div class="col-md-6">
			                                            <div class="position-relative form-group"><label for="exampleEmail" class="">Username</label><input name="username" id="username" placeholder="Username here..." type="text" class="form-control"></div>
			                                        </div>
			                                        <div class="col-md-6">
			                                            <div class="position-relative form-group"><label for="examplePassword" class="">Password</label><input name="password" id="password" placeholder="Password here..." type="password"
			                                                                                                                                                   class="form-control"></div>
			                                        </div>
			                                    </div>
			                                    <input type="hidden" name="next" value="${param.next }">
			                                    <div class="position-relative form-check"><input name="check" id="exampleCheck" type="checkbox" class="form-check-input"><label for="exampleCheck" class="form-check-label">Keep me logged in</label></div>
			                                    <div class="divider row"></div>
			                                    <div class="d-flex align-items-center">
			                                        <div class="ml-auto">
			                                        	<%-- <a href="<%=request.getContextPath() %>/narayana/forgot" class="btn-lg btn btn-link">Recover Password</a> --%>
			                                            <button class="btn btn-primary btn-lg" type="submit">LOGIN</button>
			                                        </div>
			                                    </div>
			                                </form:form>
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
	<script>
		$('document').ready(function() {
			//$('#home').addClass('mm-active');
		});
	</script>
</body>
</html>