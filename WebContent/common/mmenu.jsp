
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="d-block d-lg-none">
	<div class="app-sidebar sidebar-shadow">
		<div class="app-header__logo">
			<div class="logo-src"></div>
			<!-- <div class="header__pane ml-auto">
				<div>
					<button type="button"
						class="hamburger close-sidebar-btn hamburger--elastic"
						data-class="closed-sidebar">
						<span class="hamburger-box"> <span class="hamburger-inner"></span>
						</span>
					</button>
				</div>
			</div> -->
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
					<li><a href="<%=request.getContextPath()%>/milo" id="home">
							<i class="metismenu-icon pe-7s-home"></i> HOME
					</a></li>
					<li><a
						href="#"> <i class="metismenu-icon pe-7s-diamond"></i>
							ABOUT HOMEGROUND
					</a></li>
					<%-- <li><a href="<%=request.getContextPath()%>/entrepreneur/spreneur"
						id="sources"> <i class="metismenu-icon pe-7s-news-paper"></i>
							SPRENEUR
					</a></li> --%>
					<%-- <li><a
						href="<%=request.getContextPath()%>/entrepreneur/cpreneur"
						id="competitions"> <i class="metismenu-icon pe-7s-target"></i>
							CPRENEUR
					</a></li> --%>
					
					<%-- <c:if test="${not empty SchoolStudent}">
						<c:choose>
							<c:when test="${SchoolStudent.getPremium() eq 1 }">
								<li><a href="<%=request.getContextPath()%>/srichaitanya/premium/articles/all/0">
									<i class="metismenu-icon pe-7s-news-paper"></i>
										Blog
								</a></li>
								<li><a href="<%=request.getContextPath()%>/srichaitanya/user/premium/courses">
									<i class="metismenu-icon pe-7s-bookmarks"></i>
										Courses
								</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="#" data-toggle="modal" data-target="#premiumBlog">
										<i class="metismenu-icon pe-7s-news-paper"></i>Blog</a>
								</li>
								<li><a href="#" data-toggle="modal" data-target="#premiumBlog">
									<i class="metismenu-icon pe-7s-bookmarks"></i>Courses</a>
								</li>
							</c:otherwise>
						</c:choose>
					</c:if> --%>
					<%-- <c:if test="${empty SchoolStudent}">
						<li><a href="<%=request.getContextPath()%>/srichaitanya/login"
						> <i class="metismenu-icon pe-7s-news-paper"></i>
							Blog
						</a></li>
						<li><a href="<%=request.getContextPath()%>/srichaitanya/login"
							> <i class="metismenu-icon pe-7s-bookmarks"></i>
								Courses
						</a></li>
					</c:if> --%>
				
					<!--<li><a href="<%=request.getContextPath()%>/srichaitanya/entries/${SchoolStudent.username}"
						id="myentries"> <i class="metismenu-icon pe-7s-diamond"></i>
						My Talents
				</a></li>-->
					

				</ul>
			</div>
		</div>
	</div>
</div>