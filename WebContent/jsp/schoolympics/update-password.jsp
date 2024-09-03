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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Update Password | Schoolympics | MySuperBrain</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
	content="ArchitectUI HTML Bootstrap 4 Dashboard Template">

<!-- Disable tap highlight on IE -->
<meta name="msapplication-tap-highlight" content="no">

<link
	href="<%=request.getContextPath()%>/assets/main.cba69814a806ecc7945a.css"
	rel="stylesheet">
</head>

<body>
	<div class="app-container app-theme-white body-tabs-shadow">
		<div class="app-container">
			<div class="h-100">
				<div class="h-100 no-gutters row">
					<div class="d-none d-lg-block col-lg-4">
						<div class="slider-light">
							<div class="slick-slider">
								<div>
									<div
										class="position-relative h-100 d-flex justify-content-center align-items-center bg-plum-plate"
										tabindex="-1">
										<div class="slide-img-bg"
											style="background-image: url('<%=request.getContextPath()%>/assets/images/originals/city.jpg');"></div>
										<div class="slider-content">
											<h3>MySuperBrain</h3>
											<p>You're one talented person. Keep doing what you're
												doing. You're hands down amazing!</p>
										</div>
									</div>
								</div>
								<%-- <div>
                                    <div class="position-relative h-100 d-flex justify-content-center align-items-center bg-premium-dark" tabindex="-1">
                                        <div class="slide-img-bg" style="background-image: url('<%=request.getContextPath() %>assets/images/originals/citynights.jpg');"></div>
                                        <div class="slider-content"><h3>Scalable, Modular, Consistent</h3>
                                            <p>Easily exclude the components you don't require. Lightweight, consistent Bootstrap based styles across all elements and components</p></div>
                                    </div>
                                </div> --%>
								<%-- <div>
                                    <div class="position-relative h-100 d-flex justify-content-center align-items-center bg-sunny-morning" tabindex="-1">
                                        <div class="slide-img-bg" style="background-image: url('<%=request.getContextPath() %>assets/images/originals/citydark.jpg');"></div>
                                        <div class="slider-content"><h3>Complex, but lightweight</h3>
                                            <p>We've included a lot of components that cover almost all use cases for any type of application.</p></div>
                                    </div>
                                </div> --%>
							</div>
						</div>
					</div>
					<div
						class="h-100 d-flex bg-white justify-content-center align-items-center col-md-12 col-lg-8">
						<div class="mx-auto app-login-box col-sm-12 col-md-10 col-lg-9">
							<!-- <div class="app-logo"></div> -->
							
							<div class="divider row"></div>
							<div>
								<c:if test="${success eq false}">
									<div class="alert alert-danger">
										Technical error, Try again later.
									</div>
								</c:if>
								<c:if test="${status eq false}">
									<div class="alert alert-warning">
										Password and Confirm Password did not match.
									</div>
								</c:if>
								<c:if test="${status eq null}">
									<div class="alert alert-alternate">
										Please Enter Password and Confirm Password.
									</div>
								</c:if>
								<div class="col-md-6">
									<h6>CREATE PASSWORD</h6>${phone }
									<form action="<%=request.getContextPath() %>/schoolympics/updatePassword"
										method="post" id="otp-verify">
										<input type="hidden" name="phone" id="phone" value="${phone }" />
										<div class="position-relative form-group">
											<label for="exampleEmail" class="">Password</label>
											<input name="password" id="password" placeholder="Enter Password ..." type="text" class="form-control">
										</div>
										<div class="position-relative form-group">
											<label for="exampleEmail" class="">Confirm Password</label>
											<input name="cpassword" id="cpassword" placeholder="Confirm Password ..." type="text" class="form-control">
										</div>
										<button type="submit" id="" class="btn btn-info">REGISTER</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/assets/scripts/main.cba69814a806ecc7945a.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/assets/scripts/main.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/assets/scripts/main.cba69814a806ecc7945a.js"></script>
	<!-- jQuery library -->
	<script type="text/javascript" src="<%=request.getContextPath() %>/assets/scripts/main.js"></script>
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
    
	<script type="text/javascript">
		$('document').ready(function() {
			
		});
	</script>
</body>
</html>
