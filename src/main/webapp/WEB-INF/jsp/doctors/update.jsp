<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<!-- <title>Hospital Management System</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
			integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
			integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">

			</script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous">

			</script> -->
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
				Update Doctor</li>
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
							<h5 class="card-title">Update Doctor</h5>

						</div>
						<div class="card-body">
							<div class="table-responsive">
								<div id="basicExample_wrapper"
									class="dataTables_wrapper dt-bootstrap5 no-footer">
									<div class="row">
										<form class="login-form px-3" action="/hrs/doctors/update"
											method="post" onsubmit="return validateContactNo()">
											<div class="row">
												<div class="col-xxl-3 col-lg-4 col-sm-6">
													<label class="form-label">First Name</label> <span
														class="text-danger">*</span> <input type="hidden"
														name="id" value="${doctor.id}"> <input
														id="firstName" type="text" name="firstName"
														class="form-control" placeholder="riya"
														value="${doctor.firstName}" required="required"
														oninput="validateAlphabetic(this)" maxlength="16">
													<p style="color: red">${errMsg }</p>
												</div>

												<div class="col-xxl-3 col-lg-4 col-sm-6">
													<label class="form-label">Last Name</label><span
														class="text-danger">*</span><input
														type="text" name="lastName" class="form-control"
														placeholder="cena" value="${doctor.lastName}"
														oninput="validateAlphabetic(this)" maxlength="16" min="2"
														required="required">
													<p style="color: red">${errMsg2 }</p>
												</div>
												<div class="col-xxl-3 col-lg-4 col-sm-6">
													<label class="form-label">Email</label><span
														class="text-danger">*</span> <input type="email"
														name="email" class="form-control"
														placeholder="riya@gmail.com" value="${doctor.email}"
														required="required"><p style="color: red">${errMsg3 }</p>
												</div>
												<div class="col-xxl-3 col-lg-4 col-sm-6">
													<label class="form-label">Phone Number</label> <input
														type="text" id="PhoneNumber" name="phoneNumber"
														class="form-control" placeholder="e.g 9090981981"
														value="${doctor.phoneNumber}"
														oninput="validateContact(this)" maxlength="10" required>
													<p id="errMsg" style="color: red"></p>
												</div>
												<div class="col-xxl-3 col-lg-4 col-sm-6">
													<label class="form-label">Specialization</label> <select
														name="specialization" class="form-select">
														<option disabled selected>Select
															specialization</option>
														<c:forEach items="${specializations }"
															var="specialization">

															<c:choose>
																<c:when
																	test="${specialization.title == doctor.specialization }">
																	<option value="${specialization.title }" selected>
																		${specialization.title
																			}</option>
																</c:when>
																<c:otherwise>
																	<option value="${specialization.title }">
																		${specialization.title
																			}</option>
																</c:otherwise>
															</c:choose>
														</c:forEach>
													</select>
												</div>
												<div class="col-xxl-3 col-lg-4 col-sm-6">
													<label class="form-label" for="experience">Experience</label>
													<!-- <input type="text" name="experience" class="form-control"
															placeholder="e.g 2 years" value="${doctor.experience}">-->
													<select name="experience" class="form-select"
														id="experience">
														<option value="${doctor.experience}" selected="selected">${doctor.experience}</option>
														<option value="1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
														<option value="5">5</option>
														<option value="6">6</option>
														<option value="7">7</option>
														<option value="8">8</option>
														<option value="9">9</option>
														<option value="10">10</option>
														<option value="11">11</option>
														<option value="12">12</option>
														<option value="13">13</option>
														<option value="14">14</option>
														<option value="15">15</option>
														<option value="16">16</option>
														<option value="17">17</option>
														<option value="18">18</option>
														<option value="19">19</option>
														<option value="20">20</option>
														<option value="21">21</option>
														<option value="22">22</option>
														<option value="23">23</option>
														<option value="24">24</option>
														<option value="25">25</option>
														<option value="26">26</option>
														<option value="27">27</option>
														<option value="28">28</option>
														<option value="29">29</option>
														<option value="30">30</option>

													</select>
												</div>

												<div class="col-xxl-3 col-lg-4 col-sm-6">
													<label class="form-label">Status</label> <select
														name="status" class="form-select">>
														<c:choose>
															<c:when test="${doctor.status == 'Active'}">
																<option value="Active" selected>Active</option>
																<option value="Inactive">Inactive</option>
																<option value="Away">Away</option>
															</c:when>
															<c:when test="${doctor.status == 'Inactive'}">
																<option value="Active">Active</option>
																<option value="Inactive" selected>Inactive</option>
																<option value="Away">Away</option>
															</c:when>
															<c:when test="${doctor.status == 'Away'}">
																<option value="Active">Active</option>
																<option value="Inactive">Inactive</option>
																<option value="Away" selected>Away</option>
															</c:when>
															<c:otherwise>
																<option disabled="disabled" selected>Select
																	status</option>
																<option value="Active">Active</option>
																<option value="Inactive">Inactive</option>
																<option value="Away" selected>Away</option>
															</c:otherwise>
														</c:choose>
													</select>
												</div>

												<div class="col-xxl-3 col-lg-4 col-sm-6">
													<label class="form-label">Consultation Fee</label> <input
														type="text" name="consultationFee" class="form-control"
														placeholder="e.g 500" value="${doctor.consultationFee}"
														oninput="validateContact(this)" required>
												</div>

												<!-- <div class="col-xxl-3 col-lg-4 col-sm-6">
														<label class="form-label">Available
															days</label> <input type="text" name="availableDays"
															class="form-control" placeholder="e.g Monday to Friday"
															value="${doctor.availableDays}" >
													</div> -->

													<div class="col-xxl-3 col-lg-4 col-sm-6">
													    <div class="mb-3">
													        <label class="form-label" for="a6">Available days</label>
													        
													        <div class="row">
													            <div class="col">
													                <select name="startDays" class="form-control" id="Days a6" required>
													                    <option value="" disabled selected>Select start day</option>
												
													                    <option value="Monday">Monday</option>
													                    <option value="Tuesday">Tuesday</option>
													                    <option value="Wednesday">Wednesday</option>
													                    <option value="Thursday">Thursday</option>
													                    <option value="Friday">Friday</option>
													                    <option value="Saturday">Saturday</option>
													                    <option value="Sunday">Sunday</option>
													                </select>
													            </div>

													            <div class="col-2 mt-2">To</div>

													            <div class="col">
													                <select name="endDays" class="form-control" id="Days a6" required>
													                    <option value="" disabled selected>Select end day</option>
													                 
													                    <option value="Monday">Monday</option>
													                    <option value="Tuesday">Tuesday</option>
													                    <option value="Wednesday">Wednesday</option>
													                    <option value="Thursday">Thursday</option>
													                    <option value="Friday">Friday</option>
													                    <option value="Saturday">Saturday</option>
													                    <option value="Sunday">Sunday</option>
													                </select>
													            </div>
													        </div>
													    </div>
													</div>

												<!-- <div class="col-xxl-3 col-lg-4 col-sm-6">
														<label class="form-label">Available
															time slots</label> <input type="text"
															name="availableTimeSlots" class="form-control"
															placeholder="e.g 11 to 5"
															value="${doctor.availableTimeSlots}">
													</div>  -->
												<div class="col-xxl-3 col-lg-4 col-sm-6">
													<label class="form-label">Available time slots</label>
													<div class="row">
														<input class="col form-control" type="time"
															id="start-time" value="${StartTime}" name="startTime"
															required> <span class="col-2 form-label mt-2">To</span>
														<input class=" col form-control" name="endTime"
															type="time" id="end-time" value="${EndTime}" required>
													</div>
													<!-- <input type="text" name="availableTimeSlots"
												class="form-control" placeholder="e.g 11 to 5"> -->
												</div>


												<div class="col-xxl-3 col-lg-4 col-sm-6">
												    <label class="form-label">Joining date</label>
												    <input
												        type="date"
												        name="joiningDate"
												        class="form-control"
												        value="${doctor.joiningDate}"
												        required
												    >
												</div>


												<div class="col-xxl-3 col-lg-4 col-sm-6">
													<label class="form-label">Qualifications</label> <input
														type="text" name="qualifications" class="form-control"
														placeholder="e.g MBBS, BHMS"
														value="${doctor.qualifications}"
														oninput="validateAlphabetic(this)" required="required">
												</div>

												<div class="col-xxl-3 col-lg-4 col-sm-6">
													<label class="form-label">Address</label>
													<textarea class="form-control" name="address"
														placeholder="eg.Hadpsar, pune" required>${doctor.address} </textarea>
												</div>
											</div>
											<div class="col-sm-12">
												<div class="d-flex gap-2 justify-content-end">
													<a type="button" class="btn btn-outline-secondary"
														onclick="window.history.back()"> Cancel </a>
													<button type="submit" class="btn btn-primary">
														Update Doctor</button>
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

	<script type="text/javascript">
		$(window).on('load', function() {
			$('#addUserModel').modal('show');
		});

		function validateAlphabetic(input) {
			input.value = input.value.replace(/[^a-zA-Z ]/g, '');
		}
		function validateContact(input) {
			input.value = input.value.replace(/[^0-9]/g, '');
		}

		function validateContactNo() {
			var contactField = document.getElementById("PhoneNumber").value;
			var errorMessage = document.getElementById("errMsg");

			if (contactField.length === 10) {
				errorMessage.textContent = "";
				return true;
			} else {
				errorMessage.textContent = "Please enter 10-digit contact number.";
				return false;
			}
		}

		/* var startTime = ${StartTime};
		var endTime = ${EndTime};

		
		document.getElementById("start-time").value = startTime;
		document.getElementById("end-time").value = endTime;
		 */
	</script>
</body>

</html>