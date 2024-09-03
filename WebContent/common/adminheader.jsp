<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
.bg-grow-earl {
	background-color: rgb(6 160 76) !important;
}
.app-header.header-text-light .app-header-left>.nav>li>.nav-link {
	color: #FFF;
}
li:hover, li:focus {
	color: BLUE !important;
}
</style>
<div class="app-header header-shadow bg-grow-earl header-text-light">
	<div class="app-header__logo">
		<!-- <div class="logo-src"></div> -->
		<img src="<%=request.getContextPath() %>/img/milo/logo1.png" />
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
			<c:if test="${empty AdminUser}">
				<a href="<%=request.getContextPath()%>/milo/admin/login" class="btn btn-warning">
					<!-- <i class="fa fa-key fa-w-16 fa-2x" style="line-height: 1.2em;"></i> -->
					LOGIN
				</a></c:if>
			<c:if test="${not empty AdminUser}">
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
			<ul class="header-menu nav" style="padding-left: 300px; font-size: 1.2rem;">
				<li class="nav-item"><a href="<%=request.getContextPath()%>/milo/admin"
					class="nav-link"> <i class="nav-link-icon pe-7s-news-paper">
					</i> Home
				</a></li>
				<li class="nav-item"><a href="<%=request.getContextPath()%>/milo/admin/allsessions"
					class="nav-link"> <i class="nav-link-icon pe-7s-target"></i>
						All Sessions
				</a></li>
				<li class="nav-item"><a href="<%=request.getContextPath()%>/milo/admin/leaderboard"
					class="nav-link"> <i class="nav-link-icon pe-7s-users"></i>
						Leader Board
				</a></li>
				<%-- 
				<li class="nav-item"><a href="<%=request.getContextPath()%>/admin/topzones"
					class="nav-link"> <i class="nav-link-icon pe-7s-look"></i>
						Top Zones
				</a></li> --%>
				<c:if test="${empty AdminUser}">
					<li>
						<a href="<%=request.getContextPath()%>/milo/admin/login" class="btn btn-warning">
							<!-- <i class="fa fa-key fa-w-16 fa-2x" style="line-height: 1.2em;"></i> -->
							LOGIN
						</a></li>
				</c:if>
				<c:if test="${not empty AdminUser }">
					<li>
						<a href="<%=request.getContextPath()%>/milo/adminlogout" class="btn btn-danger">
							<!-- <i class="fa fa-key fa-w-16 fa-2x" style="line-height: 1.2em;"></i> -->
							LOGOUT
						</a></li>
				</c:if>
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
						<!-- <a href="<%=request.getContextPath() %>/college" class="dropdown-item">
							<i class="fa fa-university icon-gradient bg-sunny-morning fa fa-3x"></i>&nbsp;&nbsp;&nbsp; COLLEGE
						</a> -->
						<a href="<%=request.getContextPath() %>/others" class="dropdown-item">
							<i class="fa fa-users icon-gradient bg-love-kiss fa fa-2x"></i>&nbsp;&nbsp;&nbsp; OTHER
						</a>
					</div>
				</div>
			</div> --%>
			<div class="d-block d-sm-none">
			<c:if test="${not empty AdminUser}">
			
				<a href="<%=request.getContextPath()%>/milo/adminlogout"
					class="btn-pill btn-shadow btn-shine btn btn-focus">Logout
				</a>
															
			</c:if></div>
		</div>
	</div>
</div>
<%-- <c:if test="${not empty SchoolStudent }">
	<c:if test="${SchoolStudent.getPremium() eq 0 }">
		<form>
			<input type="hidden" name="premium" id="premium" value="${SchoolStudent.getPremium() }" />
		</form>
		<button type="button" class="btn mr-2 mb-2 btn-primary hide" data-toggle="modal" data-target="#exampleModal"
			id="clickForPremium">Basic Modal
	  	</button>
	</c:if>
</c:if> --%>
<%-- <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">UPGRADE TO PREMIUM</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p class="mb-0">Get premium account to avail all the benifits.</p>
            </div>
            <div class="modal-footer">
                <a class="btn btn-primary" href="<%=request.getContextPath() %>/narayana/user/premium">Get Premium</a>
            </div>
        </div>
    </div>
</div> --%>
<style>
.fixed-sidebar .app-main .app-main__outer {
	padding-left: 0px !important;
}
</style>

<!-- Global site tag (gtag.js) - Google Analytics -->

<script async src="https://www.googletagmanager.com/gtag/js?id=G-ESZC9DLWRF"></script>

<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-ESZC9DLWRF');
</script>