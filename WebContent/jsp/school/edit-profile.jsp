<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Language" content="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Edit Profile | MySuperBrain</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
	content="Know about what you can get at MySuperBrain.com">
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
<link
	href="<%=request.getContextPath()%>/assets/main.d810cf0ae7f39f28f336.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
<style>
/* .forms-wizard li.done::after, .forms-wizard li.done::before {
    background: #3ac47d;
} */
.forms-wizard li.active::after, .forms-wizard li.active::before {
    background: #3f6ad8;
}
.forms-wizard li.done em {
    font-family: 'Linearicons-Free';
    background: #3ac47d;
    overflow: hidden;
}
.forms-wizard li.active em {
    background: #3f6ad8;
}
.lnr-checkmark-circle:before, .forms-wizard li.done em:before {
	content: none;
}
.app-wrapper-footer {
	padding-top: 80px !important;
}
</style>
</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header" style="background: #FFF;">
		<jsp:include page="/common/schoolheader.jsp"></jsp:include>
		<!-- Theme settings removed from here -->
		<div class="app-main">
			<jsp:include page="/common/schoolmenu.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner">
					<div class="app-page-title">
						<div class="page-title-wrapper">
							<div class="page-title-heading">
								<div class="page-title-icon">
									<i class="fa fa-edit icon-gradient bg-mean-fruit"> </i>
								</div>
								<div>
									EDIT PROFILE
									<!-- <div class="page-title-subheading pull-right">
										
									</div> -->
								</div>
							</div>
							<div class="page-title-actions">
                                <%-- <a href="<%=request.getContextPath() %>/milo/profile/${user.username}"
											class="btn btn-sm btn-square btn-info">VIEW PUBLIC PROFILE</a> --%>
                            </div>
						</div>
					</div>
					<div class="tab-content">
						<div class="tab-pane tabs-animation fade show active"
							id="tab-content-0" role="tabpanel">
							<div class="main-card mb-3 card">
								<div class="card-body">
									<c:if test="${param.success eq true }">
										<div class="alert alert-success">Updated Successfully</div>
									</c:if>
									<div class="">
										<div class="row">
											<div class="card-body">
												<h5 class="card-title">Your profile is ${profilecp }%
													complete</h5>
												<div class="mb-3 progress">
													<div class="progress-bar bg-info progress-bar-striped"
														role="progressbar" aria-valuenow="50" aria-valuemin="0"
														aria-valuemax="100" style="width: ${profilecp }%;"></div>
												</div>
											</div>
										</div>
										<div class="col-md-10">
											<div id="smartwizard" class="sw-main sw-theme-default">
												<div class="btn-actions-pane-right">
													<ul class="forms-wizard nav nav-tabs step-anchor">
														<li class="nav-item done active"><a data-toggle="tab" href="#tab-eg2-0"
															class="nav-link"> <em>1</em><span>Profile
																	Picture</span>
														</a></li>
														<li class="nav-item done"><a data-toggle="tab" href="#tab-eg2-1"
															class="nav-link"> <em>2</em><span>Personal
																	Information</span>
														</a></li>
														<li class="nav-item done"><a data-toggle="tab" href="#tab-eg2-2"
															class="nav-link"> <em>3</em><span>Contact
																	Information</span>
														</a></li>
													</ul>
												</div>
												<div class="tab-content">
												<div class="tab-pane active" id="tab-eg2-0" role="tabpanel">
														<div id="accordion" class="accordion-wrapper mb-3">
															<div class="card">
																<div id="headingOne" class="card-header">
																	<button type="button" data-toggle="collapse"
																		data-target="#collapseOne" aria-expanded="false"
																		aria-controls="collapseOne"
																		class="text-left m-0 p-0 btn btn-link btn-block">
																		<span class="form-heading">Profile Picture
																			<p>Update your profile picture below</p>
																		</span>
																	</button>
																</div>
																<div data-parent="#accordion" id="collapseOne"
																	aria-labelledby="headingOne" class="collapse show">
																	<div class="card-body">
																		<div class="form-row">
																			<div id="edit-ppicture" style="width: 80%;" class="profile-picture well">
																				<form
																					action="<%=request.getContextPath()%>/school/user/update-profile-picture"
																					id="imageForm" enctype="multipart/form-data"
																					method="POST" autocomplete="off">
																					<%-- <span class="profile-picture">
																			<img id="profilepic" class="editable img-responsive" alt="Profile Pic" src="<%=request.getContextPath()%>/resources/DisplayProfileImage"></img>
																			</span> --%>
																					<img alt="Profile Picture"
																						src="<%=request.getContextPath()%>/resources/DisplaySchoolUserProfileImage"
																						class="img-circle img-thumbnail" id="profilepic" style="height: 250px;">
																					<div class="space-24"></div>
																					<div class="position-relative form-group">
									                                                    <label for="exampleFile" class="">File</label>
									                                                    <input name="photo" id="photo" id="exampleFile" type="file" class="form-control-file">
									                                                    <small class="form-text text-muted">Choose your profile picture
									                                                    </small>
									                                                </div>
																					<div class="position-relative form-group">
																						<button class="col-md-6 btn btn-success btn-md"
																							type="submit" disabled="disabled" id="photo-change">
																							<i class="ace-icon fa fa-save"></i> Save
																						</button>
																					</div>
																				</form>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="tab-pane" id="tab-eg2-1" role="tabpanel">
														<div id="accordion" class="accordion-wrapper mb-3">
															<div class="card">
																<div id="headingOne" class="card-header">
																	<button type="button" data-toggle="collapse"
																		data-target="#collapseOne" aria-expanded="false"
																		aria-controls="collapseOne"
																		class="text-left m-0 p-0 btn btn-link btn-block">
																		<span class="form-heading">Personal Information
																			<p>Enter your user informations below</p>
																		</span>
																	</button>
																</div>
																<div data-parent="#accordion" id="collapseOne"
																	aria-labelledby="headingOne" class="collapse show">
																	<div class="card-body">
																		<div class="form-row">
																			<div id="edit-basic" style="width: 80%;" class="personal-details well">
																				<form
																					action="<%=request.getContextPath()%>/school/user/update-userdetails"
																					id="personal-form" method="post"
																					class="form-horizontal" autocomplete="off">
																					
																					<div class="row">
																						<div class="col-md-12 col-sm-12">
																							<div class="position-relative form-group">
																								<label
																									class=""
																									for="exampleSelectMulti">Name</label>
																									<input class="form-control" type="text"
																										id="form-field-username"
																										placeholder="Firstname" name="name"
																										value="${user.name }">
																							</div>
																							
																							<div class="position-relative form-group">
																								<label
																									for="exampleDob">Date Of Birth</label>
																								
																								<div class="input-group">
														                                        <div class="input-group-prepend">
														                                            <div class="input-group-text">
														                                                <i class="fa fa-calendar-alt"></i>
														                                            </div>
														                                        </div>
														                                        <input class="form-control input-mask-trigger" data-inputmask-alias="datetime"
														                                        	data-inputmask-inputformat="dd/mm/yyyy" id="dob" type="text"
																										data-date-format="dd/MM/yyyy"
																										placeholder="dd/MM/yyyy" name="dob"
																										value="<fmt:formatDate pattern="dd/MM/yyyy" value="${user.dob}"/>" im-insert="false">
														                                    </div>
																								<%-- <div class="input-group">
												                                                    <input id="dob" type="text"
																										data-date-format="dd/MM/yyyy"
																										placeholder="dd/MM/yyyy" name="dob"
																										value="<fmt:formatDate pattern="dd/MM/yyyy" value="${user.dob}"/>" class="form-control" data-toggle="datepicker-icon">
												                                                	<div class="input-group-prepend datepicker-trigger">
												                                                        <div class="input-group-text">
												                                                            <i class="fa fa-calendar-alt"></i>
												                                                        </div>
												                                                    </div>
												                                                </div> --%>
																		
																									<%-- <input class="form-control input-medium date-picker"
																										id="dob" type="text"
																										data-date-format="dd/MM/yyyy"
																										placeholder="dd/MM/yyyy" name="dob"
																										value="<fmt:formatDate pattern="dd/MM/yyyy" value="${user.dob}"/>"> --%>
																									
												                                                    
																							</div>
																							<div class="position-relative form-group">
																								<label
																									for="form-field-standard">Class
																									Studying</label>
																									<input type="hidden" id="standard-value" value="${user.standard }">
																									<select class="form-control"
																										id="standard" name="standard">
																										<option value="" disabled="disabled">Select
																											Class</option>
																										<option value="1">First</option>
																										<option value="2">Second</option>
																										<option value="3">Third</option>
																										<option value="4">Fourth</option>
																										<option value="5">Fifth</option>
																										<option value="6">Sixth</option>
																										<option value="7">Seventh</option>
																										<option value="8">Eighth</option>
																										<option value="9">Ninth</option>
																										<option value="10">Tenth</option>
																										<option value="11">Eleventh</option>
																										<option value="12">Twelfth</option>
																									</select>
																							</div>
																							<div class="position-relative form-group">
																								<label
																									for="form-field-standard">About</label>
																								<textarea name="about" id="about" class="form-control"
																								>${user.about }</textarea>
																							</div>

																						</div>
																					</div>
																					<div class="position-relative form-group">
																						<div class="col-md-offset-3 col-md-9 center">
																							<button class="btn btn-success" type="submit"
																								id="personal-submit" disabled="disabled">
																								<i class="ace-icon fa fa-check"></i> Save
																							</button>
																						</div>
																					</div>

																				</form>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="tab-pane" id="tab-eg2-2" role="tabpanel">
														<div id="accordion" class="accordion-wrapper mb-3">
															<div class="card">
																<div id="headingOne" class="card-header">
																	<button type="button" data-toggle="collapse"
																		data-target="#collapseOne" aria-expanded="false"
																		aria-controls="collapseOne"
																		class="text-left m-0 p-0 btn btn-link btn-block">
																		<span class="form-heading">Contact Information
																			<p>Enter your contact informations below</p>
																		</span>
																	</button>
																</div>
																<div data-parent="#accordion" id="collapseOne"
																	aria-labelledby="headingOne" class="collapse show">
																	<div class="card-body">
																		<div class="form-row">
																			<div id="edit-contact" style="width: 80%;" class="contact-details well">
																				<form
																					action="<%=request.getContextPath()%>/school/user/update-userdetails"
																					id="contact-form" method="post"
																					class="form-horizontal" autocomplete="off">


																					<div class="position-relative form-group">
																						<label
																							class=""
																							for="form-field-mail">Mail</label>

																							<input class="form-control" type="text"
																								id="form-field-mail" placeholder="Mail"
																								name="mail" value="${user.mail }">
																					</div>

																					<div class="position-relative form-group">
																						<label
																							class=""
																							for="form-field-phone">Phone</label>

																							<input class="form-control" type="text"
																								id="form-field-phone" placeholder="Phone"
																								name="phone" value="${user.phone }">
																					</div>
																					<div class="position-relative form-group">
																						<label
																							class=""
																							for="form-field-school">School</label>

																							<input class="form-control" type="text"
																								id="form-field-school" placeholder="School"
																								name="school" value="${user.school }">
																					</div>
																					<div class="position-relative form-group">
																						<label class=""
																							for="form-field-country">Country</label>										
																							<select class="form-control" id="country"
																								name="country">
										
																							</select>
																					</div>
																					<div class="position-relative form-group">
																						<label
																							class=""
																							for="form-field-state">State</label>

																							<select class="form-control" id="state"
																								name="state">

																							</select>
																					</div>
																					<div class="position-relative form-group">
																						<label
																							class=""
																							for="form-field-city">City</label>
																							<input class="form-control" type="text"
																								id="form-field-city" placeholder="City"
																								name="city" value="${user.city }">
																					</div>
																					<div class="position-relative form-group">
																						<label
																							for="form-field-guardian">Parent/Guardian
																							Name</label>
																							<input class="form-control" type="text"
																								id="form-field-guardian"
																								placeholder="guardian name" name="guardian_name"
																								value="${user.guardian_name }">
																					</div>
																					<div class="position-relative form-group">
																						<label
																							for="form-field-guardian">Parent/Guardian
																							Mail</label>
																							<input class="form-control" type="text"
																								id="form-field-guardian"
																								placeholder="guardian mail" name="guardian_mail"
																								value="${user.guardian_mail }">
																					</div>
																					<div
																						class="position-relative form-group clearfix form-actions">
																						<div class="col-md-offset-3 col-md-9 center">
																							<button class="btn btn-success" type="submit"
																								id="contact-submit" disabled="disabled">
																								<i class="ace-icon fa fa-check"></i> Save
																							</button>

																						</div>
																					</div>

																				</form>
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
	<script src="<%=request.getContextPath()%>/assets/county-state.js"></script>
	<script src="<%=request.getContextPath()%>/assets/jquery.validate.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/additional-methods.js"></script>
	<script src="<%=request.getContextPath()%>/assets/bootbox.js"></script>
	<script type="text/javascript">
		$('document').ready(function() {
			populateCountries("country", "state");
			$('#country option:contains("${user.country }")').prop('selected',true);
			populateStates("country", "state");
			$('#state option:contains("${user.state }")').prop('selected',true);
			$('#standard').val('${user.standard }');

			function readURL(input) {
				if (input.files && input.files[0]) {
					var reader = new FileReader();

					reader.onload = function(e) {
						$('#profilepic').attr('src',
								e.target.result);
						$('#photo-change').attr('disabled',
								false);
					}

					reader.readAsDataURL(input.files[0]);
				}
			}

			$("#photo").change(function() {
				readURL(this);
			});
			
			$('#personal-form input[type=text],textarea').on('keyup', function() {
				$('#personal-submit').attr('disabled', false);
			});
			
			$('#personal-form select').on('change', function() {
				$('#personal-submit').attr('disabled', false);
			});
			
			$('#contact-form input[type=text],textarea').on('keyup', function() {
				$('#contact-submit').attr('disabled', false);
			});
			
			$('#contact-form select').on('change', function() {
				$('#contact-submit').attr('disabled', false);
			});

			function getWordCount(wordString) {
				var words = wordString.split(" ");
				words = words.filter(function(words) {
					return words.length > 0
				}).length;
				return words;
			}

			$.validator.addMethod("minwordCount", function(
					value, element, params) {
				var count = getWordCount(value);
				if (count >= params[0]) {
					return true;
				}
			}, "A minimum of {0} words is required here.");
			$.validator.addMethod("maxwordCount", function(
					value, element, params) {
				var count = getWordCount(value);
				if (count <= params[0]) {
					return true;
				}
			}, "A maximum of {0} words allowed here.");
			$.validator.addMethod("myformat", function(value,
					element) {
				// put your own logic here, this is just a (crappy) example
				return value.match(/^\d\d?\/\d\d?\/\d\d\d\d$/);
			}, "Please enter a date in the format dd/MM/yyyy.");
			$.validator.addMethod('filesize', function(value,
					element, param) {
				return this.optional(element)
						|| (element.files[0].size <= param)
			}, 'File size must be less than {0} KB');

			$('#imageForm').validate({
				debug : true,
				errorElement : 'div',
				errorLabelContainer : '.error-div',
				focusInvalid : true,
				rules : {
					photo : {
						required : true,
						extension : "jpg,jpeg,png",
						filesize : 300 * 1024
					}

				},
				messages : {
					photo : {
						extension : "Please select a png,jpg or jpeg file only",
						filesize : "File size must be less than 300KB"
					}
				},
				submitHandler : function(form) {
					form.submit();
				}
			});

			$('#personal-form').validate({

				debug : true,
				errorElement : 'div',
				errorClass : 'col-md-12 error-div',
				focusInvalid : true,
				rules : {
					name : {
						required : true,
						minlength : 8,
						maxlength : 15
					},
					dob : {
						required : true,
						myformat : true
					},
					standard : {
						required : true
					}

				},
				messages : {

				},
				submitHandler : function(form) {
					form.submit();

				}

			});
			$('#contact-form').validate({
				debug : true,
				errorElement : 'div',
				errorClass : 'col-md-12 error-msg',
				focusInvalid : true,
				rules : {
					mail : {
						required : true,
						email : true
					},
					phone : {
						required : true,
						digits : true
					},
					school : {
						required : true,
						minlength : 3,
						maxlength : 80
					},
					state : {
						required : true
					},
					city : {
						required : true,
						minlength : 3,
						maxlength : 80
					},
					guardian_name : {

						minlength : 3,
						maxlength : 15
					},
					guardian_mail : {

						email : true
					}

				},
				messages : {

				},
				submitHandler : function(form) {
					form.submit();

				}

			});

		});
	</script>
</body>
</html>
