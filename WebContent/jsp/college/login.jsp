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
    <title>Login | MySuperTalent</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no"
    />
    <meta name="description" content="ArchitectUI HTML Bootstrap 4 Dashboard Template">

    <!-- Disable tap highlight on IE -->
    <meta name="msapplication-tap-highlight" content="no">

<link href="<%=request.getContextPath() %>/assets/main.cba69814a806ecc7945a.css" rel="stylesheet"></head>

<body>
<div class="app-container app-theme-white body-tabs-shadow">
        <div class="app-container">
            <div class="h-100">
                <div class="h-100 no-gutters row">
                    <div class="d-none d-lg-block col-lg-4">
                        <div class="slider-light">
                            <div class="slick-slider">
                                <div>
                                    <div class="position-relative h-100 d-flex justify-content-center align-items-center bg-plum-plate" tabindex="-1">
                                        <div class="slide-img-bg" style="background-image: url('<%=request.getContextPath() %>/assets/images/originals/city.jpg');"></div>
                                        <div class="slider-content"><h3>MySuperBrain</h3>
                                            <p>You're one talented person. Keep doing what you're doing. You're hands down amazing!</p></div>
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
                    <div class="h-100 d-flex bg-white justify-content-center align-items-center col-md-12 col-lg-8">
                        <div class="mx-auto app-login-box col-sm-12 col-md-10 col-lg-9">
                            <!-- <div class="app-logo"></div> -->
                            <h4>Login</h4>
                            <h4 class="mb-0">
                                <span class="d-block">Welcome back,</span>
                                <span>Please sign in to your account.</span></h4>
                            <h6 class="mt-3">No account? <a href="<%=request.getContextPath() %>/college/register" class="text-primary">Sign up now</a></h6>
                            <div class="divider row"></div>
                            <div>
                                <form:form method="POST" action="../college/validateLogin"
												modelAttribute="user" autocomplete="off" class="">
                                    <div class="form-row">
                                        <div class="col-md-6">
                                            <div class="position-relative form-group"><label for="exampleEmail" class="">Email</label><input name="username" id="username" placeholder="Email/Username here..." type="text" class="form-control"></div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="position-relative form-group"><label for="examplePassword" class="">Password</label><input name="password" id="password" placeholder="Password here..." type="password"
                                                                                                                                                   class="form-control"></div>
                                        </div>
                                    </div>
                                    <div class="position-relative form-check">
                                    	<input name="check" id="exampleCheck" type="checkbox" class="form-check-input">
                                    	<label for="exampleCheck" class="form-check-label">Keep me logged in</label>
                                    	<button class="btn btn-info btn-lg pull-right" type="submit">Login</button>
                                    </div>
                                    <div class="divider row"></div>
                                    <div class="row">
                                    <div class="col-md-6">
                                    <div class="row">
                                    	
                                    	<h6>LOGIN WITH</h6>
                                    </div>
                                        <a class="btn btn-primary"><i class="far fa-facebook-official"></i>FACEBOOK</a>
                                        <a class="btn btn-danger"><i class="fa fa-google-plus-official"></i>GOOGLE</a>
                                    	</div>
                                    	<div class="col-md-6">
                                    		<h6>LOGIN WITH OTP</h6>
                                    		<div class="position-relative form-group"><input name="username" id="username" placeholder="Mobile number here..." type="text" class="form-control"></div>
                                    		<a class="btn btn-success">GET OTP</a>
                                    	</div>
                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>
<script type="text/javascript" src="<%=request.getContextPath() %>/assets/scripts/main.cba69814a806ecc7945a.js"></script>
</body>
</html>
