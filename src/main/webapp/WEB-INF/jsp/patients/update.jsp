<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<!DOCTYPE html>
	<html>

	<head>
		<!-- <title>Hospital Management Sytsem</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
			integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
		
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
			integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">

			</script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous">

			</script> -->
		<style>
			.popup {
				display: none;
				width: 350px;
				position: absolute;
				top: -125px;
				left: 72%;
				transform: translate(-50%, -50%);
				border: 1px solid #ccc;
				padding: 20px;
				background: #fff;
				z-index: 9999;
				padding: 20px;
				background-color: #f5f5f5;
				border: 1px solid #ccc;
				border-radius: 3px;
				box-shadow: 2px 2px 15px #00000073;
				left: 72%;
			}

			.popup input {
				width: 300px;
				margin: 5px 0px;
				border: 1px solid lightgray;
			}

			.popup input[type="datetime-local"] {
				font-size: 11px;
				padding: 4px;
				color: #757575;
			}
		</style>
	</head>

	<body>
		<jsp:include page="../common/header.jsp"></jsp:include>


		<div class="app-hero-header d-flex align-items-center">

			<!-- Breadcrumb starts -->
			<ol class="breadcrumb">
				<li class="breadcrumb-item">
					<i class="ri-home-8-line lh-1 pe-3 me-3 border-end"></i>
					<a href="/dashboards/">Home</a>
				</li>
				<li class="breadcrumb-item text-primary" aria-current="page">
					Update Patient
				</li>
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
								<h5 class="card-title">Update Patient Details</h5>
							</div>

							<div class="card-body">
								<form class="login-form" action="/patients/update" method="post">
   <!-- Include hidden patient ID for the update -->
   
   
									<!-- Row starts -->
									<div class="row gx-3">
								<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label" for="a1">First Name <span
											class="text-danger">*</span></label> 
											<input  type="hidden" name="id" value="${patient.id}">
											<input type="text" class="form-control" id="a1" name="firstName"placeholder="Enter First Name"
											oninput="validateAlphabetic(this)" value="${patient.firstName}" required> 
									</div>
								</div>
                       

										<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label" for="a2">Last Name <span
											class="text-danger">*</span></label> <input type="text"
											class="form-control" id="a2" name="lastName"
											placeholder="Enter Last Name"
											oninput="validateAlphabetic(this)" value="${patient.lastName}" required>
									</div>
								</div>

									<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label" for="a5">Email ID <span
											class="text-danger">*</span></label> <input type="email"
											class="form-control" id="a5" placeholder="Enter Email ID"
											name="email" value="${patient.email}" required>
									</div>
								</div>
								<div class="col-xxl-3 col-lg-4 col-sm-6">
								    <div class="mb-3">
								        <label class="form-label" for="a6">Mobile Number <span class="text-danger">*</span></label>
								        <input type="text"
								            class="form-control" 
								            id="a6" 
								            name="phoneNumber" 
								            placeholder="Enter Mobile Number" 
								            maxlength="10" 
								            pattern="\d{10}" 
								            title="Please enter a 10-digit mobile number" 
								            required 
								            oninput="validateNumber(this)" 
								            value="${patient.phoneNumber}">
								        <div class="invalid-feedback">Please enter a 10-digit mobile number.</div>
								    </div>
								</div>

										<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label" for="a4">Emergency Contact
											Name <span class="text-danger">*</span>
										</label> <input type="text" class="form-control" id="a4"
											name="emergencyContactName"
											placeholder="Enter Emergency Contact Name"
											oninput="validateAlphabetic(this)" value="${patient.emergencyContactName}" required>
										<div class="invalid-feedback">Please enter only
											alphabetic characters and spaces.</div>
									</div>
								</div>

										<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label" for="a7" required>Emergency Contact
											Number <span class="text-danger">*</span>
										</label> <input type="text" class="form-control" id="a7"
											name="emergencyContactNumber"
											placeholder="Enter Emergency Contact Number" maxlength="10"
											pattern="\d{10}"
											title="Please enter a 10-digit mobile number" required
											oninput="validateNumber(this)" value="${patient.emergencyContactNumber}">
										<div class="invalid-feedback">Please enter a 10-digit
											emergency contact number.</div>
									</div>
								</div>

								<div class="col-xxl-3 col-lg-4 col-sm-6">
								                                       <div class="mb-3">
								                                           <label class="form-label">Gender <span class="text-danger" required>*</span></label>
								                                           <div class="m-0">
								                                               <div class="form-check form-check-inline">
								                                                   <input class="form-check-input" type="radio" name="gender" id="selectGender1" value="male" ${patient.gender == 'male' ? 'checked' : ''}> 
								                                                   <label class="form-check-label" for="selectGender1">Male</label>
								                                               </div>
								                                               <div class="form-check form-check-inline">
								                                                   <input class="form-check-input" type="radio" name="gender" id="selectGender2" value="female" ${patient.gender == 'female' ? 'checked' : ''}> 
								                                                   <label class="form-check-label" for="selectGender2">Female</label>
								                                               </div>
								                                           </div>
								                                       </div>
								                                   </div>
										<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label" for="dob">Date of Birth</label> <input
											type="date" class="form-select" id="dob" name="dateOfBirth" value="${patient.dateOfBirth}" required>
									</div>
								</div>

										<div class="col-xxl-3 col-lg-4 col-sm-6">
											<label class="form-label" required>Blood group</label> <select name="bloodType"
												class="form-select">
												<c:choose>
													<c:when test="${patient.bloodType == 'A+'}">
														<option value="A+" selected>A+</option>
														<option value="A-">A-</option>
														<option value="AB+">AB+</option>
														<option value="AB-">AB-</option>
														<option value="O+">O+</option>
														<option value="O-">O-</option>
													</c:when>
													<c:when test="${patient.bloodType == 'A-'}">
														<option value="A-" selected>A-</option>
														<option value="A+">A+</option>
														<option value="AB+">AB+</option>
														<option value="AB-">AB-</option>
														<option value="O+">O+</option>
														<option value="O-">O-</option>
													</c:when>
													<c:when test="${patient.bloodType == 'AB+'}">
														<option value="AB+" selected>AB+</option>
														<option value="A+">A+</option>
														<option value="A-">A-</option>
														<option value="AB-">AB-</option>
														<option value="O+">O+</option>
														<option value="O-">O-</option>
													</c:when>

													<c:when test="${patient.bloodType == 'AB-'}">
														<option value="AB-" selected>AB-</option>
														<option value="A+">A+</option>
														<option value="A-">A-</option>
														<option value="AB+">AB+</option>
														<option value="O+">O+</option>
														<option value="O-">O-</option>
													</c:when>

													<c:when test="${patient.bloodType == 'O+'}">
														<option value="O+" selected>O+</option>
														<option value="A+">A+</option>
														<option value="A-">A-</option>
														<option value="AB+">AB+</option>
														<option value="AB-">AB-</option>
														<option value="O-">O-</option>
													</c:when>
													<c:when test="${patient.bloodType == 'O-'}">
														<option value="O+" selected>O+</option>
														<option value="A+">A+</option>
														<option value="A-">A-</option>
														<option value="AB+">AB+</option>
														<option value="AB-">AB-</option>
														<option value="O+">O+</option>
													</c:when>

													<c:otherwise>
														<option value="">Select Blood group</option>
														<option value="A+">A+</option>
														<option value="A-">A-</option>
														<option value="AB+">AB+</option>
														<option value="AB-">AB-</option>
														<option value="O+">O+</option>
														<option value="O-">O-</option>
													</c:otherwise>
												</c:choose>
											</select>
										</div>
										    <div class="col-xxl-3 col-lg-4 col-sm-6 mb-3">
                                        <label class="form-label" >Preferred Doctor</label>
                                        <select name="doctorId" class="form-select">
                                            <option disabled selected>Select doctor</option>
                                            <c:forEach items="${doctors}" var="doctor">
                                                <option value="${doctor.id}" ${doctor.id == patient.doctorId ? 'selected' : ''}>${doctor.firstName} ${doctor.lastName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                             
										<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label" for="a12">Address</label> <input
											type="text" class="form-control" id="a12"
											placeholder="Enter Address" name="address" value="${patient.address}" required>
									</div>
								</div>
										<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label" for="a8">allergies</label> <input
											type="text" class="form-control" id="a11" name="allergies"
											placeholder="eg.some allergies"
											oninput="validateAlphabetic(this)" value="${patient.allergies}" required>
									</div>
								</div>

								<div class="col-xxl-3 col-lg-4 col-sm-6">
								    <div class="mb-3">
								        <label class="form-label" for="occupation">Occupation</label>
								        <select class="form-select" id="occupation" name="occupation">
								            <option value="1" ${patient.occupation == 1 ? 'selected' : ''}>Teacher</option>
								            <option value="2" ${patient.occupation == 2 ? 'selected' : ''}>Engineer</option>
								            <option value="3" ${patient.occupation == 3 ? 'selected' : ''}>Business</option>
								            <option value="4" ${patient.occupation == 4 ? 'selected' : ''}>Bank</option>
								            <option value="5" ${patient.occupation == 5 ? 'selected' : ''}>Army</option>
								        </select>
								    </div>
								</div>

										<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label" for="a13">Nationality</label> <input
											type="text" class="form-control" id="a13" name="nationality"
											placeholder="Enter Nationality"
											oninput="validateAlphabetic(this)" value="${patient.nationality}" required>
									</div>
								</div>
								<div class="col-xxl-3 col-lg-4 col-sm-6">
								    <div class="mb-3">
								        <label class="form-label" for="languageSpoken">Language spoken</label>
								        <select class="form-select" id="languageSpoken" name="languageSpoken">
								            <option value="Marathi" ${patient.languageSpoken == 'Marathi' ? 'selected' : ''}>Marathi</option>
								            <option value="Hindi" ${patient.languageSpoken == 'Hindi' ? 'selected' : ''}>Hindi</option>
								            <option value="English" ${patient.languageSpoken == 'English' ? 'selected' : ''}>English</option>
								        </select>
								    </div>
								</div>

										<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label" for="a13">Religion</label> <input
											type="text" class="form-control" id="a15" name="religion"
											placeholder="Enter Religion"
											oninput="validateAlphabetic(this)" value="${patient.religion}" required>
									</div>
								</div>
								<div class="col-xxl-3 col-lg-4 col-sm-6 mb-3">
								                                      <label class="form-label" for="a10">Marital Status</label>
								                                      <select class="form-select" id="a10" name="maritalStatus">
								                                          <option value="single" ${patient.maritalStatus == 'single' ? 'selected' : ''}>Single</option>
								                                          <option value="married" ${patient.maritalStatus == 'married' ? 'selected' : ''}>Married</option>
								                                          <option value="divorced" ${patient.maritalStatus == 'divorced' ? 'selected' : ''}>Divorced</option>
								                                          <option value="widowed" ${patient.maritalStatus == 'widowed' ? 'selected' : ''}>Widowed</option>
								                                      </select>
								                                  </div>


																  <div class="col-xxl-3 col-lg-4 col-sm-6">
																      <div class="mb-3">
																          <label class="form-label" for="medicalHistory">Medical History</label>
																          <textarea class="form-control" id="medicalHistory" name="medicalHistory" rows="4">${patient.medicalHistory}</textarea>
																      </div>
																  </div>



										<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label" for="a15">Insurance</label> <input
											type="text" class="form-control" id="a15" name="policyNumber">
										<input type="hidden" name="insuranceId" id="insuranceId" value="${patient.insurance}" required>

										<span style="color: red;" id="no-policy-found-msg"></span>
									</div>
								</div>

										<!-- <div class="col-xxl-3 col-lg-4 col-sm-6">
											<button type="button" style="margin-top: 24px;"
												class="btn btn-primary btn-sm" onclick="searchPolicy()"><i
													class='bx bx-search-alt-2'></i></button>
											<button type="button" style="margin-top: 24px;"
												class="btn btn-success btn-sm" onclick="showPopup()"><i
													class='bx bx-bookmark-alt-plus'></i></button>
											<button type="button" style="margin-top: 24px;"
												class="btn btn-danger btn-sm" onclick="clearPolicySearch()"><i
													class='bx bx-trash'></i></button>
										</div> -->


										<div class="col-md-12" style="position: relative;">
											<div class="popup" id="popupForm">
												<form action="processForm.jsp" method="post">
													<input type="text" name="policyNumber" id="policy"
														placeholder="e.g 123456">
													<input type="text" name="providerName" id="provider"
														placeholder="e.g Tata">
													<input type="datetime-local" name="expiryDate" id="expiryDate"
														placeholder="e.g Tata">
													<!--<button class="btn btn-sm btn-secondary"
														onclick="closePopup()">Close</button>
													<button type="button" class="btn btn-sm btn-primary"
														onclick="addInsurtance()">Add</button>-->
												</form>

											</div>
											<div class="col-sm-12">
														<div class="d-flex gap-2 justify-content-end">
															<a type="button" class="btn btn-outline-secondary"
																onclick="window.history.back()">
																Cancel
															</a>
															<button type="submit" class="btn btn-primary">
																Update patients</button>
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
		<script>
		function validateAlphabetic(input) {
		    const cleanedValue = input.value.replace(/[^a-zA-Z\s]/g, ''); 
		    input.value = cleanedValue;
		}
		
		function validateNumber(input) {
		       // Remove any non-digit characters
		       input.value = input.value.replace(/[^0-9]/g, '');

		       if (input.value.length < 10) {
		           input.setCustomValidity("Please enter a 10-digit mobile number.");
		           input.classList.add("is-invalid");
		       } else {
		           input.setCustomValidity("");
		           input.classList.remove("is-invalid");
		       }
		   }
		
		</script>	</body>

	</html>