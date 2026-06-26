<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>Hospital Management System</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<!-- Import jquery cdn -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous">

			</script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous">

			</script>

<style type="text/css">
.mandatory-sign {
	color: red;
}

#errmsg {
	color: red;
	display: none;
}

#submitBtn {
	display: none;
}
</style>
</head>

<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="app-hero-header d-flex align-items-center">

		<!-- Breadcrumb starts -->
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><i
				class="ri-home-8-line lh-1 pe-3 me-3 border-end"></i> <a
				href="/dashboards/">Home</a></li>
			<li class="breadcrumb-item text-primary" aria-current="page">
				Update Staff</li>
		</ol>
		<!-- Breadcrumb ends -->
	</div>


	<div class="app-container">
		<div class="app-body">
			<div class="row gx-3">
				<div class="col-sm-12">
					<div class="card">
						<div
							class="card-header d-flex align-items-center justify-content-between">
							<h5 class="card-title">Update Staff</h5>

						</div>
						<div class="card-body">
							<div class="table-responsive">
								<div id="basicExample_wrapper"
									class="dataTables_wrapper dt-bootstrap5 no-footer">
									<div class="row">
										<form class="login-form" action="/hrs/staffs/update"
											method="post">
											<div class="row gx-3">
												<div class="col-xxl-3 col-lg-4 col-sm-6">
													<label class="form-label">Email</label> <span
														class="mandatory-sign">*</span> <input type="hidden"
														name="id" class="form-control"
														placeholder="riya@gmail.com" value="${staff.id }">
													<input id="email" type="text" name="email"
														class="form-control" placeholder="riya@gmail.com"
														value="${staff.email }" required="required">
														<span
														id="errmsg">Invalid Email</span>
												</div>
												<div class="col-xxl-3 col-lg-4 col-sm-6">
													<label class="form-label">First Name</label> <span
														class="mandatory-sign">*</span> <input id="name"
														type="text" name="firstName" class="form-control"
														placeholder="riya" value="${staff.firstName }"
														required="required">
												</div>

												<div class="col-xxl-3 col-lg-4 col-sm-6">
													<label class="form-label">Last Name</label> <span
														class="mandatory-sign">*</span> <input id="lastname"
														type="text" name="lastName" class="form-control"
														placeholder="cena" value="${staff.lastName }"
														required="required">
												</div>
												<div class="col-xxl-3 col-lg-4 col-sm-6">
													<label class="form-label">Phone Number</label> <span
														class="mandatory-sign">*</span> <input id="PhoneNumber"
														type="text" name="phoneNumber" class="form-control"
														placeholder="e.g 9090981981" value="${staff.phoneNumber }"
														maxlength="10" required="required"> <span
														id="errmsg">Invalid Phone No.</span>
												</div>
												<div id="statusForm"
													class="mt-5 col-xxl-3 col-lg-4 col-sm-6">
													<label class="form-label">Role</label> <span
														class="mandatory-sign">*</span> <select name="role"
														class="form-select" required="required">

														<c:choose>
															<c:when test="${patient.gender == 'Nurse'}">
																<option value="Nurse" selected>Nurse</option>
																<option value="Receptionist">Receptionist</option>
																<option value="Security">Security</option>
															</c:when>
															<c:when test="${patient.gender == 'Receptionist'}">
																<option value="Nurse">Nurse</option>
																<option value="Receptionist" selected>Receptionist
																</option>
																<option value="Security">Security</option>
															</c:when>
															<c:when test="${patient.gender == 'Security'}">
																<option value="Nurse">Nurse</option>
																<option value="Receptionist">Receptionist</option>
																<option value="Security" selected>Security</option>
															</c:when>
															<c:otherwise>
																<option disabled="disabled" selected>Select
																	role</option>
																<option value="Nurse">Nurse</option>
																<option value="Receptionist">Receptionist</option>
																<option value="Security" selected>Security</option>
															</c:otherwise>
														</c:choose>

													</select>
												</div>
												<div class="mt-5 col-xxl-3 col-lg-4 col-sm-6">
													<label class="form-label">Experience</label> <span
														class="mandatory-sign">*</span> <input id="experience"
														type="text" name="experience" class="form-control"
														placeholder="e.g 2 years" value="${staff.experience }"
														maxlength="2" required="required">
												</div>

												<div class="mt-5 col-xxl-3 col-lg-4 col-sm-6">
													<label class="form-label">Status</label> <span
														class="mandatory-sign">*</span> <select id="status"
														name="status" class="form-select" value="${staff.status }"
														required="required">
														<!-- <option disabled="disabled" selected>Select status</option> -->
														<option value="Active">Active</option>
														<option value="Inactive">Inactive</option>
														<option value="Away">Away</option>
													</select>
												</div>
												<div class="mt-5 col-xxl-3 col-lg-4 col-sm-6">
													<label class="form-label">Address</label> <span
														class="mandatory-sign">*</span>
													<textarea class="form-control" name="address"
														placeholder="eg.Hadpsar, pune" required="required">${staff.address }</textarea>
												</div>

												<div class="col-sm-12">
                                    <div class="d-flex gap-2 justify-content-end">
                                        <a type="button" class="btn btn-outline-secondary" onclick="window.history.back()">Cancel</a>
                                        <button type="submit" class="btn btn-primary">update  staff</button>
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
			</div>
		</div>
	</div>
	</div>
	<script type="text/javascript">
			$(window).on('load', function () {
				$('#addUserModel').modal('show');
			});
			
			 

		      $(document).ready(function () {
				
				
				 var emailRegx = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

					function validateEmail() {
						var email = $("#email").val().trim(); 

						if (!emailRegx.test(email)) {
							$("#errmsg").show();  
							return false;
						}

						$("#errmsg").hide();  
						return true;
					}

					$("#emailForm").on("submit", function(e) {
						if (!validateEmail()) {
							e.preventDefault();  
						} else {
							alert("Form submitted successfully!");
						}
					});

					$("#email").on("input", function () {
						validateEmail();  
					});
				
	    	

				$("#name, #lastname").on("keyup", function () {
					var onlyChar = /^[a-zA-Z]+$/;
					var currentVal = $(this).val();
					if (!onlyChar.test(currentVal)) {
						$(this).val(currentVal.replace(/[^a-zA-Z]/g, ''));
					}
				});

				$("#PhoneNumber , #experience").on("keyup", function () {
					var currentVal = $(this).val();
					$(this).val(currentVal.replace(/[^0-9]/g, ''));
				});
				
				$("#PhoneNumber").on("keyup", function () {
				    var currentVal = $(this).val();
				    
				    currentVal = currentVal.replace(/[^0-9]/g, '');
				    
				    if (currentVal.length > 10) {
				        currentVal = currentVal.substring(0, 10);
				    }

				    $(this).val(currentVal);

				    if (currentVal.length === 10) {
				        $("#errmsg").css("display", "none");
				    }
				});

				$("#PhoneNumber").on("blur", function () {
				    var currentVal = $(this).val();
				    
				    if (currentVal.length < 10) {
				        $("#errmsg").css("display", "block");
				    }
				});


				function validateSelect(selectElement, errorElementId) {
					var value = $(selectElement).val();
					if (value === null || value === "Select role" || value === "Select status") {
						$(errorElementId).show();
						return false;
					} else {
						$(errorElementId).hide();
						return true;
					}
				}

				$("#staffForm").on("submit", function (e) {
					if (!validateEmail(true)) {
						e.preventDefault();
					}

					if (!validateSelect("#role", "#roleError")) {
						e.preventDefault();
					}

					if (!validateSelect("#status", "#statusError")) {
						e.preventDefault();
					}
				});
				
				
				
				
	            function validateRoleAndStatus() {
	                var role = $('#role').val();
	                var status = $('#status').val();

	                console.log("Role selected: ", role);
	                console.log("Status selected: ", status);

	                if (role !== "" && status !== "") {
	                    $('#submitBtn').show();  
	                } else {
	                    $('#submitBtn').hide();  
	                }
	            }

	            $('#role, #status').on('change', function () {
	                validateRoleAndStatus();
	            });
			});
	 
	 
	
		</script>
</body>

</html>