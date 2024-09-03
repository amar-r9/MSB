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
<title>Future Entrepreneurs Course for School and College
	Students | My Super Talent</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
	content="This course will help you take the first steps in entrepreneurship. Learn about entrepreneurship, skills needed and much more with this.">
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
	href="<%=request.getContextPath()%>/assets/main.cba69814a806ecc7945a.css"
	rel="stylesheet">
</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<jsp:include page="/common/eheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/emenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner" style="padding: 0px; background: #FFF;">
					<div class="tab-content">
						<div class="row d-none d-lg-block">
							<div id="carouselExampleControls1" class="carousel slide"
								data-ride="carousel">
								<div class="carousel-inner">
									<div class="carousel-item active">
										<img class="d-block w-100"
											src="<%=request.getContextPath()%>/img/entrepreneurmysupertalent.png"
											alt="First slide">
									</div>
									<div class="carousel-item">
										<img class="d-block w-100"
											src="<%=request.getContextPath()%>/img/entrepreneurmysupertalent.png"
											alt="Second slide">
									</div>
									<div class="carousel-item">
										<img class="d-block w-100"
											src="<%=request.getContextPath()%>/img/entrepreneurmysupertalent.png"
											alt="Third slide">
									</div>
								</div>
								<a class="carousel-control-prev"
									href="#carouselExampleControls1" role="button"
									data-slide="prev"> <span class="carousel-control-prev-icon"
									aria-hidden="true"></span> <span class="sr-only">Previous</span>
								</a> <a class="carousel-control-next"
									href="#carouselExampleControls1" role="button"
									data-slide="next"> <span class="carousel-control-next-icon"
									aria-hidden="true"></span> <span class="sr-only">Next</span>
								</a>
							</div>

							<%-- <img
								src="<%=request.getContextPath()%>/img/entrepreneurmysupertalent.png"
								style="width: 100%;" /> --%>
						</div>
						<div class="row d-block d-sm-none" style="padding: 0px;">
							<%-- <img src="<%=request.getContextPath()%>/img/sc-mobile.png"
								style="width: 100%;" /> --%>
						</div>
						<div class="tab-pane tabs-animation fade show active"
							id="tab-content-0" role="tabpanel">


							<div class="row">
								<div class="col-md-8">
									<div class="col-md-12">
										<div class="card-body">
											<div class="row">
												<div class="col-md-4">
													<a
														href="<%=request.getContextPath()%>/entrepreneur/gift-register"
														class="btn-wide mb-2 mr-2 btn btn-square btn-danger btn-lg btn-block">REGISTER</a>
												</div>
												<div class="col-md-4">
													<a
														href="<%=request.getContextPath()%>/entrepreneur/gift-register"
														class="btn-wide mb-2 mr-2 btn btn-square btn-secondary btn-lg btn-block">GIFT</a>
												</div>
												<div class="col-md-4">
													<a href="<%=request.getContextPath() %>/entrepreneur/enquiry"
														class="btn-wide mb-2 mr-2 btn btn-square btn-warning btn-lg btn-block">ENQUIRY</a>
												</div>
											</div>
											<p>&nbsp;</p>
											<div class="thumbnail">
												<h6>All the big brands and companies we see around us
													were started by people who had a passion to create
													something big and impact the lives of people. Building a
													successful business is a great way to become rich too. This
													course is designed to help people understand the basics of
													business.</h6>
												<h6>You will know what it takes to build a great
													business, the skills you need, motivation behind some
													successful entrepreneurs, amazing stories of grit &
													determination and how to identify problems & opportunities
													to build business. You have to prepare today to be
													successful tomorrow.</h6>
												<h6>There are two tracks:</h6>

												<table class="mb-0 table">
													<thead>
														<tr>

														</tr>
													</thead>
													<tbody>
														<tr>
															<td><h6>Track 1</h6></td>
															<td><h6>SPreneur (for School Students)</h6></td>
															<td><a
																href="<%=request.getContextPath()%>/entrepreneur/spreneur"
																class="btn btn-sm btn-info">KNOW MORE</a></td>
														</tr>
														<tr>
															<td><h6>Track 2</h6></td>
															<td><h6>CPreneur (for College Students)</h6></td>
															<td><a
																href="<%=request.getContextPath()%>/entrepreneur/cpreneur"
																class="btn btn-sm btn-info">KNOW MORE</a></td>
														</tr>
													</tbody>
												</table>
												<!-- <h6>Track 1: SPreneur (for School Students)</h6>
												<h6>Track 2: CPreneur (for College Students)</h6> -->
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="main-card mb-3 card">
										<div class="card-body"
											style="background-color: #4d538c; color: #FFF;">
											<h5 class=" text-center">IMPORTANT INFORMATION</h5>
											<div class="divider"></div>
											<h6>
												<ul>
													<li>START DATE: 5th July, 2020</li>
													<li>DURATION: 10 Days</li>
													<li>MODE: Videos, Webinars and Activities</li>
													<li>Participation Certificates, Merit Certificates and
														Certificate of Excellence</li>
													<li>Scholarships Worth INR 8 Lakhs</li>
												</ul>
											</h6>
										</div>
									</div>
									<h6 class="text-center">SUPPORTED BY</h6>
									<div class="divider"></div>
									<a href="http://tikaana.com/" target="_blank">
										<div class="text-center">
											<img src="<%=request.getContextPath()%>/img/tikaana.png" />
										</div>
									</a>
								</div>
							</div>

							<div class="row text-center">
								<div class="col-md-12">
									<div class="card-body">
										<h4>TRAINER</h4>
										<div class="divider"></div>
										<div class="row">
											<div class="col-md-4">
												<div
													class="card-shadow-primary profile-responsive card-border mb-3 card">
													<div class="dropdown-menu-header">
														<div class="dropdown-menu-header-inner bg-primary">
															<div class="menu-header-image"
																style="background-image: url('<%=request.getContextPath()%>/assets/images/dropdown-header/abstract1.jpg')"></div>
															<div class="menu-header-content btn-pane-right">
																<div class="avatar-icon-wrapper mr-2 avatar-icon-xl">
																	<div class="avatar-icon">
																		<img
																			src="<%=request.getContextPath()%>/img/trainer/raghu.jpg"
																			alt="Avatar 5">
																	</div>
																</div>
																<div>
																	<h5 class="menu-header-title">Raghu Bojja</h5>
																</div>
															</div>
														</div>
													</div>
													<div class="card-body text-justify">
														<h6>Alumnus of IIM Kozhikode, Raghu has been an
															entrepeneur for the last 10 years. Worked in the US for a
															startup after completing his M.S. Built World's first
															online Talent Discovery Platform, started a school
															magazine that had more than 1.5 lakh subscriptions,
															associated with some of the biggest school chains in
															India and has given an opportunity to lakhs of students
															from remotest parts of the country to showcase their
															talents.</h6>
													</div>
												</div>
											</div>

											<div class="col-md-4">
												<div
													class="card-shadow-primary profile-responsive card-border mb-3 card">
													<div class="dropdown-menu-header">
														<div class="dropdown-menu-header-inner bg-danger">
															<div class="menu-header-image"
																style="background-image: url('<%=request.getContextPath()%>/assets/images/dropdown-header/abstract1.jpg')"></div>
															<div class="menu-header-content btn-pane-right">
																<div class="avatar-icon-wrapper mr-2 avatar-icon-xl">
																	<div class="avatar-icon">
																		<img
																			src="<%=request.getContextPath()%>/img/trainer/1.jpeg"
																			alt="Avatar 5">
																	</div>
																</div>
																<div>
																	<h5 class="menu-header-title">Pruthvi Raj</h5>
																</div>
																<!-- <div class="menu-header-btn-pane">
					                                                <button class="btn-icon mr-2 btn-icon-only btn btn-warning btn-sm">
					                                                    <i class="pe-7s-config btn-icon-wrapper"></i>
					                                                </button>
					                                                <button class="btn-icon btn btn-success btn-sm">View Profile</button>
					                                            </div> -->
															</div>
														</div>
													</div>
													<div class="card-body text-justify">
														<h6>All Engineering entrances Rank holder, Proud
															alumni of NIT Warangal, Students Council president and
															Young Entrepreneur. Beautiful journey of being employee
															in MNC to own company with 100+ employees. Masters degree
															holder from UK and a law graduate from Osmania
															University.</h6>
													</div>
												</div>
											</div>

											<div class="col-md-4">
												<div
													class="card-shadow-primary profile-responsive card-border mb-3 card">
													<div class="dropdown-menu-header">
														<div class="dropdown-menu-header-inner bg-info">
															<div class="menu-header-image"
																style="background-image: url('<%=request.getContextPath()%>/assets/images/dropdown-header/abstract1.jpg')"></div>
															<div class="menu-header-content btn-pane-right">
																<div class="avatar-icon-wrapper mr-2 avatar-icon-xl">
																	<div class="avatar-icon">
																		<img
																			src="<%=request.getContextPath()%>/img/trainer/2.jpeg"
																			alt="Avatar 5">
																	</div>
																</div>
																<div>
																	<h5 class="menu-header-title">Karthik Reddy</h5>
																</div>
															</div>
														</div>
													</div>
													<div class="card-body text-justify">
														<h6>15 years of experience in Infosys, served as
															Senior Manager in their ERP division and has experience
															working across the globe. Entrepreneurial journey over
															the last 5 years with IT products, healthcare & pharma,
															essential services and commercial real estate. Currently
															the CEO of Tikaana Coliving, solving one of the biggest
															problems India faces today - proper housing in cities.</h6>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12">
									<div class="card-body">
										<div class="row col-md-12">
											<div class="col-md-8">
												<h5 class="">COURSE STRUCTURE</h5>
												<div class="row col-md-12">
													<div class="col-md-6">

														<h6>
															<i class="fa fa-check"></i> Basic concepts of
															Entrepreneurship and Business
														</h6>
														<h6>
															<i class="fa fa-check"></i> Identifying problems and
															opportunities
														</h6>
														<h6>
															<i class="fa fa-check"></i> Analyzing some businesses
														</h6>
														<h6>
															<i class="fa fa-check"></i> Business Ideas discussion
														</h6>

													</div>
													<div class="col-md-6">
														<h6>
															<i class="fa fa-check"></i> Different verticals in
															running a business
														</h6>
														<h6>
															<i class="fa fa-check"></i> Business Plan
														</h6>
														<h6>
															<i class="fa fa-check"></i> Interaction with popular
															Entrepreneurs
														</h6>
														<h6>
															<i class="fa fa-check"></i> Business Plan Competition
														</h6>
													</div>
												</div>
											</div>
											<div class="col-md-4">
												<iframe width="100%"
													src="https://www.youtube.com/embed/UF8uR6Z6KLc"
													frameborder="0"
													allow="autoplay"
													allow="encrypted-media; gyroscope;"
													allowfullscreen></iframe>
											</div>
										</div>
										<div class="row col-md-12">
											<div class="col-md-12">
												<p>&nbsp;</p>
												<h5>PRIZES AND SCHOLARSHIPS</h5>
												<div class="row col-md-12">
													<div class="col-md-6">
														<div class="col-md-12">
															<h5>CPreneur</h5>
															<div class="col-md-12">
																<h6>
																	<i class="fa fa-check"></i> The top 10 teams/
																	individuals get to pitch to investors in a Shark Tank
																	styled event.
																</h6>
																<h6>
																	<i class="fa fa-check"></i> The top team/ individual
																	gets INR 50,000 prize money. First Runner-up gets INR
																	30,000. Second Runner-up gets INR 20,000
																</h6>
																<h6>
																	<i class="fa fa-check"></i> Tikaana vouchers worth INR
																	20,000
																</h6>
																<h6>
																	<i class="fa fa-check"></i> Opportunity to be part of
																	Tikaana Startup Living
																</h6>
															</div>
														</div>
													</div>
													<div class="col-md-6">
														<h5>SPreneur</h5>
														<div class="col-md-12">
															<h6>
																<i class="fa fa-check"></i> The top team/ individual
																gets INR 50,000 prize money.
															</h6>
															<h6>
																<i class="fa fa-check"></i> First Runner-up gets INR
																30,000.
															</h6>
															<h6>
																<i class="fa fa-check"></i> Second Runner-up gets INR
																20,000
															</h6>
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