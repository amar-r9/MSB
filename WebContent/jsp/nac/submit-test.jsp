<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Language" content="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Tests | NAC | MySuperBrain</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
	content="Know about what you can get at MySuperTalent.com">
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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link href="<%=request.getContextPath()%>/assets/jquerysctipttop.css"
	rel="stylesheet">
</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<jsp:include page="/common/nacheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/nacmenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner">
					<div class="app-page-title">
						<div class="page-title-wrapper">
							<div class="page-title-heading">
								<div class="page-title-icon">
									<i class="pe-7s-news-paper icon-gradient bg-mean-fruit"> </i>
								</div>
								<div>
									Test Submitted.
									<div class="page-title-subheading">
										<div class="row d-none d-lg-block">
											<a href="#" class="fb-icon">
												<img src="<%=request.getContextPath() %>/img/share_fb.png" /></a>
											<a href="#" class="tw-icon">
												<img src="<%=request.getContextPath() %>/img/share_twitter.png" /></a>
											<a href="https://web.whatsapp.com/send?text=https://mysuperbrain.com/nac/test-result/${param.qid}/${param.usr}" target="_blank">
												<img src="<%=request.getContextPath() %>/img/share_whatsapp.png" /></a>
										</div>
										<div class="col-md-12 text-center d-block d-sm-none">
											<a href="#" class="fb-icon">
												<img src="<%=request.getContextPath() %>/img/share_fb.png" /></a>
											<a href="#" class="tw-icon">
												<img src="<%=request.getContextPath() %>/img/share_twitter.png" /></a>
											<a href="https://api.whatsapp.com/send?text=https://mysuperbrain.com/nac/test-result/${param.qid}/${param.usr}" target="_blank">
												<img src="<%=request.getContextPath() %>/img/share_whatsapp.png" /></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-content">
						<div class="tab-pane tabs-animation fade show active"
							id="tab-content-0" role="tabpanel">
							<div class="main-card mb-3 card">
								<div class="card-body">
									<div class="row text-center" id="imgs">
										<div class="col-md-12 text-center">
											<p>&nbsp;</p>
											<h3>Total number of Questions attempted : ${attempted}</h3>
											<p>&nbsp;</p>
											<h3>Correct Answers : ${correct}</h3>
											<p>&nbsp;</p>
										</div>
										<!-- /.col -->
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
	<script
		src="<%=request.getContextPath()%>/assets/jquery.fireworks.js"></script>

	<script type="text/javascript">
		 
			  
	        var message = $("input[name=message]").val(); 
	
	        window.open( 
	            "whatsapp://send?text=" + message, 
	
	            '_blank'  
	        );  
		
		
		$('document').ready(function(){
			
			setTimeout(function() {
		        $('#imgs').fireworks();
		    });
			
			$('.fb-icon').click(function(){
				
				 window.open('http://www.facebook.com/sharer.php?u=https://mysuperbrain.com/nac/test-result/${param.qid}/${param.usr}','MySuperBrain Entry Share', 
				  'width=626,height=436');    
				return false;
			});
			$('.tw-icon').click(function(){
				window.open(
						  'https://twitter.com/share?url=https://mysuperbrain.com/nac/test-result/${param.qid}/${param.usr}','MySuperBrain Entry Share', 
				  'width=626,height=436');  
							return false;
						
			});
		});
	</script>
</body>
</html>
