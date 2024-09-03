
<div class="app-wrapper-footer d-block d-sm-none">
	<div class="app-footer">
		<div class="app-footer__inner">
			<div class="app-footer-left">
				<ul class="nav">
					<li class="nav-item"><a href="<%=request.getContextPath() %>/"
						class="nav-link"> Home </a></li>
					<li class="nav-item"><a href="<%=request.getContextPath() %>/school/aboutus"
						class="nav-link"> About Us </a></li>
				</ul>
			</div>
			<div class="app-footer-left">
				<ul class="nav">
					<li class="nav-item"><a href="<%=request.getContextPath() %>/milo/termsandconditions"
						class="nav-link"> Terms & Conditions </a></li>
					<li class="nav-item"><a href="<%=request.getContextPath() %>/milo/faq"
						class="nav-link"> FAQ
					</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>

<div class="app-wrapper-footer d-none d-lg-block" style="border-top: 10px solid #efa707; background: #0baf4d; color: #FFF; padding-top: 20px; margin-top: 30px;">
	<div class="app-footer" style="border-top: 0px;">
		<div class="app-footer__inner" style="background: #0baf4d; color: #FFF; border-left: 0px;">
			<div class="col-md-3">
				<!-- <p><small>Follow us on:
				<a href="#"><img src="https://img.icons8.com/material/72/facebook--v1.png" 
					style="height: 20px;"/></a><a href="#"><img src="https://img.icons8.com/ios-filled/72/twitter-squared.png" 
					style="height: 20px;"/></a><a href="#"><img src="https://img.icons8.com/ios-glyphs/72/youtube-play.png" 
					style="height: 20px;"/></a><a href="#"><img src="https://img.icons8.com/material/72/instagram-new--v1.png" 
					style="height: 20px;"/></a></small></p> -->
				<img src="<%=request.getContextPath() %>/img/milo/Milo-Box.png" style="height: 200px;"/>
			</div>
			<div class=" col-md-5" style="border-left: 1px solid #efa707; border-right: 1px solid #efa707;">
				<!-- <h5>Media</h5> -->
				<ul class="text-center" style="list-style: none; padding-left: 0px;">
					<li class="nav-item"><a href="<%=request.getContextPath() %>/milo/login" style="color: #FFF;"
						class="nav-link"> Login </a></li>
					<li class="nav-item"><a href="<%=request.getContextPath() %>/milo/register" style="color: #FFF;"
						class="nav-link"> Register </a></li>
					<li class="nav-item"><a href="<%=request.getContextPath() %>/milo/faq" style="color: #FFF;"
						class="nav-link"> FAQ </a></li>
					<%-- <li class="nav-item"><a href="<%=request.getContextPath() %>/milo/studenthof" style="color: #FFF;"
						class="nav-link"> Milo Champ Squad Leader Board </a></li> --%>
					<li class="nav-item"><a href="<%=request.getContextPath() %>/milo/privacy" style="color: #FFF;"
						class="nav-link"> Privacy Policy </a></li>
					<li class="nav-item"><a href="<%=request.getContextPath() %>/milo/termsandconditions" style="color: #FFF;"
						class="nav-link"> Terms & Conditions </a></li>
				</ul>
			</div>
			<div class="col-md-4 text-center">
				<p><small>Follow us on:</small>
				<small><a href="https://www.facebook.com/NestleMILOIndia/"><img src="https://img.icons8.com/color/2x/facebook.png" 
					style="height: 25px;"/></a><a href="https://twitter.com/NestleMILOIndia?s=08"><img src="https://img.icons8.com/color/2x/twitter-squared.png" 
					style="height: 25px;"/></a><a href="https://www.instagram.com/nestlemiloindia/?igshid=6ubkrgbpnw10"><img src="https://img.icons8.com/color/2x/instagram-new.png" 
					style="height: 25px;"/></a></small></p>
				<a href="https://l.bigbasket.com/sQgU3u4mH8" target="_blank" class="btn btn-sm btn-warning btn-wide">
					<i class="fa fa-shopping-cart"></i>&nbsp;SHOP NOW
				</a>
				<p>Join our Mailing list</p>
				<p id="successMsg" style="display: none;" class="alert alert-success">Subscribed.</p>
				<p id="errorMsg" style="display: none;" class="alert alert-warning">Please Try again later.</p>
				<p id="emptyMsg" style="display: none;" class="alert alert-danger">Enter Email address.</p>
				<p id="subscribedMsg" style="display: none;" class="alert alert-danger">Email already subscribed.</p>
				<form id="email-form" action="#">
					<div class="row">
						<div class="col-md-8 position-relative form-group">
							<div class="input-group">
		                        <input placeholder="Email here" type="email"
		                          required name="mail" id="mail" class="form-control">
							</div>
						</div>
						<div class="col-md-4">
							<button type="submit" id="getotp" class="btn btn-light btn-wide">SUBSCRIBE</button>
						</div>
					</div>
				</form>
				<!-- <a href="#" class="btn btn-light btn-wide">ENTER YOUR EMAIL ADDRESS</a> -->
				<p><small>Subscribe to receive offers on products and other program updates</small></p>
			</div>
		</div>
		<div class="row"><p>&nbsp;</p></div>
	</div>
</div>
<!--Start of Tawk.to Script-->
<style>
	.app-main{
		overflow: hidden;
	}
</style>
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
<script
		src="<%=request.getContextPath()%>/assets/jquery.js"></script>
<script>
	$('document').ready(function(){
		$("#email-form").submit(function(event) {
			event.preventDefault();
			saveEmail();
		});
	});	

function saveEmail(){
	var formData=$("#email-form").serialize();
	$.ajax({
		type : "POST",
		url : "${pageContext.request.contextPath}/milo/save-email",
		data : formData,
		//data : {"mail":$('#mail').text()},
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
			bootbox.alert(e);
			$("#getotp").button('reset');
		},
		done : function(e) {
			console.log("DONE");
			$("#getotp").button('reset');
			
		}
	});
}
</script>