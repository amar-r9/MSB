<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="d-block d-lg-none">
	<div class="app-sidebar sidebar-shadow">
		<div class="app-header__logo">
			<div class="logo-src"></div>
			<div class="header__pane ml-auto">
				<div>
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
				<button type="button"
					class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
					<span class="btn-icon-wrapper"> <i
						class="fa fa-ellipsis-v fa-w-6"></i>
					</span>
				</button>
			</span>
		</div>
		<div class="scrollbar-sidebar">
			<div class="app-sidebar__inner">
				<ul class="vertical-nav-menu">
					<li class="app-sidebar__heading">Menu</li>
					<li><a href="<%=request.getContextPath()%>/admin" id="home">
							<i class="metismenu-icon pe-7s-home"></i> Home
					</a></li>
					<%-- <li><a
						href="<%=request.getContextPath()%>/others/user/upload_a_talent"
						id="uploadtalent"> <i class="metismenu-icon pe-7s-diamond"></i>
							Upload A Talent
					</a></li> --%>
					<li><a href="<%=request.getContextPath()%>/admin/topbranches"
						id="sources"> <i class="metismenu-icon pe-7s-news-paper"></i>
							Top Branches
					</a></li>
					<li><a
						href="<%=request.getContextPath()%>/admin/topzones"
						id="competitions"> <i class="metismenu-icon pe-7s-target"></i>
							Top Zones
					</a></li>
					

				</ul>
			</div>
		</div>
	</div>
</div>