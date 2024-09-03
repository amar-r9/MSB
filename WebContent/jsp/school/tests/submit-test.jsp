<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Language" content="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Tests | MySuperBrain</title>
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
		<jsp:include page="/common/schoolheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/schoolmenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner" style="background: #FFF;">
					<div class="app-page-title">
						<div class="page-title-wrapper">
							<div class="page-title-heading">
								<div class="page-title-icon">
									<i class="pe-7s-news-paper icon-gradient bg-mean-fruit"> </i>
								</div>
								<div>
									Test Submitted
									<!-- <div class="page-title-subheading">
										
									</div> -->
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
											<h4>Questions attempted : ${attempted}</h4>
											<h4>Correct Answers : ${correct}</h4>
											<p>&nbsp;</p>
											<p>&nbsp;</p>
											<p>&nbsp;</p>
										</div>
										<!-- /.col -->
									</div>
									<div class="row d-none d-lg-block text-center">
										<a href="#" class="fb-icon">
											<img src="<%=request.getContextPath() %>/img/share_fb.png" /></a>
										<a href="#" class="tw-icon">
											<img src="<%=request.getContextPath() %>/img/share_twitter.png" /></a>
										<a href="https://web.whatsapp.com/send?text=https://mysuperbrain.com/school/test-result/${param.qid}?usr=${param.usr}" target="_blank">
											<img src="<%=request.getContextPath() %>/img/share_whatsapp.png" /></a>
									</div>
									<div class="col-md-12 text-center d-block d-sm-none">
										<a href="#" class="fb-icon">
											<img src="<%=request.getContextPath() %>/img/share_fb.png" /></a>
										<a href="#" class="tw-icon">
											<img src="<%=request.getContextPath() %>/img/share_twitter.png" /></a>
										<a href="https://api.whatsapp.com/send?text=https://mysuperbrain.com/school/test-result/${param.qid}?usr=${param.usr}" target="_blank">
											<img src="<%=request.getContextPath() %>/img/share_whatsapp.png" /></a>
									</div>
									<p>&nbsp;</p>
									<div class="row card-body text-center">
										<div class="col-md-3"></div>
										<div class="col-md-6">
											<div class="text-center">
											<p id="successMsg" style="display: none;" class="alert alert-success">Challenged.</p>
											<p id="errorMsg" style="display: none;" class="alert alert-warning">Please Try again later.</p>
											<p id="emptyMsg" style="display: none;" class="alert alert-danger">Enter Mobile number.</p>
											<p id="subscribedMsg" style="display: none;" class="alert alert-danger">Already challenged.</p>
											</div>
											<div  class="card mb-3 widget-content bg-premium-dark">
											
											<div class="row text-center">
											<form id="email-form" action="#">
												<div class="row col-md-12 text-center">
													<div class="col-md-8 position-relative form-group">
														<div class="input-group">
									                        <input placeholder="Mobile Number here" type="text"
									                          name="mobile" id="mobile" class="form-control">
														</div>
														<input type="hidden" id="link" name="link" value="https://mysuperbrain.com/school/test-result/${param.qid}?usr=${param.usr}" />
														<input type="hidden" name="name" id="name" value="${studetnName }" />
														<input type="hidden" name="score" id="score" value="${studetnScore }" />
													</div>
													<div class="col-md-4">
														<button type="submit" id="getotp" class="btn btn-light btn-wide">CHALLENGE</button>
													</div>
												</div>
											</form></div>
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
				
				 window.open('http://www.facebook.com/sharer.php?u=https://mysuperbrain.com/school/test-result/${param.qid}?usr=${param.usr}','MySuperTalent Entry Share', 
				  'width=626,height=436');    
				return false;
			});
			$('.tw-icon').click(function(){
				window.open(
						  'https://twitter.com/share?url=https://mysuperbrain.com/school/test-result/${param.qid}?usr=${param.usr}','MySuperTalent Entry Share', 
				  'width=626,height=436');  
							return false;
						
			});
		});
	</script>
	<script>
	$('document').ready(function(){
		$("#email-form").submit(function(event) {
			event.preventDefault();
			saveEmail();
		});
		//$('#getotp').click(function(){
			//saveEmail();
		//});
	});	

function saveEmail(){
	//var formData=$("#email-form").serialize();
	$.ajax({
		type : "POST",
		url : "${pageContext.request.contextPath}/quiz/challenge-friend",
		//data : formData,
		data : {"mobile":$('#mobile').val(), "name":$('#name').val(), "link":$('#link').val(), "score":$('#score').val()},
		timeout : 100000,
		beforeSend:function(){
			$("#getotp").button('loading');
		},
		success : function(data) {
			
			console.log("SUCCESS: ", data);
			
			if(data=='success'){
				$('#successMsg').show();
				$('#errorMsg').hide();
				$('#emptyMsg').hide();
				$('#subscribedMsg').hide();
			}else
			if(data=='error'){
				$('#errorMsg').show();
				$('#successMsg').hide();
				$('#emptyMsg').hide();
				$('#subscribedMsg').hide();
			} else if(data=='empty'){
				$('#emptyMsg').show();
				$('#successMsg').hide();
				$('#errorMsg').hide();
				$('#subscribedMsg').hide();
			} else if(data=='subscribed'){
				$('#subscribedMsg').show();
				$('#successMsg').hide();
				$('#errorMsg').hide();
				$('#emptyMsg').hide();
			}
			$("#getotp").button('reset');
		},
		error : function(e) {
			console.log("ERROR: ", e);
			//bootbox.alert(e);
			$("#getotp").button('reset');
		},
		done : function(e) {
			console.log("DONE");
			$("#getotp").button('reset');
			
		}
	});
}
</script>
</body>
</html>
