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
    <title>Login | NAC | MySuperBrain</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no"
    />
    <meta name="description" content="Login to Milo Home Ground">
	<meta name="google-signin-client_id" content="638005785461-13eu5dklbdtao7khd0ogudd0mbc5bfkj.apps.googleusercontent.com">
    <!-- Disable tap highlight on IE -->
    <meta name="msapplication-tap-highlight" content="no">
<script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>
<script src="https://apis.google.com/js/api.js?onload=renderButton" async defer></script>
<link href="<%=request.getContextPath() %>/assets/main.cba69814a806ecc7945a.css" rel="stylesheet">
</head>

<body>
<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<jsp:include page="/common/nacheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/nacmenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner" style="padding: 0px;">
					<div class="tab-content">
						<div class="tab-pane tabs-animation fade show active"
							id="tab-content-0" role="tabpanel">
							<div class="main-card mb-3 card">
								<div class="card-body" style="padding: 0px;">
            <div class="h-100">
                <div class="h-100 no-gutters row">
                    <div class="d-none d-lg-block col-lg-6">
                        <div class="slider-light">
                            <div class="slick-slider">
                                <div>
                                    <div class="position-relative h-100 d-flex justify-content-center align-items-center bg-plum-plate" tabindex="-1">
                                        <div class="slide-img-bg" style="background-image: url('<%=request.getContextPath() %>/img/kids.png'); width: -webkit-fill-available;"></div>
                                        <div class="slider-content"><h3>WELCOME BACK !</h3>
                                        <p>You’ve decided to get active and energetic. You are hands down</p>
                                        <h6>AWESOME !</h6>
                                       	</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="h-100 d-flex bg-white justify-content-center align-items-center col-md-12 col-lg-6">
                        <div class="mx-auto app-login-box col-sm-12 col-md-10 col-lg-9">
                            <!-- <div class="app-logo"></div> -->
                            <h4>Login</h4>
                            <h4 class="mb-0">
                                <span class="d-block">Welcome back,</span>
                                <span>Please sign in to your account.</span></h4>
                            <h6 class="mt-3">No account? <a href="<%=request.getContextPath() %>/nac/register" class="text-primary">Sign up now</a></h6>
                            <div class="divider row"></div>
                            <!-- <div class="fb-login-button" data-size="large" data-button-type="continue_with"
                            	data-layout="default" data-auto-logout-link="false" data-use-continue-as="false" data-width=""></div> -->
                          	<c:if test="${registeredalready eq true }">
                          		<p class="alert alert-danger">Email is already registered, try logging in with your username and password.</p>
                          	</c:if>
                          	<div class="row">
                          		<div class="col-md-6">
                           			<!-- <div class="fb-login-button" data-size="large" data-button-type="login_with"
                           			data-layout="default" data-auto-logout-link="false" data-use-continue-as="false" data-width=""></div> -->
                            	</div>
                            	<div class="col-md-6">
                            		<div class="g-signin2" data-onsuccess="onSignIn" style="width: 100%;"></div>
                            	</div>
                            </div>
                            <div class="divider row"></div>
                            <!-- <a href="#" onclick="fb_login();" class="btn btn-primary btn-lg"><i class="fa fa-fb"></i>&nbsp;&nbsp;|&nbsp;&nbsp;LOGIN WITH FACEBOOK</a>
								<p>&nbsp;</p>
								<a href="#" onclick="google_login();" class="btn btn-google-plus btn-lg"><i class="fa fa-google"></i>&nbsp;&nbsp;|&nbsp;&nbsp;LOGIN WITH GOOGLE +</a> -->
                            
                            <div>
                                <form:form method="POST" action="../nac/validateLogin"
												modelAttribute="user" autocomplete="off" class="">
                                    <div class="form-row">
                                        <div class="col-md-6">
                                            <div class="position-relative form-group"><label for="exampleEmail" class="">Username/Mobile</label><input name="username" id="username" placeholder="Username here..." type="text" class="form-control"></div>
                                        </div>
                                        <input type="hidden" name="next" value="${param.next }">
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
                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div></div></div></div></div></div>
			<jsp:include page="/common/footer.jsp"></jsp:include>
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
	
	<script>
		
		function signOut() {
	    	var auth2 = gapi.auth2.getAuthInstance();
	    	auth2.signOut().then(function () {
	      		console.log('User signed out.');
	    	});
	 	}

  /* function statusChangeCallback(response) {  // Called with the results from FB.getLoginStatus().
    console.log('statusChangeCallback');
    console.log(response);                   // The current login status of the person.
    if (response.status === 'connected') {   // Logged into your webpage and Facebook.
      testAPI();  
    } else {                                 // Not logged into your webpage or we are unable to tell.
      document.getElementById('status').innerHTML = 'Please log ' +
        'into this webpage.';
    }
  } */


  /* function checkLoginState() {               // Called when a person is finished with the Login Button.
    FB.getLoginStatus(function(response) {   // See the onlogin handler
      statusChangeCallback(response);
    });
  } */


  /* window.fbAsyncInit = function() {
    FB.init({
      appId      : '364034474997935',
      cookie     : true,                     // Enable cookies to allow the server to access the session.
      xfbml      : true,                     // Parse social plugins on this webpage.
      version    : 'v2.8'           // Use this Graph API version for this call.
    });


    FB.getLoginStatus(function(response) {   // Called after the JS SDK has been initialized.
      statusChangeCallback(response);        // Returns the login status.
    });
  }; */
 
 /*  function testAPI() {                      // Testing Graph API after login.  See statusChangeCallback() for when this call is made.
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me', function(response) {
      console.log('Successful login for: ' + response.name);
      document.getElementById('status').innerHTML =
        'Thanks for logging in, ' + response.name + '!';
    });
  } */

</script>


  <script>
    /* function onSuccess(googleUser) {
      console.log('Logged in as: ' + googleUser.getBasicProfile().getName());
    }
    function onFailure(error) {
      console.log(error);
    }
    function renderButton() {
      gapi.signin2.render('my-signin2', {
        'scope': 'profile email',
        'width': 240,
        'height': 50,
        'longtitle': true,
        'theme': 'dark',
        'onsuccess': onSuccess,
        'onfailure': onFailure
      });
    } */
  </script>

  <!-- <script src="https://apis.google.com/js/platform.js" async defer></script> -->

<!-- Load the JS SDK asynchronously -->
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js"></script>
<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.21.0/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="https://www.gstatic.com/firebasejs/7.21.0/firebase-analytics.js"></script>

<script>
  // Your web app's Firebase configuration
  // For Firebase JS SDK v7.20.0 and later, measurementId is optional
  var firebaseConfig = {
    apiKey: "AIzaSyApjbf6RNk8RbEzSD7tK_aOsbXtzgrmUnw",
    authDomain: "mysupertalent.firebaseapp.com",
    databaseURL: "http://mysupertalent.firebaseio.com",
    projectId: "mysupertalent",
    storageBucket: "mysupertalent.appspot.com",
    messagingSenderId: "638005785461",
    appId: "1:638005785461:web:798c15ab1febdd4eac993c",
    measurementId: "G-2G14B2XNN5"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();
	  function onSignIn(googleUser) {
		  var profile = googleUser.getBasicProfile();
		  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
		  console.log('Name: ' + profile.getName());
		  console.log('Image URL: ' + profile.getImageUrl());
		  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
	  
	  
	  
	  $.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/codingstar/validateGoogleLogin",
			//data : formData,
			data : {"name":profile.getName(), "username":profile.getEmail(), "mail":profile.getEmail()},
			success: function(data){
				window.location.href = "<%=request.getContextPath() %>/nac";
				//call is successfully completed and we got result in data
			  },
			  error:function (xhr, ajaxOptions, thrownError){
			                  //some errror, some show err msg to user and log the error  
			                  alert(xhr.responseText);

			                }    
		});
	  signOut();
	  
	}
  
</script>
</body>
</html>
