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
<title>SuperBrain of the year | MySuperBrain</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
	content="This is an example dashboard created using build-in elements and components.">
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
<link href="<%=request.getContextPath()%>/assets/testimonials.css"
	rel="stylesheet">
</head>
<body style="font-family: var(--font-base);">
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<jsp:include page="/common/schoolheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/schoolmenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner" style="padding: 0px; background: #FFF;">
					<!-- <div class="app-page-title">
						<div class="page-title-wrapper">
							<div class="page-title-heading">
								<div class="page-title-icon">
									<i class="pe-7s-news-paper icon-gradient bg-mean-fruit"> </i>
								</div>
								<div>
									Premium
									<div class="page-title-subheading">This is an example
										dashboard created using build-in elements and components.</div>
								</div>
							</div>
						</div>
					</div> -->
					<div class="tab-content">
						<div class="tab-pane tabs-animation fade show active"
							id="tab-content-0" role="tabpanel">
							<div class="main-card mb-3 card">
								<div class="card-body">
									<div class="col-md-12">
										<div class="row">
											<div class="col-md-3"></div>
											<div class="col-md-6">
												<img
													src="<%=request.getContextPath()%>/img/premium/superbrainofyear.png"
													style="width: 100%;" />
											</div>
										</div>
										<p>&nbsp;</p>
										<div class="row">
											<div class="col-md-12 text-center">
											<h3>Super Brain of the Year</h3></div>
											<h6>2020 has been a pretty worrying year. Kids have been
												worst impacted and have been under constant stress. Let's
												bring on 2021 with a Bang. Nominate yourself for the Super
												Brain of the year. You could start 2021 with the "Super
												Brain of the Year 2020" award. Selection happens in three
												phases - written test, task and interview.</h6>
											<p>&nbsp;</p>
											<div class="row text-center">
												<div class="col-md-8"></div>
												<div class="col-md-4">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://www.instamojo.com/mysuperbrain/premium-account-quarterly/" class="btn btn-lg btn-info btn-wide btn-pill"
														 rel="im-checkout" data-text="Register
														now!" data-css-style="color:#ffffff; background:#1273de; width:300px; border-radius:4px; align: center;"   data-layout="vertical"></a>
													<script src="https://js.instamojo.com/v1/button.js"></script>
												</div>
											</div>
										</div>
										<div class="divider"></div>
										<section id="team" class="pb-5">
										    <div class="container">
										        <h5 class="section-title h1">SELECTION PROCESS!</h5>
										        <div class="row">
										            <!-- Team member -->
										            <div class="col-xs-12 col-sm-6 col-md-4">
										                <div class="image-flip" >
										                    <div class="mainflip flip-0">
										                        <div class="frontside">
										                            <div class="card">
										                                <div class="card-body text-center"><br><br>
										                                    <%-- <p><img class=" img-fluid" src="<%=request.getContextPath() %>/img/team/raghu.jpg" alt="card image"></p> --%>
										                                    <h1 class="card-title" style="font-size: 100px;">1</h1>
										                                    <h4 class="card-title">Online Test</h4>
										                                    <!-- <p class="card-text">Mr. Raghu is passionate about making a
																				difference in the lives of students.</p> -->
										                                    <!-- <a href="https://www.fiverr.com/share/qb8D02" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a> -->
										                                </div>
										                            </div>
										                        </div>
										                        <div class="backside">
										                            <div class="card">
										                                <div class="card-body text-center mt-4"><br><br>
										                                    <h4 class="card-title">Online Test</h4>
										                                    <h4 class="card-text">This will be a 20 minute test to understand your strengths and weaknesses.</h4>
										                                    
										                                </div>
										                            </div>
										                        </div>
										                    </div>
										                </div>
										            </div>
										            <!-- ./Team member -->
										            <!-- Team member -->
										            <div class="col-xs-12 col-sm-6 col-md-4">
										                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
										                    <div class="mainflip">
										                        <div class="frontside">
										                            <div class="card">
										                                <div class="card-body text-center"><br><br>
										                                    <%-- <p><img class=" img-fluid" src="<%=request.getContextPath() %>/img/team/yuva.jpg" alt="card image"></p> --%>
										                                    <h1 class="card-title" style="font-size: 100px;">2</h1>
										                                    <h4 class="card-title">Task</h4>
										                                    <!-- <a href="https://www.fiverr.com/share/qb8D02" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a> -->
										                                </div>
										                            </div>
										                        </div>
										                        <div class="backside">
										                            <div class="card">
										                                <div class="card-body text-center mt-4"><br><br>
										                                    <h4 class="card-title">Task</h4>
										                                    <h4 class="card-text">You will be given a task to test your thinking ability.</h4>
										                                    
										                                </div>
										                            </div>
										                        </div>
										                    </div>
										                </div>
										            </div>
										            <!-- ./Team member -->
										            <!-- Team member -->
										            <div class="col-xs-12 col-sm-6 col-md-4">
										                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
										                    <div class="mainflip">
										                        <div class="frontside">
										                            <div class="card">
										                                <div class="card-body text-center"><br><br>
										                                    <h1 class="card-title" style="font-size: 100px;">3</h1>
										                                    <h4 class="card-title">Interview</h4>
										                                    <!-- <a href="https://www.fiverr.com/share/qb8D02" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a> -->
										                                </div>
										                            </div>
										                        </div>
										                        <div class="backside">
										                            <div class="card">
										                                <div class="card-body text-center mt-4"><br><br>
										                                    <h4 class="card-title">Interview</h4>
										                                    <h4 class="card-text">You will be interviewed to primarily bring out the best in you.</h4>
										                                    
										                                </div>
										                            </div>
										                        </div>
										                    </div>
										                </div>
										            </div>
										        </div>
										    </div>
										</section>
									</div>
									<p>&nbsp;</p>
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