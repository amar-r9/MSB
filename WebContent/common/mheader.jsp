<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="row">
	<div class="col-md-6"></div>
	<div class="col-md-6 alert alert-info"
		style="padding-top: 20px; padding-bottom: 0px; background-color: #3f6ad8; color: #FFF !important; margin-bottom: 0; border-bottom-left-radius: 50%;">
		<div class="col-md-12">
			<h4>&nbsp;</h4>
			<ul class="header-menu nav pull-right">
				<li class="nav-item"><a class="nav-link"
					href="<%=request.getContextPath() %>/milo/termsandconditions" style="color: #FFF;">Terms & Conditions</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<%=request.getContextPath() %>/milo/contactus" style="color: #FFF;">Contact Us</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<%=request.getContextPath() %>/milo/faq" style="color: #FFF;">FAQ</a></li>
			</ul>
		</div>
	</div>
</div>


<style>
.fixed-header .app-main {
	padding-top: 0px;
}
.bg-grow-earl {
	background-color: rgb(6 160 76) !important;
}
.app-header.header-text-light .app-header-left>.nav>li>.nav-link {
	color: #FFF;
}
li:hover, li:focus {
	color: BLUE !important;
}
.dropdown-mega-menu {
	width: auto !important;
}
.scroll-area-xs {
	height: auto;
}
</style>
<div class="app-header header-shadow bg-grow-earl header-text-light" style="height: 60px;">
	<div class="app-header__logo" style="padding-left: 20px !important; background-color: #06a04c;">
		<!-- <div class="logo-src"></div> -->
		<a href="<%=request.getContextPath() %>/milo">
			<img src="<%=request.getContextPath() %>/img/milo/image002.jpg" style="height: 60px;"/></a>
		<!-- <h2 style="font-weight: 600; font-family: Brush Script MT; color: #4471f1;">MySuperTalent</h2> -->

		<div class="header__pane ml-auto">
			<div class="d-block d-lg-none">
				<button type="button"
					class="hamburger close-sidebar-btn hamburger--elastic"
					data-class="closed-sidebar">
					<span class="hamburger-box"> <span class="hamburger-inner"></span>
					</span>
				</button>
			</div>
		</div>
	</div>
	<div class="app-header__mobile-menu">
		<div>
			<button type="button"
				class="hamburger hamburger--elastic mobile-toggle-nav">
				<span class="hamburger-box"> <span class="hamburger-inner"></span>
				</span>
			</button>
		</div>
	</div>
	<div class="app-header__menu">
		<span>
			<c:if test="${empty SchoolStudent}">
				<a href="<%=request.getContextPath()%>/milo/login" class="btn btn-warning">
					<!-- <i class="fa fa-key fa-w-16 fa-2x" style="line-height: 1.2em;"></i> -->
					LOGIN
				</a></c:if>
			<c:if test="${not empty SchoolStudent}">
				<button type="button"
					class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
					<span class="btn-icon-wrapper"> <i
						class="fa fa-ellipsis-v fa-w-6"></i>
					</span>
				</button>
			</c:if>
		</span>
	</div>
	<div class="app-header__content">
		<div class="app-header-left" style="color: #FFF;">
			<ul class="header-menu nav" style="padding-left: 100px; font-size: 1.0rem;">
				<%-- <li><a href="<%=request.getContextPath() %>/milo">
					<img src="<%=request.getContextPath() %>/img/milo/logo.jpeg"
					style="height: 60px;"/></a></li> --%>
				<%-- <li class="nav-item"><a href="<%=request.getContextPath()%>/milo"
					class="nav-link" style="font-weight: 500;">HOME
				</a></li> --%>
				
				
				
				<!-- <li class="nav-item"><a href="#"
					class="nav-link" style="font-weight: 500;">JOIN THE LIVE
				</a></li> -->
				<!-- <li class="btn-group nav-item"><a href="#"
					class="nav-link">
						Schedule 
				</a></li> -->
				<%-- <li class="nav-item"><a href="<%=request.getContextPath()%>/milo/jointhelive"
					class="nav-link">
						SESSIONS
				</a></li> --%>
				
				<!-- <li class="nav-item"><a href="#" class="nav-link">
						ABOUT HOMEGROUND
				</a></li> -->
				
				<li class="nav-item">
                    <a class="nav-link" data-toggle="dropdown" aria-expanded="false">
                        ABOUT HOMEGROUND
                        <i class="fa fa-angle-down ml-2 opacity-5"></i>
                    </a>
                    <div tabindex="-1" role="menu" aria-hidden="true" class="rm-pointers dropdown-menu" style="">
                        <div class="scroll-area-xs">
                            <div class="scrollbar-container ps">
                                <a href="#" class="dropdown-item" id="missionstatement">Mission Statement</a>
                                <a href="<%=request.getContextPath() %>/milo/register" class="dropdown-item" id="joinus">Join Us</a>
                                <a href="#" class="dropdown-item" id="seetutorial">See Tutorial</a>
                                <a href="#" id="testimonials" class="dropdown-item">Testimonials</a>
                                <a href="#" class="dropdown-item" id="milomodule">MILO Module</a>
                                <a href="#" class="dropdown-item" id="meetyourtrainers">Meet Your Trainers</a>
                                
                            </div>  
                        </div>
                    </div>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" data-toggle="dropdown" aria-expanded="false">
                        MILO & AFI
                        <i class="fa fa-angle-down ml-2 opacity-5"></i>
                    </a>
                    <div tabindex="-1" role="menu" aria-hidden="true" class="rm-pointers dropdown-menu" style="">
                        <div class="scroll-area-xs">
                            <div class="scrollbar-container ps">
                                <a href="#" class="dropdown-item">MILO Story</a>
                                <a href="<%=request.getContextPath() %>/milo/nourishing" class="dropdown-item">Nutrient Story</a>
                                <a href="#" class="dropdown-item">AFI</a>
                                <a href="<%=request.getContextPath() %>/milo/nidjam" class="dropdown-item">Nidjam</a>

                            </div>  
                        </div>
                    </div>
                </li>
	            
				<li class="dropdown nav-item"><a href="<%=request.getContextPath()%>/milo/studenthof"
					class="nav-link">LEADER BOARD
				</a></li>
				<%-- <li><a class="mb-2 mr-2 btn-icon-vertical btn btn-success btn-lg btn-block"
						href="<%=request.getContextPath()%>/milo/studenthof"
						style="background-color: #06a04c; border: none; padding: 0px; padding-top: 2px;">
					<small style="font-size: 10px;">MILO CHAMP SQUAD</small><br>
					<span style="font-size: 16px;">LEADERBOARD</span></a></li> --%>
				<c:if test="${empty SchoolStudent}">
					<li style="padding-left: 50px; padding-top: 2px;">
						<a href="<%=request.getContextPath()%>/milo/login" class="btn btn-light btn-wide"
							style="color: #06a04c; vertical-align: sub;">
							<!-- <i class="fa fa-key fa-w-16 fa-2x" style="line-height: 1.2em;"></i> -->
							LOG IN / REGISTER
						</a></li>&nbsp;
					<%-- <li>
					<a href="<%=request.getContextPath()%>/milo/register" class="btn btn-light btn-wide"
						style="color: #06a04c; vertical-align: sub;">
						<!-- <i class="fa fa-key fa-w-16 fa-2x" style="line-height: 1.2em;"></i> -->
						REGISTER
					</a></li> --%>
				</c:if>
				<li class="nav-item"><span class="nav-link">
					<a href="https://www.facebook.com/NestleMILOIndia/"><img src="https://img.icons8.com/color/2x/facebook.png" 
						style="height: 25px;"/></a>
					<a href="https://twitter.com/NestleMILOIndia?s=08"><img src="https://img.icons8.com/color/2x/twitter-squared.png" 
						style="height: 25px;"/></a>
					<a href="https://www.instagram.com/nestlemiloindia/?igshid=6ubkrgbpnw10"><img src="https://img.icons8.com/color/2x/instagram-new.png" 
						style="height: 25px;"/></a></span></li>
					<!-- <li style="padding-left: 20px; padding-top: 10px;">
						<a href="#" class="btn btn-primary btn-wide"
							style="vertical-align: sub;">
							<i class="fa fa-key fa-w-16 fa-2x" style="line-height: 1.2em;"></i>
							BUY NOW
						</a></li> -->
					
			</ul>
		</div>
		<div class="app-header-right">
			<c:if test="${not empty SchoolStudent}">
				<div class="header-dots">
					<div class="dropdown">
						<button type="button" data-toggle="dropdown"
							class="mr-2 btn btn-pill btn-info">
							<span id="milo-points">
								<%-- ${SchoolStudent.points } --%>
							</span>
						</button>
						<!-- <div tabindex="-1" role="menu" aria-hidden="true"
							class="rm-pointers dropdown-menu dropdown-menu-right">
						</div> -->
					</div>
				</div>
			</c:if>
			<c:if test="${not empty SchoolStudent}">
				<div class="header-btn-lg pr-0">
					<div class="widget-content p-0">
						<div class="widget-content-wrapper">
							<div class="widget-content-left">
								<div class="btn-group">
									<a data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false" class="p-0 btn"> <img width="42" style="height: -webkit-fill-available;"
										class="rounded-circle"
										src="<%=request.getContextPath()%>/resources/DisplaySchoolUserProfileImage"
										alt=""> <i class="fa fa-angle-down ml-2 opacity-8"></i>
									</a>
									<div tabindex="-1" role="menu" aria-hidden="true"
										class="rm-pointers dropdown-menu-lg dropdown-menu dropdown-menu-right"
										x-placement="bottom-end"
										style="position: absolute; transform: translate3d(-297px, 63px, 0px); top: 0px; left: 0px; will-change: transform;">
										<div class="dropdown-menu-header">
											<div class="dropdown-menu-header-inner bg-info">
												<div class="menu-header-image opacity-2"
													style="background-image: url('<%=request.getContextPath()%>/assets/images/dropdown-header/city3.jpg');"></div>
												<div class="menu-header-content text-left">
													<div class="widget-content p-0">
														<div class="widget-content-wrapper">
															<div class="widget-content-left mr-3">
																<img width="42" class="rounded-circle"
																	src="<%=request.getContextPath()%>/resources/DisplaySchoolUserProfileImage"
																	alt="">
															</div>
															<div class="widget-content-left">
																<c:choose>
																	<c:when test="${not empty SchoolStudent.name }">
																		<div class="widget-heading">${SchoolStudent.name}</div>
																	</c:when>
																	<c:otherwise>
																		<div class="widget-heading">${SchoolStudent.username}</div>
																	</c:otherwise>
																</c:choose>
																<!-- <div class="widget-subheading opacity-8">A short profile description
                                                                </div> -->
															</div>
															<div class="widget-content-right mr-2">
																<%-- <c:choose>
																	<c:when test="${SchoolStudent.socialLogin eq 1 }">
																		<a href="<%=request.getContextPath()%>/milo/googlelogout"
																			class="btn-pill btn-shadow btn-shine btn btn-focus">Logout
																		</a>
																	</c:when>
																	<c:otherwise>
																		<a href="<%=request.getContextPath()%>/milo/logout"
																			class="btn-pill btn-shadow btn-shine btn btn-focus">Logout
																		</a>
																	</c:otherwise>
																</c:choose> --%>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="scroll-area-xs" style="height: 100px;">
											<div class="scrollbar-container ps ps--active-y">
												<ul class="nav flex-column">
													<!-- <li class="nav-item-header nav-item">Activity</li> -->
													<%-- <li class="nav-item"><a href="javascript:void(0);"
														class="nav-link">Points
															<div class="ml-auto badge badge-pill badge-info" id="userPoints">${SchoolStudent.points }
															</div>
													</a></li> --%>
													<!-- <li class="nav-item"><a href="#" class="nav-link">Change
															Password </a></li> -->
													<!-- <li class="nav-item-header nav-item">My Account</li> -->
														<li class="nav-item"><a href="<%=request.getContextPath() %>/milo/user/dashboard" class="nav-link">My Dashboard</a></li>
														<li class="nav-item"><a href="<%=request.getContextPath() %>/milo/user/edit-profile" class="nav-link">My Account</a></li>
														<%-- <li class="nav-item"><a href="<%=request.getContextPath() %>/milo/user/reportcard" class="nav-link">Report Card</a></li> --%>
												</ul>
												<!-- <div class="ps__rail-x" style="left: 0px; bottom: 0px;">
													<div class="ps__thumb-x" tabindex="0"
														style="left: 0px; width: 0px;"></div>
												</div> -->
												<!-- <div class="ps__rail-y"
													style="top: 0px; right: 0px; height: 150px;">
													<div class="ps__thumb-y" tabindex="0"
														style="top: 0px; height: 89px;"></div>
												</div> -->
											</div>
										</div>
										<!-- <ul class="nav flex-column">
											<li class="nav-item-divider mb-0 nav-item"></li>
										</ul> -->
										<div class="text-center">
											<c:choose>
												<c:when test="${SchoolStudent.socialLogin eq 1 }">
													<a href="<%=request.getContextPath()%>/milo/googlelogout"
														class="btn-pill btn-shadow btn-shine btn btn-focus">Logout
													</a>
												</c:when>
												<c:otherwise>
													<a href="<%=request.getContextPath()%>/milo/logout"
														class="btn-pill btn-shadow btn-shine btn btn-focus">Logout
													</a>
												</c:otherwise>
											</c:choose>
										</div>
										<%-- <div class="grid-menu grid-menu-2col">
											<div class="no-gutters row">
												<div class="col-sm-6">
													<a
														class="btn-icon-vertical btn-transition btn-transition-alt pt-2 pb-2 btn btn-outline-warning"
														href="<%=request.getContextPath()%>/milo/user/edit-profile">
														<i
														class="pe-7s-user icon-gradient bg-amy-crisp btn-icon-wrapper mb-2"></i>
														Profile
													</a>
												</div>
												<div class="col-sm-6">
													<a
														class="btn-icon-vertical btn-transition btn-transition-alt pt-2 pb-2 btn btn-outline-danger"
														href="<%=request.getContextPath() %>/milo/user/entries"> <i
														class="pe-7s-ticket icon-gradient bg-love-kiss btn-icon-wrapper mb-2"></i>
														<b>Entries</b>
													</a>
												</div>
											</div>
										</div> --%>
										<!-- <ul class="nav flex-column">
											<li class="nav-item-divider nav-item"></li>
											<li class="nav-item-btn text-center nav-item">
												<button class="btn-wide btn btn-primary btn-sm">
													Open Messages</button>
											</li>
										</ul> -->
									</div>
								</div>
							</div>
							<div class="widget-content-left  ml-3 header-user-info">
								<c:choose>
									<c:when test="${not empty SchoolStudent.name }">
										<div class="widget-heading">${SchoolStudent.name}</div>
									</c:when>
									<c:otherwise>
										<div class="widget-heading">${SchoolStudent.username}</div>
									</c:otherwise>
								</c:choose>
								<%-- <div class="widget-heading">${SchoolStudent.username }</div> --%>
								<!-- <div class="widget-subheading">VP People Manager</div> -->
							</div>
							<!-- <div class="widget-content-right header-user-info ml-3">
								<button type="button"
									class="btn-shadow p-1 btn btn-primary btn-sm show-toastr-example">
									<i class="fa text-white fa-calendar pr-1 pl-1"></i>
								</button>
							</div> -->
						</div>
					</div>
				</div>
			</c:if>
			<%-- <c:if test="${empty SchoolStudent && empty Other}">
				<a href="<%=request.getContextPath()%>/entrepreneur/login" class="btn btn-warning"
					style="border-radius: 50px; height: 45px; width: 45px;">
					<i class="fa fa-key fa-w-16 fa-2x" style="line-height: 1.2em;"></i>
				</a>
				
				<a href="<%=request.getContextPath()%>/school/register">
					<i class="fa fa-user-plus fa-3x icon-gradient bg-amy-crisp btn-icon-wrapper mb-2"></i>
				</a>
			</c:if> --%>
		</div>
	</div>
</div>
<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/57eb386cbb785b3a47cdac0d/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
<style>
.fixed-sidebar .app-main .app-main__outer {
	padding-left: 0px !important;
}
</style>
<script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>

<!-- Load the JS SDK asynchronously -->
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js"></script>
<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.21.0/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="https://www.gstatic.com/firebasejs/7.21.0/firebase-analytics.js"></script>
<script type="text/javascript"
		src="<%=request.getContextPath()%>/assets/scripts/main.js"></script>
<script>
$.ajax({
	type : "GET",
	url : "${pageContext.request.contextPath}/milo/points/${SchoolStudent.username}",
	timeout : 100000,
	beforeSend:function(){
		//$('#milo-points').append('<i class="fa fa-spinner fa-spin orange" id="loading"></i>');
	},
	success : function(data) {
		
		console.log("SUCCESS: ", data);
		$('#milo-points').empty();
		$('#milo-points').html(+data);
		
	},
	error : function(e) {
		console.log("ERROR: ", e);
		
	},
	done : function(e) {
		console.log("DONE");
		$('#loading').remove();
		
	}
});
</script>
