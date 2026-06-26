<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<!DOCTYPE html>
	<html>


<head>
<!-- <title>Hospital Management Syatem</title>
=======
	<head>
		<!-- <title>SPTI</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
		integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">

		</script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous">

		</script> -->

		<style type="text/css">
			
			.errmsg {
				color: red;
				display: none;
			}

			.errmsgs,
			.errmsgData {
				color: red;
			}
		</style>
	</head>

	<body>
		<jsp:include page="../common/header.jsp"></jsp:include>

		<div class="app-hero-header d-flex align-items-center">

			<!-- Breadcrumb starts -->
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="ri-home-8-line lh-1 pe-3 me-3 border-end"></i> <a
						href="/dashboards/">Home</a></li>
				<li class="breadcrumb-item text-primary" aria-current="page">
					Add Staff</li>
			</ol>
			<!-- Breadcrumb ends -->

		</div>
		<div class="app-container">

			<div class="app-body">
				<!-- Row starts -->
				<div class="row gx-3">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Add staff</h5>
							</div>

							<div class="card-body">
								<form class="login-form" action="/hrs/staffs" method="post">
									
									<div class="row gx-3">
										<div class="mt-4 col-xxl-3 col-lg-4 col-sm-6">
											<label class="form-label">Email</label><span class="text-danger">*</span>

											<input id="email" type="email" name="email" class="form-control"
												placeholder="riya@gmail.com" value="${user.email} ${email}"
												required="required">
											<span id="emailError" class="errmsg">Invalid Email</span>
											<span id="errmsgData" class="errmsgData">${Errormail} ${mailerror}</span>
										</div>
										<div class="mt-4 col-xxl-3 col-lg-4 col-sm-6">
											<label class="form-label">First Name</label> <span
												class="text-danger">*</span>
											<input id="firstName" type="text" name="firstName" class="form-control"
												min="2" placeholder="riya" minlength="2" maxlength="30"
												value="${user.firstName}" required="required">
											<span id="FnameError" class="errmsg">Invalid First Name</span>
										</div>

										<div class="mt-4 col-xxl-3 col-lg-4 col-sm-6">
											<label class="form-label">Last Name</label> <span
												class="text-danger">*</span>
											<input id="lastname" type="text" name="lastName" class="form-control"
												placeholder="cena" minlength="2" maxlength="30" value="${user.lastName}"
												required="required">
											<span id="LnameError" class="errmsg">Invalid Last Name </span>
										</div>
										<div class="mt-4 col-xxl-3 col-lg-4 col-sm-6">
											<label class="form-label">Phone Number</label> <span
												class="text-danger">*</span>
											<input id="PhoneNumber" type="text" name="phoneNumber" class="form-control"
												placeholder="e.g 9090981981" value="${user.phoneNumber}" maxlength="10"
												minlength="10" required="required">
											<!-- <span id="#errorMsg" class="errmsg">Enter a valid 10-digit phone number.</span> -->
										</div>
										<div class="mt-4 col-xxl-3 col-lg-4 col-sm-6">
											<!-- <label class="form-label">Role</label> <span class="text-danger">*</span>
											<select id="role" name="role" class="form-select" required="required">
												<option disabled="disabled" selected>role</option>
												<option value="Nurse">Nurse </option>
												<option value="Receptionist">Receptionist </option>
												<option value="Cleaner">Cleaner </option>

											</select> -->

											<label class="form-label">Role</label> <span class="mandatory-sign">*</span>
											<select name="role" class="form-select" required="required">

												<c:choose>
													<c:when test="${user.role == 'Nurse'}">
														<option value="Nurse" selected>Nurse</option>
														<option value="Receptionist">Receptionist</option>
														<option value="Security">Security</option>
													</c:when>
													<c:when test="${user.role == 'Receptionist'}">
														<option value="Nurse">Nurse</option>
														<option value="Receptionist" selected>Receptionist
														</option>
														<option value="Security">Security</option>
													</c:when>
													<c:when test="${user.role == 'Security'}">
														<option value="Nurse">Nurse</option>
														<option value="Receptionist">Receptionist</option>
														<option value="Security" selected>Security</option>
													</c:when>
													<c:otherwise>
														<option disabled="disabled" selected>Select
															role</option>
														<option value="Nurse">Nurse</option>
														<option value="Receptionist">Receptionist</option>
														<option value="Security">Security</option>
													</c:otherwise>
												</c:choose>

											</select>

											<span id="statusError" class="errmsgs">${Errormsg}</span>
										</div>
										<div class="mt-4 col-xxl-3 col-lg-4 col-sm-6">
											<label class="form-label">Experience</label><span
												class="text-danger">*</span>
											<!-- <input id="experience" type="text" name="experience" class="form-control"
											maxlength="2" placeholder="e.g 2 years" required="required"> -->

											<!-- <select id="experience" name="experience" class="form-select"
												required="required">
												<option disabled="disabled" selected>Select Year</option>
												<option value="2">2 ${user.experience}</option>
												<option value="3">3 ${user.experience}</option>
												<option value="4">4 ${user.experience}</option>
												<option value="5">5 ${user.experience}</option>
												<option value="1">1 ${user.experience}</option>
												<option value="6">6 ${user.experience}</option>
												<option value="7">7 ${user.experience}</option>
												<option value="8">8 ${user.experience}</option>
												<option value="9">9 ${user.experience}</option>
												<option value="10">10 ${user.experience}</option>
												<option value="11">11 ${user.experience}</option>
												<option value="12">12 ${user.experience}</option>
												<option value="13">13 ${user.experience}</option>
												<option value="14">14 ${user.experience}</option>
												<option value="15">15 ${user.experience}</option>
												<option value="16">16 ${user.experience}</option>
												<option value="17">17 ${user.experience}</option>
												<option value="18">18 ${user.experience}</option>
												<option value="19">19 ${user.experience}</option>
												<option value="20">20 ${user.experience}</option>
												<option value="21">21 ${user.experience}</option>
												<option value="22">22 ${user.experience}</option>
												<option value="23">23 ${user.experience}</option>
												<option value="24">24 ${user.experience}</option>
												<option value="25">25 ${user.experience}</option>
												<option value="26">26 ${user.experience}</option>
												<option value="27">27 ${user.experience}</option>
												<option value="28">28 ${user.experience}</option>
												<option value="29">29 ${user.experience}</option>
												<option value="30">30 ${user.experience}</option>
											</select> -->

											<select id="experience" name="experience" class="form-select" required="required">
												<option disabled="disabled" <c:if test="${user.experience == null}">selected</c:if>>Select Year</option>
												<option value="1" <c:if test="${user.experience == 1}">selected</c:if>>1</option>
												<option value="2" <c:if test="${user.experience == 2}">selected</c:if>>2</option>
												<option value="3" <c:if test="${user.experience == 3}">selected</c:if>>3</option>
												<option value="4" <c:if test="${user.experience == 4}">selected</c:if>>4</option>
												<option value="5" <c:if test="${user.experience == 5}">selected</c:if>>5</option>
												<option value="6" <c:if test="${user.experience == 6}">selected</c:if>>6</option>
												<option value="7" <c:if test="${user.experience == 7}">selected</c:if>>7</option>
												<option value="8" <c:if test="${user.experience == 8}">selected</c:if>>8</option>
												<option value="9" <c:if test="${user.experience == 9}">selected</c:if>>9</option>
												<option value="10" <c:if test="${user.experience == 10}">selected</c:if>>10</option>
												<option value="11" <c:if test="${user.experience == 11}">selected</c:if>>11</option>
												<option value="12" <c:if test="${user.experience == 12}">selected</c:if>>12</option>
												<option value="13" <c:if test="${user.experience == 13}">selected</c:if>>13</option>
												<option value="14" <c:if test="${user.experience == 14}">selected</c:if>>14</option>
												<option value="15" <c:if test="${user.experience == 15}">selected</c:if>>15</option>
												<option value="16" <c:if test="${user.experience == 16}">selected</c:if>>16</option>
												<option value="17" <c:if test="${user.experience == 17}">selected</c:if>>17</option>
												<option value="18" <c:if test="${user.experience == 18}">selected</c:if>>18</option>
												<option value="19" <c:if test="${user.experience == 19}">selected</c:if>>19</option>
												<option value="20" <c:if test="${user.experience == 20}">selected</c:if>>20</option>
												<option value="21" <c:if test="${user.experience == 21}">selected</c:if>>21</option>
												<option value="22" <c:if test="${user.experience == 22}">selected</c:if>>22</option>
												<option value="23" <c:if test="${user.experience == 23}">selected</c:if>>23</option>
												<option value="24" <c:if test="${user.experience == 24}">selected</c:if>>24</option>
												<option value="25" <c:if test="${user.experience == 25}">selected</c:if>>25</option>
												<option value="26" <c:if test="${user.experience == 26}">selected</c:if>>26</option>
												<option value="27" <c:if test="${user.experience == 27}">selected</c:if>>27</option>
												<option value="28" <c:if test="${user.experience == 28}">selected</c:if>>28</option>
												<option value="29" <c:if test="${user.experience == 29}">selected</c:if>>29</option>
												<option value="30" <c:if test="${user.experience == 30}">selected</c:if>>30</option>
											</select>
											

											<span id="experienceError" class="errmsgs">${Errormsgs}</span>
										</div>

										<div class="mt-4 col-xxl-3 col-lg-4 col-sm-6">
											<label lass="form-label">Status</label><span class="text-danger">*</span>
											<select id="status" name="status" class="form-select mt-2"
												required="required">
												<option disabled="disabled">Select status</option>
												<option selected value="Active">Active</option>
												<option value="Inactive">Inactive</option>
												<option value="Away">Away</option>
											</select>
											<!-- <span id="statusError" class="errmsgs">${Errormsg}</span> -->
										</div>
										<div class="mt-4  col-xxl-3 col-lg-4 col-sm-6">
											<label class="form-label">Address</label><span class="text-danger">*</span>
											<textarea class="form-control" name="address" rows="1"
												placeholder="eg.Hadpsar, pune"
												required="required">${user.address}</textarea>

										</div>

										<div class="mt-4 col-sm-12">
											<div class="d-flex gap-2 justify-content-end">
												<a type="button" class="btn btn-outline-secondary"
													onclick="window.history.back()"> Cancel </a>

												<button type="submit" class="btn btn-primary">Add
													staff</button>
											</div>
										</div>
									</div>
								</form>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script type="text/javascript">
			$(window).on('load', function () {
				$('#addUserModel').modal('show');
			});

		
			var emailRegex = /^[a-zA-Z0-9._%+-]+@gmail\.com$/;

			$("#email").on("mouseout", function () {
				var email = $(this).val();

				if (email === "") {
					$("#emailError").css("display", "none");
				} else if (emailRegex.test(email)) {
					$("#emailError").css("display", "none");
				} else {
					$("#emailError").css("display", "block");
				}
			});

			

			var nameRegex = /^[a-zA-Z]+$/;

			$("#firstName").on("keyup", function () {
				var firstName = $(this).val();

				if (firstName === "") {
					$("#FnameError").css("display", "none");
				} else if (nameRegex.test(firstName)) {
					$("#FnameError").css("display", "none");
				} else {
					$("#FnameError").css("display", "block");
				}
			});

			

			$("#lastname").on("keyup", function () {
				var lastName = $(this).val();

				if (lastName === "") {
					$("#LnameError").css("display", "none");
				} else if (nameRegex.test(lastName)) {
					$("#LnameError").css("display", "none");
				} else {
					$("#LnameError").css("display", "block");
				}
			});


			



			var minLength = 10;
			var maxLength = 10;

			$("#PhoneNumber").on("keyup", function () {
				var phone = $(this).val();

				$(this).val(phone.replace(/[^0-9]/g, ''));

				if (phone.length > maxLength) {
					$(this).val(phone.substring(0, maxLength));
				}
			});



			

			$('#experience').change(function () {
				var selectedValue = $(this).val();

				if (selectedValue !== "") {
					$('#experienceError').hide();
				}
			});

			$('#role').change(function () {
				var selectedValue = $(this).val();

				if (selectedValue !== "") {
					$('#statusError').hide();
				}
			});

			const emailInput = document.getElementById('email');
			const errorMessage = document.getElementById('errmsgData');


			emailInput.addEventListener('input', function () {
				if (this.value.trim() === '') {
					errorMessage.style.display = 'none';
				}
			});


		</script>
	</body>

	</html>