<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="app-header header-shadow">
	<div class="app-header__logo">
		<!-- <div class="logo-src"></div> -->
		<img src="<%=request.getContextPath() %>/img/logo.jpg" style="height: 60px;" />
		
			
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
			<%-- <c:choose>
				<c:when test="${empty SchoolStudent && empty Other}">
					<a href="<%=request.getContextPath()%>/entrepreneur/login" class="btn btn-warning">
						<!-- <i class="fa fa-key fa-w-16 fa-2x" style="line-height: 1.2em;"></i> -->
						LOGIN
					</a></c:when>
				<c:otherwise>
					<button type="button"
						class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
						<span class="btn-icon-wrapper"> <i
							class="fa fa-ellipsis-v fa-w-6"></i>
						</span>
					</button>
				</c:otherwise>
			</c:choose> --%>
		</span>
	</div>
	<div class="app-header__content">
		<a href="<%=request.getContextPath()%>/codingstar">
				<img src="<%=request.getContextPath() %>/img/coding/logo.png" 
					style="height: 45px;" /></a>
		<div class="app-header-left" style="padding-left: 20px;">
			<h2 style="color: #3cab78; font-weight: 600;">CODING STAR</h2>
			<ul class="header-menu nav" style="padding-left: 20px;">
				<li class="nav-item"><a href="<%=request.getContextPath()%>/codingstar"
					class="nav-link"> 
					Home
				</a></li>
				<li class="nav-item"><a href="<%=request.getContextPath()%>/codingstar/user/tests"
					class="nav-link"> 
					Participate</a></li>
				<%-- <li class="dropdown nav-item"><a href="<%=request.getContextPath()%>/entrepreneur/cpreneur"
					class="nav-link"> <i class="nav-link-icon pe-7s-search"></i>
						CPRENEUR
				</a></li> --%>
				<li class="dropdown nav-item"><a href="<%=request.getContextPath()%>/codingstar/studenthof"
					class="nav-link">Leader Board
				</a></li>
				<c:if test="${empty SchoolStudent}">
				<li>
				<a href="<%=request.getContextPath()%>/codingstar/register" class="btn btn-info">
					<!-- <i class="fa fa-key fa-w-16 fa-2x" style="line-height: 1.2em;"></i> -->
					Signup
				</a></li>
				<li style="padding-left: 10px;">
				<a href="<%=request.getContextPath()%>/codingstar/login" class="btn btn-warning">
					<!-- <i class="fa fa-key fa-w-16 fa-2x" style="line-height: 1.2em;"></i> -->
					Login
				</a></li></c:if>
			</ul>
		</div>
		<div class="app-header-right">
			<%-- <div class="header-dots">
				<div class="dropdown">
					<button type="button" data-toggle="dropdown"
						class="p-0 mr-2 btn btn-link">
						<span class="icon-wrapper icon-wrapper-alt rounded-circle">
							<span class="icon-wrapper-bg bg-focus"></span> <i
							class="fa fa-users-cog opacity-8"></i>
						</span>
					</button>
					<div tabindex="-1" role="menu" aria-hidden="true"
						class="rm-pointers dropdown-menu dropdown-menu-right">
						<div class="dropdown-menu-header">
							<div class="dropdown-menu-header-inner pt-4 pb-4 bg-focus">
								<div class="menu-header-image opacity-05"
									style="background-image: url('<%=request.getContextPath()%>/assets/images/dropdown-header/city2.jpg');"></div>
								<div class="menu-header-content text-center text-white">
									<h6 class="menu-header-subtitle mt-0">Switch User</h6>
								</div>
							</div>
						</div>
						<h6 tabindex="-1" class="dropdown-header">Choose Below</h6>
						<a href="<%=request.getContextPath() %>/school" class="dropdown-item">
							<i class="fa fa-school icon-gradient bg-tempting-azure fa fa-2x"></i>&nbsp;&nbsp;&nbsp; SCHOOL
						</a>
						<a href="<%=request.getContextPath() %>/college" class="dropdown-item">
							<i class="fa fa-university icon-gradient bg-sunny-morning fa fa-3x"></i>&nbsp;&nbsp;&nbsp; COLLEGE
						</a>
						<a href="<%=request.getContextPath() %>/others" class="dropdown-item">
							<i class="fa fa-users icon-gradient bg-love-kiss fa fa-2x"></i>&nbsp;&nbsp;&nbsp; OTHER
						</a>
					</div>
				</div>
			</div> --%>
			<c:if test="${not empty SchoolStudent }">
					<div class="header-btn-lg pr-0">
						<div class="widget-content p-0">
							<div class="widget-content-wrapper">
								<div class="widget-content-left">
									<div class="btn-group">
										<a data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false" class="p-0 btn"> <img width="42"
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
																	<div class="widget-heading">${SchoolStudent.username}</div>
																	<!-- <div class="widget-subheading opacity-8">A short profile description
	                                                                </div> -->
																</div>
																<div class="widget-content-right mr-2">
																	<c:choose>
																		<c:when test="${SchoolStudent.socialLogin eq 1 }">
																			<a href="<%=request.getContextPath()%>/codingstar/googlelogout"
																				class="btn-pill btn-shadow btn-shine btn btn-focus">Logout
																			</a>
																		</c:when>
																		<c:otherwise>
																			<a href="<%=request.getContextPath()%>/codingstar/logout"
																				class="btn-pill btn-shadow btn-shine btn btn-focus">Logout
																			</a>
																		</c:otherwise>
																	</c:choose>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="scroll-area-xs" style="height: 150px;">
												<div class="scrollbar-container ps ps--active-y">
													<ul class="nav flex-column">
														<li class="nav-item-header nav-item">Activity</li>
														<li class="nav-item"><a href="javascript:void(0);"
															class="nav-link">Points
																<div class="ml-auto badge badge-pill badge-info">${SchoolStudent.points }
																</div>
														</a></li>
														<li class="nav-item"><a href="#" class="nav-link">Change
																Password </a></li>
														<li class="nav-item-header nav-item">My Account</li>
													</ul>
													<div class="ps__rail-x" style="left: 0px; bottom: 0px;">
														<div class="ps__thumb-x" tabindex="0"
															style="left: 0px; width: 0px;"></div>
													</div>
													<div class="ps__rail-y"
														style="top: 0px; right: 0px; height: 150px;">
														<div class="ps__thumb-y" tabindex="0"
															style="top: 0px; height: 89px;"></div>
													</div>
												</div>
											</div>
											<ul class="nav flex-column">
												<li class="nav-item-divider mb-0 nav-item"></li>
											</ul>
											<div class="grid-menu grid-menu-2col">
												<div class="no-gutters row">
													<div class="col-sm-6">
														<a
															class="btn-icon-vertical btn-transition btn-transition-alt pt-2 pb-2 btn btn-outline-warning"
															href="<%=request.getContextPath()%>/codingstar/user/profile">
															<i
															class="pe-7s-user icon-gradient bg-amy-crisp btn-icon-wrapper mb-2"></i>
															Profile
														</a>
													</div>
													<div class="col-sm-6">
														<a
															class="btn-icon-vertical btn-transition btn-transition-alt pt-2 pb-2 btn btn-outline-danger"
															href="#"> <i
															class="pe-7s-ticket icon-gradient bg-love-kiss btn-icon-wrapper mb-2"></i>
															<b>Entries</b>
														</a>
													</div>
												</div>
											</div>
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
									<div class="widget-heading">${SchoolStudent.username }</div>
									<!-- <div class="widget-subheading">VP People Manager</div> -->
								</div>
								<div class="widget-content-right header-user-info ml-3">
									<button type="button"
										class="btn-shadow p-1 btn btn-primary btn-sm show-toastr-example">
										<i class="fa text-white fa-calendar pr-1 pl-1"></i>
									</button>
								</div>
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