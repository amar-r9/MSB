<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.msb.constants.MsbConstants" %>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Language" content="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Submission by ${entry.user_name} for ${entry.submission_type } competition | MySuperBrain</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
	content="Submission by ${entry.user_name} for ${entry.submission_type }">
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
<link rel="icon" href="<%=request.getContextPath()%>/img/favicon.ico"
	type="image/x-icon">
<style>
.hide {
	display: none;
}
.hero {
  padding: 6.25rem 0px !important;
  margin: 0px !important;
}
.cardbox {
  border-radius: 3px;
  margin-bottom: 20px;
  padding: 0px !important;
}

/* ------------------------------- */
/* Cardbox Heading
---------------------------------- */
.cardbox .cardbox-heading {
  padding: 16px;
  margin: 0;
}
.cardbox .btn-flat.btn-flat-icon {
 border-radius: 50%;
 font-size: 24px;
 height: 32px;
 width: 32px;
 padding: 0;
 overflow: hidden;
 color: #fff !important;
 background: #b5b6b6;
 
display: flex;
flex-direction: column;
justify-content: center;
align-items: center;
text-align: center;
}
.cardbox .float-right .dropdown-menu{
  position: relative;
  left: 13px !important;  
}
.cardbox .float-right a:hover{
  background: #f4f4f4 !important;	
}
.cardbox .float-right a.dropdown-item {
  display: block;
  width: 100%;
  padding: 4px 0px 4px 10px;
  clear: both;
  font-weight: 400;
  font-family: 'Abhaya Libre', serif;
  font-size: 14px !important;
  color: #848484;
  text-align: inherit;
  white-space: nowrap;
  background: 0 0;
  border: 0;
}

/* ------------------------------- */
/* Media Section
---------------------------------- */
.media {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: start;
  align-items: flex-start;
}
.d-flex {
  display: -ms-flexbox !important;
  display: flex !important;
}
.media .mr-3{
  margin-right: 1rem !important;
}
.media img{
  width: 48px !important;
  height: 48px !important;
  padding: 2px;
  border: 2px solid #f4f4f4;
} 
.media-body {
  -ms-flex: 1;
  flex: 1;
  padding: .4rem !important;
}
.media-body p{
  font-family: 'Rokkitt', serif;	
  font-weight: 500 !important;
  font-size: 14px;
  color: #88898a;
}
.media-body small span{
  font-family: 'Rokkitt', serif;	
  font-size: 12px;
  color: #aaa;
  margin-right: 10px;
}


/* ------------------------------- */
/* Cardbox Item
---------------------------------- */
.cardbox .cardbox-item {
    position: relative;
    display: block;
}
.cardbox .cardbox-item img{
}
.img-responsive{
    display: block;
    max-width: 100%;
    height: auto;
}	
.fw {
    width: 100% !important;
	height: auto;
}


/* ------------------------------- */
/* Cardbox Base
---------------------------------- */
.cardbox-base{
 border-bottom: 2px solid #f4f4f4;
}	
.cardbox-base ul{
 margin: 10px 0px 10px 15px!important; 
 padding: 10px !important;
 font-size: 0px;	
  display: inline-block;
}
.cardbox-base li {
  list-style: none;
  margin: 0px 0px 0px -8px !important;
  padding: 0px 0px 0px 0px !important;
  display: inline-block;
}

.cardbox-base li a{
  margin: 0px !important;
  padding: 0px !important;
}
.cardbox-base li a i{
 position: relative;
 top: 4px; 
 font-size: 16px;
 color: #8d8d8d;
 margin-right: 15px;
}
.cardbox-base li a span{
 font-family: 'Rokkitt', serif;
 font-size: 14px;
 color: #8d8d8d;
 margin-left: 20px;
 position: relative;
 top: 5px; 
}
.cardbox-base li a em{
 font-family: 'Rokkitt', serif;
 font-size: 14px;
 color: #8d8d8d;
 position: relative;
 top: 3px; 
}
.cardbox-base li a img{
  width: 25px;
  height: 25px;
  margin: 0px !important;
  border: 2px solid #fff;
}


/* ------------------------------- */
/* Cardbox Comments
---------------------------------- */
.cardbox-comments{
  padding: 10px 10px 10px 10px !important;
  font-size: 0px;	
  text-align: center;
  display: inline-block;
}
.cardbox-comments .comment-avatar img{
  margin-top: 1px;
  margin-right: 10px;
  position: relative;
  display: inline-block;
  text-align: center;
  width: 40px;
  height: 40px;
}
.cardbox-comments .comment-body {
  overflow: auto;
}
.search {
 position: relative;
 /*right: -60px;
 top: -40px;
 margin-bottom: -40px;*/
 border: 2px solid #f4f4f4;	
 width: 80%;
 overflow: hidden;
}
.search input[type="text"] {
 background-color: #fff;
 line-height: 10px;
 padding: 15px 60px 20px 10px;
 border: none;
 border-radius: 4px;
 width: 350px;
 font-family: 'Rokkitt', serif;
 font-size: 14px;
 color: #8d8d8d;
 height: inherit;
 font-weight: 700;
}
.search button {
 position: absolute;
 right: 0;
 top: 0px;
 border: none;
 background-color: transparent;
 color: #bbbbbb;
 padding: 15px 25px;
 cursor: pointer;
 
 display: flex;
flex-direction: column;
justify-content: center;
align-items: center;
text-align: center;
}
.search button i {
 font-size: 20px;
 line-height: 30px;
 display: block;
}


/* ------------------------------- */
/* Author
---------------------------------- */
.author a{
 font-family: 'Rokkitt', serif;
 font-size: 16px;
 color: #00C4CF;
}
.author p{
 font-family: 'Rokkitt', serif;
 font-size: 16px;
 color: #8d8d8d;
}
</style>
</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<jsp:include page="/common/schoolheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/schoolmenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner">

					<div class="tab-content row d-none d-lg-block">
						<div class="tab-pane tabs-animation fade show active"
							id="tab-content-0" role="tabpanel">
							<!-- <h5 class="card-title">Grid Rows</h5> -->
							<div class="main-card mb-3 card">
								<div class="row">
									<div class="col-md-9">
										<div class="card-header">
											<i
												class="header-icon fa fa-globe icon-gradient bg-plum-plate">
											</i>${entry.submission_type} entry by ${entry.user_name }
											<div class="btn-actions-pane-right actions-icon-btn">
												<button class="  btn btn-link btn-success">
													<i class="fa fa-eye btn-icon-wrapper"></i> &nbsp;${entry.visits } &nbsp; 
												</button>
												|
												<button class="btn btn-link btn-info">
													<i class="fa fa-thumbs-up btn-icon-wrapper"></i>  &nbsp;<span id="votes"><c:set var="votes" value="${ (entry.points-20)/2 }"></c:set>
													<fmt:formatNumber maxFractionDigits="0" value="${votes}" type="number"/> &nbsp;</span>
												</button>
											</div>
										</div>
										<div class="card-body">
											<p>${entry.entry_summary}</p>
											<div class="divider"></div>
											<c:choose>
												<c:when test="${entry.submission_type eq 'painting' }">
													<div class="center thumbnail"><img alt="" class="img-responsive" style="display: initial; max-width: 100%;"
														src="https://mysuperbrain.com/user_images/Comp_Sub/${entry.submission_type}/${entry.submission_file_name}">
													</div>
												</c:when>
												<c:otherwise>
													<div class="thumbnailembed-responsive embed-responsive-16by9">
														<video width="400" controls class="embed-responsive-item">
															<source
																src="https://mysuperbrain.com/user_images/Comp_Sub/${entry.submission_type}/${entry.submission_file_name}"
																type="video/mp4">
															<source
																src="https://mysuperbrain.com/user_images/Comp_Sub/${entry.submission_type}/${entry.submission_file_name}"
																type="video/ogg">
															<p>Your browser does not support HTML5 video.</p>
														</video>
													</div>
												</c:otherwise>
											</c:choose>
										</div>
										<div class="d-block text-right card-footer">
											<c:if test="${not empty previousEntry}">
												<a href="${pageContext.request.contextPath}/school/view/mst_competition/${previousEntry}"
													 class="btn btn-info btn-lg">Previous</a>											 
		                    				</c:if>
		                    				<c:if test="${not empty nextEntry}">
												<a href="${pageContext.request.contextPath}/school/view/mst_competition/${nextEntry}"
													class="btn btn-success btn-lg">Next</a>											 
		                      				</c:if>
										</div>
									</div>
									<div class="col-md-3">
										<br>
										<div class="page-title-actions d-none d-lg-block text-center">
											<div class="alert alert-success hide" id="like-msg">
												<button class="close" data-dismiss="alert">
													<i class="ace-icon fa fa-times"></i>
												</button>
												<i class="fa fa-check"></i>&nbsp;Thank you for your Like
											</div>
											<div class="alert alert-danger hide" id="liked-msg">
												<button class="close" data-dismiss="alert">
													<i class="ace-icon fa fa-times"></i>
												</button>
												<i class="fa fa-close"></i>&nbsp;Already Liked
											</div>
											<form action="#" id="like-form">
												<input type="hidden" name="entry_username" value="${entry.user_name}">
												<input type="hidden" name="entry_id" value="${entry.id}">
												<input type="hidden" name="comp_type" value="${entry.submission_type }">
												<input type="hidden" name="username" id="fb_username">
												<input type="hidden" name="fb_login" id="fb_login">
												<button type="submit" data-toggle="tooltip" id="like"
													title="Like This Entry" data-placement="bottom"
													class="btn-shadow mr-3 btn btn-warning">
													<i class="fa fa-thumbs-up fa-3x"></i>
												</button>
											</form>
											<button type="button" class="btn mr-2 mb-2 btn-primary hide" data-toggle="modal" data-target="#exampleModal"
												id="clickForLike">Basic Modal
										  	</button>
										</div>
										<div class="col-md-12">
											<p>&nbsp;</p>
											<div class="fade show" id="fan-alert" role="alert"></div>
											<button class="btn btn-sm btn-block btn-outline-success"
												id="fan-button" onclick="beAFan()" data-loading-text="Please Wait....."> <i
												class="fa fa-podcast fa-2x icon-gradient bg-grow-early"></i> &nbsp; I am a fan
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row d-block d-sm-none">
						<div class="cardbox shadow-lg bg-white">
							 <div class="cardbox-heading" style="padding-right: 0px; padding-bottom: 0px;">
							  <div class="row">
							  	<div class="col-sm-7 col-7 row">
								   <div class="d-flex col-sm-4 col-4" style="padding-left: 5px;">
										<a href="">
										<img class="img-fluid rounded-circle" 
											src="https://www.mysuperbrain.com/milo/profile/image/${entry.user_name }" 
											alt="User"></a>
								   </div>
								   <div class="col-sm-8 col-8" style="padding-left: 0px;">
								    <h5 class="m-0" style="text-transform: capitalize; font-weight: 700;">${entry.user_name }</h5>
									<!-- <small><span><i class="icon ion-md-pin"></i> Nairobi, Kenya</span></small> -->
									<small><span style="text-transform: capitalize; 
										color: #7c7979; font-weight: 500;"><i class="icon ion-md-time"></i> ${entry.submission_type }</span></small>
								   </div>
								  </div>
								  <div class="col-sm-5 col-5" style="padding-right: 5px;">
								  <div style="float: right;">
								  	<button class="btn btn-info btn-pill btn-sm" id="fan-button" onclick="beAFan()"
												data-loading-text="Please Wait.....">I am a Fan
									</button></div>
								  </div>
							  </div><!--/ media -->
							  <div class="alert" style="padding-bottom: 0px !important; 
							  	padding-left: 5px; margin-bottom: 0px !important;">
							  	<p><b>Summary:</b> ${entry.entry_summary }</p>
							  </div>
							 </div><!--/ cardbox-heading -->
							 <div class="cardbox-item">
							 	<c:choose>
									<c:when test="${entry.submission_type eq 'painting' }">
										<div class="text-center thumbnail" style="border: #08080e85 solid 2px;">
											<img alt="Entry Image" class="img-fluid" style="max-height: 250px; display: initial;"
											src="https://mysuperbrain.com/user_images/Comp_Sub/${entry.submission_type}/${entry.submission_file_name}">
										</div>
									</c:when>
									<c:otherwise>
										<div class="thumbnailembed-responsive embed-responsive-16by9" style="border: #08080e85 solid 2px;">
											<video width="400" height="300" autoplay class="embed-responsive-item">
												<source
													src="https://mysuperbrain.com/user_images/Comp_Sub/${entry.submission_type}/${entry.submission_file_name}"
													type="video/mp4">
												<source
													src="https://mysuperbrain.com/user_images/Comp_Sub/${entry.submission_type}/${entry.submission_file_name}"
													type="video/ogg">
												<p>Your browser does not support HTML5 video.</p>
											</video>
										</div>
									</c:otherwise>
								</c:choose>
							 </div><!--/ cardbox-item -->
							 <div class="cardbox-base row">
							 	<div class="col-sm-4 col-4">
							 		<div class="row">
									 	<div class="col-sm-6 col-6 text-center">
									 		<form action="#" id="liked-form">
												<input type="hidden" name="entry_username" value="${entry.user_name}">
												<input type="hidden" name="entry_id" value="${entry.id}">
												<input type="hidden" name="comp_type" value="${entry.submission_type }">
												<input type="hidden" name="username" id="fb_username">
												<input type="hidden" name="fb_login" id="fb_login">
												<button type="submit" style="background: none; border: none; padding: 0px;" id="liked">
													<img id="liked" src="<%=request.getContextPath() %>/img/claps.png" alt="claps icon"
												 		style="width: 45px;" /></button>
											</form>
									 		<p>
									 			<c:set var="votes">
									 				<fmt:formatNumber type="number" maxFractionDigits="0" 
									 					value="${(entry.points-20)/2 }" /></c:set>
									 		<span id="voted">${votes }</span>
									 		<%-- <span id="voted">${(entry.points-20)/2 }</span></p> --%>
									 	</div>
									 	<div class="col-sm-6 col-6 text-center">
									 		<img src="<%=request.getContextPath() %>/img/views.png" alt="views icon"
									 			style="width: 45px;" />
									 		<p>${entry.visits }</p>
									 	</div>
									 </div>
								 </div>
							 	<div class="col-sm-8 col-8 alert">
							 		<p style="float: right;"><b>Share :</b>
							 			<%-- <img src="<%=request.getContextPath() %>/img/social/facebook.png" 
									 			class="fb-icon" style="width: 45px;" alt="facebook icon" />
							 			<img src="<%=request.getContextPath() %>/img/social/twitter.png" 
									 			class="tw-icon" style="width: 45px;" alt="twitter icon" />
							 			<a href="https://api.whatsapp.com/send?text=https://mysuperbrain.com/school/view/mst_competition/${entry.id}"
							 				target="_blank">
							 				<img src="<%=request.getContextPath() %>/img/social/whatsapp.png" 
									 			style="width: 45px;" alt="whatsapp icon" /></a> --%>
									 	<%-- <img src="<%=request.getContextPath() %>/img/social/copy.png"  --%>
									 	<button onclick="copyToClipboard('#copy-link')"
									 		class="btn btn-success btn-sm">COPY LINK</button><!--  style="width: 45px;" alt="twitter icon" /> -->
							 		</p>
							 	</div>
							  <%-- <ul class="float-right">
							   <li><a><i class="fa fa-eye"></i></a></li>
							   <li><a><em class="mr-5">${entry.visits }</em></a></li>
							   <!-- <li><a><i class="fa fa-share-alt"></i></a></li>
							   <li><a><em class="mr-3">03</em></a></li> -->
							  </ul> --%>
							  <%-- <ul>
							   <li>
							   	<form action="#" id="liked-form">
									<input type="hidden" name="entry_username" value="${entry.user_name}">
									<input type="hidden" name="entry_id" value="${entry.id}">
									<input type="hidden" name="comp_type" value="${entry.submission_type }">
									<input type="hidden" name="username" id="fb_username">
									<input type="hidden" name="fb_login" id="fb_login">
									<button type="submit" style="background: none;" id="liked"
										class="btn">
							   			<i class="fas fa-thumbs-up"></i>
									</button>
								</form></li>
							   <li><a><span id="voted">${votes } Likes</span></a></li>
							  </ul> --%>			   
							 </div><!--/ cardbox-base -->
							 <%-- <div class="cardbox-comments">
							  <span class="comment-avatar float-left">
							   <a href="">
							   <c:if test="${not empty SchoolStudent}">
							   <img class="rounded-circle" src="https://www.mysuperbrain.com/milo/profile/image/${SchoolStudent.username }" alt="...">
							   </c:if>
							   </a>                            
							  </span>
							  <div class="search">
							   <input placeholder="Write a comment" type="text">
							   <button><i class="fa fa-camera"></i></button>
							  </div><!--/. Search -->
							 </div> --%><!--/ cardbox-like -->			  
									
							</div>
					</div>
					
				</div>
				<jsp:include page="/common/footer.jsp"></jsp:include>
			</div>
		</div>
	</div>
	<span class="hide" id="copy-link">https://mysuperbrain.com/school/view/mst_competition/${entry.id}</span>
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	    <div class="modal-dialog" role="document">
	        <div class="modal-content">
	            <div class="modal-header">
	                <h5 class="modal-title" id="exampleModalLabel">Login Required</h5>
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                    <span aria-hidden="true">&times;</span>
	                </button>
	            </div>
	            <div class="modal-body">
	                <p class="mb-0">Student need to login to like an entry</p>
	            </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
	                <button type="button" class="btn btn-primary" onclick="redirectLogin()">Login</button>
	            </div>
	        </div>
	    </div>
	</div>
	<!-- jQuery library -->
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
    <script src="<%=request.getContextPath() %>/assets/toastr.min.js"></script>
    <script src="<%=request.getContextPath() %>/assets/toastr-init.js"></script>
	<script>

		function copyToClipboard(element) {
		  var $temp = $("<input>");
		  $("body").append($temp);
		  $temp.val($(element).text()).select();
		  document.execCommand("copy");
		  $temp.remove();
		  toastr.success(
		      "Link copied to clipboard.",
		      { showMethod: "slideDown", hideMethod: "slideUp", timeOut: 2000 }
		    );
		}
		
		$("#success-alert").on("click", function () {
		    toastr.success(
		      "Your ticket has been created",
		      { showMethod: "slideDown", hideMethod: "slideUp", timeOut: 2000 }
		    );
		  });

		$('document').ready(function() {
			
			$('.fb-icon').click(function(){
				
				 window.open('http://www.facebook.com/sharer.php?u=https://mysuperbrain.com/school/view/mst_competition/${entry.id}','MySuperBrain Entry Share', 
				  'width=626,height=436');    
				return false;
			});
			$('.tw-icon').click(function(){
				window.open(
						  'https://twitter.com/share?url=https://mysuperbrain.com/school/view/mst_competition/${entry.id}','MySuperBrain Entry Share', 
				  'width=626,height=436');  
							return false;		
			});
			
			$('#entries').addClass('mm-active');
			$('[data-toggle=tooltip]').tooltip();
		});
	</script>
	<script>
		function getParameterByName(name) {
		    var match = RegExp('[?&]' + name + '=([^&]*)').exec(window.location.search);
		    return match && decodeURIComponent(match[1].replace(/\+/g, ' '));
		}
		jQuery(document).ready(function($) {
			
			if (!!(getParameterByName('vote')) && getParameterByName('vote') == 'yes' ){
				voteEntry();
			}
			$("#like-form").submit(function(event) {
				event.preventDefault();
				voteEntry();
			});
			$("#liked-form").submit(function(event) {
				event.preventDefault();
				voteEntry();
			});
		});
		function voteEntryViaFB(email){
			$('#fb_username').val(email);
			$('#fb_login').val('yes');
			voteEntry();
		}
		function voteEntry() {
			var formData=$("#like-form").serialize();
			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/school/validate-user-like",
				data : formData,
				timeout : 100000,
				beforeSend:function(){
					$('#like').prop('disabled',true);
				},
				success : function(data) {
					console.log("SUCCESS: ", data);
					if(data=='voted'){
						alert("Thank you for liking the entry.");
						var points=$('#points').text();
						$('#points').text(parseInt(points)+2);
						var votes=$('#votes').text();
						$('#votes').text(parseInt(votes)+1);
						$('#voted').text(parseInt(votes)+1);
					}else if(data=='already-voted'){
						alert("You already voted,come again tomorrow. Thank you");
					}
					else if(data=='nouser'){
						$('#clickForLike').click();
					}		
					$('#fb_username').val("");
					$('#fb_login').val("");
					$('#like').prop('disabled',false);
				},
				error : function(e) {
					console.log("ERROR: ", e);
					bootbox.alert(e);
					$('#like').prop('disabled',false);
				},
				done : function(e) {
					console.log("DONE");
					$('#like').prop('disabled',false);
					$('#fb_username').val("");
					$('#fb_login').val("");
				}
			});
		}
		function redirectLogin() {
	  	  var next="${requestScope['javax.servlet.forward.request_uri']}".replace('${pageContext.request.contextPath}',"");
				location.href="${pageContext.request.contextPath}/school/login?invalidsession=true&next="+next+"?vote=yes";
	    }
	</script>
	<script>
		$('document').ready(function(){
			if($('#premium').val()==0){
				$('#clickForPremium').click();
			}
		});
		function beAFan() {
			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/school/beafan",
				data : {"username":'${entry.user_name}'},
				timeout : 100000,
				beforeSend:function(){
					$("#fan-button").button('loading');
				},
				success : function(data) {
					
					console.log("SUCCESS: ", data);
					
					if(data=='login-required'){
						bootbox.confirm("Please login to become a fan.Login now?",function(yes){
							if(yes){
								 var next="${requestScope['javax.servlet.forward.request_uri']}".replace('${pageContext.request.contextPath}',"");
									location.href="${pageContext.request.contextPath}/school/login?invalidsession=true&next="+next;
							}else{
								return true;
							}
						});
					}else
					if(data=='success'){
						$('#fan-alert').removeClass();
						$('#fan-alert').addClass('alert alert-info');
						$('#fan-alert').text('You are now a fan');
						$('#fan-count').text(parseInt($('#fan-count').text())+1);
					}else
					if(data=='fan'){
						$('#fan-alert').removeClass();
						$('#fan-alert').addClass('alert alert-warning');
						$('#fan-alert').text('You are already a fan');
					}
						
					
					$("#fan-button").button('reset');
				},
				error : function(e) {
					console.log("ERROR: ", e);
					bootbox.alert(e);
					$("#fan-button").button('reset');
				},
				done : function(e) {
					console.log("DONE");
					$("#fan-button").button('reset');
					
				}
			});

		}
	</script>
</body>
</html>