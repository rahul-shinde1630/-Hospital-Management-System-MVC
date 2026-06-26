<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>Hospital Management System</title>
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
			integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
			integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">

			</script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"> -->

</script>
<style>
/* .popup {
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
			} */
</style>
</head>


<jsp:include page="../common/header.jsp"></jsp:include>
<div class="app-hero-header d-flex align-items-center">

	<!-- Breadcrumb starts -->
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><i
			class="ri-home-8-line lh-1 pe-3 me-3 border-end"></i> <a
			href="/dashboards/">Home</a></li>
		<li class="breadcrumb-item text-primary" aria-current="page">Add
			Patients</li>
	</ol>
	<!-- Breadcrumb ends -->

	<!-- Sales stats starts -->
	<!-- <div class="ms-auto d-lg-flex d-none flex-row">
		<div class="d-flex flex-row gap-1 day-sorting">
			<button class="btn btn-sm btn-primary">Today</button>
			<button class="btn btn-sm">7d</button>
			<button class="btn btn-sm">2w</button>
			<button class="btn btn-sm">1m</button>
			<button class="btn btn-sm">3m</button>
			<button class="btn btn-sm">6m</button>
			<button class="btn btn-sm">1y</button>
		</div>
		</div> -->
	<!-- Sales stats ends -->

</div>

<div class="app-container">
	<div class="app-body">

		<!-- Row starts -->
		<div class="row gx-3">
			<div class="col-sm-12">
				<div class="card">
					<div class="card-header">
						<h5 class="card-title">Add Patient Details</h5>
					</div>
					<div class="card-body">
						<form class="login-form" action="/patients" method="post">
							<!-- Row starts -->
							<div class="row gx-3">
								<div class="col-xxl-3 col-lg-4 col-sm-6">
								    <div class="mb-3">
								        <label class="form-label" for="a1">First Name <span class="text-danger">*</span></label>
								        <input type="text" class="form-control" id="a1" name="firstName" placeholder="Enter First Name"
								               oninput="validateAlphabetic(this)" required>
								    </div>
								</div>
								<div class="col-xxl-3 col-lg-4 col-sm-6">
								    <div class="mb-3">
								        <label class="form-label" for="a2">Last Name <span class="text-danger">*</span></label>
								        <input type="text" class="form-control" id="a2" name="lastName" placeholder="Enter Last Name"
								               oninput="validateAlphabetic(this)" required>
								    </div>
								</div>
								<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label" for="a5">Email ID <span
											class="text-danger">*</span></label> <input type="email"
											class="form-control" id="a5" placeholder="Enter Email ID"
											name="email" required>
									</div>
								</div>

								<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label" for="a6">Mobile Number <span
											class="text-danger">*</span></label> <input type="text"
											class="form-control" id="a6" name="phoneNumber"
											placeholder="Enter Mobile Number" maxlength="10"
											pattern="\d{10}"
											title="Please enter a 10-digit mobile number" required
											oninput="validateNumber(this)" required>
										<div class="invalid-feedback">Please enter a 10-digit
											mobile number.</div>
									</div>
								</div>
								<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label" for="a4">Emergency Contact
											Name <span class="text-danger">*</span>
										</label> <input type="text" class="form-control" id="a4"
											name="emergencyContactName"
											placeholder="Enter Emergency Contact Name"
											oninput="validateAlphabetic(this)" required>
										<div class="invalid-feedback">Please enter only
											alphabetic characters and spaces.</div>
									</div>
								</div>

								<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label" for="a7">Emergency Contact
											Number <span class="text-danger">*</span>
										</label> <input type="text" class="form-control" id="a7"
											name="emergencyContactNumber"
											placeholder="Enter Emergency Contact Number" maxlength="10"
											pattern="\d{10}"
											title="Please enter a 10-digit mobile number" required
											oninput="validateNumber(this)">
										<div class="invalid-feedback">Please enter a 10-digit
											emergency contact number.</div>
									</div>
								</div>
								<div class="col-xxl-3 col-lg-4 col-sm-6">
								    <div class="mb-3">
								        <label class="form-label" for="a6">Preferred Doctor<span class="text-danger">*</span></label>
								        <select class="form-select" id="a7" name="doctorId" required>
								            <option value="">Select doctor</option>
								            <c:forEach items="${doctors}" var="doctor">
								                <option value="${doctor.id}">${doctor.firstName} ${doctor.lastName}</option>
								            </c:forEach>
								        </select>
								    </div>
								</div>

								<div class="col-xxl-3 col-lg-4 col-sm-6">
								    <div class="mb-3">
								        <label class="form-label" for="selectGender1">Gender <span class="text-danger">*</span></label>
								        <div class="m-0">
								            <div class="form-check form-check-inline">
								                <input class="form-check-input" type="radio" name="gender" id="selectGender1" value="male" required>
								                <label class="form-check-label" for="selectGender1">Male</label>
								            </div>
								            <div class="form-check form-check-inline">
								                <input class="form-check-input" type="radio" name="gender" id="selectGender2" value="female" required>
								                <label class="form-check-label" for="selectGender2">Female</label>
								            </div>
								        </div>
								    </div>
								</div>

								<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label" for="dob">Date of Birth</label> <input
											type="date" class="form-select" id="dob" name="dateOfBirth" required>
									</div>
								</div>

							

								<div class="col-xxl-3 col-lg-4 col-sm-6">
								    <div class="mb-3">
								        <label class="form-label" for="a9">Blood Group <span class="text-danger">*</span></label>
								        <select class="form-select" id="a9" name="bloodType" required>
								            <option value="">Select group</option>
								            <option value="A+">A+</option>
								            <option value="A-">A-</option>
								            <option value="B+">B+</option>
								            <option value="AB+">AB+</option>
								            <option value="AB-">AB-</option>
								            <option value="O+">O+</option>
								            <option value="O-">O-</option>
								        </select>
								    </div>
								</div>

								<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label" for="a12">Address</label> <input
											type="text" class="form-control" id="a12"
											placeholder="Enter Address" name="address" required>
									</div>
								</div>
								<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label" for="a8">allergies</label> <input
											type="text" class="form-control" id="a11" name="allergies"
											placeholder="eg.some allergies"
											oninput="validateAlphabetic(this)" required>
									</div>
								</div>
								<div class="col-xxl-3 col-lg-4 col-sm-6">
								    <div class="mb-3">
								        <label class="form-label" for="a8">Occupation <span class="text-danger">*</span></label>
								        <select class="form-select" id="a8" name="occupation" required>
								            <option value="">Select</option>
								            <option value="1">Teacher</option>
								            <option value="2">Engineer</option>
								            <option value="3">Business</option>
								            <option value="4">Bank</option>
								            <option value="5">Army</option>
								        </select>
								    </div>
								</div>

								<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label" for="a13">Nationality</label> <input
											type="text" class="form-control" id="a13" name="nationality"
											placeholder="Enter Nationality"
											oninput="validateAlphabetic(this)" required>
									</div>
								</div>
								<div class="col-xxl-3 col-lg-4 col-sm-6">
								    <div class="mb-3">
								        <label class="form-label" for="a14">Language spoken <span class="text-danger">*</span></label>
								        <select class="form-select" id="a14" name="languageSpoken" required>
								            <option value="">Select</option>
								            <option value="Marathi">Marathi</option>
								            <option value="Hindi">Hindi</option>
								            <option value="English">English</option>
								        </select>
								    </div>
								</div>

								<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label" for="a13">Religion</label> <input
											type="text" class="form-control" id="a15" name="religion"
											placeholder="Enter Religion"
											oninput="validateAlphabetic(this)" required>
									</div>
								</div>

								<div class="col-xxl-3 col-lg-4 col-sm-6">
								    <div class="mb-3">
								        <label class="form-label" for="a7">Marital Status <span class="text-danger">*</span></label>
								        <select class="form-select" id="a7" name="maritalStatus" required>
								            <option value="">Select status</option>
								            <option value="MARRIED">Married</option>
								            <option value="SINGLE">Single</option>
								            <option value="DIVORCED">Divorced</option>
								            <option value="WIDOWED">Widowed</option>
								        </select>
								    </div>
								</div>


								<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label" for="a15">Medical history</label>
										<textarea class="form-control" id="a15" name="medicalHistory"
											placeholder="eg.cold problem" required></textarea>
									</div>
								</div>
								<div class="col-xxl-3 col-lg-4 col-sm-6">
								    <div class="mb-3">
								        <label class="form-label" for="a15">Insurance <span class="text-danger">*</span></label>
								        <input type="text" class="form-control" id="a15" name="policyNumber" required>
								        <input type="hidden" name="insuranceId" id="insuranceId" required>
								        <span style="color: red;" id="no-policy-found-msg"></span>
								    </div>
								</div>


								<div class="col-md-5">
									<button type="button" style="margin-top: 24px;"
										class="btn btn-primary btn-sm" onclick="searchPolicy()">
										<i class='bx bx-search-alt-2'></i>
									</button>
									<button type="button" style="margin-top: 24px;"
										class="btn btn-success btn-sm" onclick="showPopup()">
										<i class='bx bx-bookmark-alt-plus'></i>
									</button>
									<button type="button" style="margin-top: 24px;"
										class="btn btn-danger btn-sm" onclick="clearPolicySearch()">
										<i class='bx bx-trash'></i>
									</button>
								</div>

								<div class="col-md-12" style="position: relative;">
									<div class="popup" id="popupForm">
										<!-- <form action="processForm.jsp" method="post">
												<input type="text" name="policyNumber" id="policy"
													placeholder="e.g 123456"> <input type="text" name="providerName"
													id="provider" placeholder="e.g Tata">
												<input type="datetime-local" name="expiryDate" id="expiryDate"
													placeholder="e.g Tata">
												<button class="btn btn-sm btn-secondary"
													onclick="closePopup()">Close</button>
												<button type="button" class="btn btn-sm btn-primary "
													onclick="addInsurtance()">Add</button>
											</form> -->
									</div>
								</div>
								<!-- <div class="col-sm-12">
										<div id="dropzone" class="mb-3">
											<form action="https://buybootstrap.com/upload" class="dropzone dz-clickable"
												id="demo-upload">
												<div class="dz-message">
													<button type="button" class="dz-button">
														Click here to upload or Drop your reports here.</button>
													<h5>Upload your health reports.</h5>
												</div>
											</form>
										</div>
									</div> -->
								<div class="col-sm-12">
									<div class="d-flex gap-2 justify-content-end">
										<a type="button" class="btn btn-outline-secondary"
											onclick="window.history.back()"> Cancel </a>

										<button type="submit" class="btn btn-primary">Add
											Patient</button>
									</div>
								</div>
							</div>
							<!-- Row ends -->
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- Row ends -->

	</div>
	<!-- App body ends -->

</div>
<script type="text/javascript">
	
		function validateAlphabetic(input) {
		    input.value = input.value.replace(/[^a-zA-Z\s]/g, ''); 
		}


		function validateNumber(input) {
		    input.value = input.value.replace(/[^0-9]/g, ''); // Allows only digits
		}
</script>

</body>

</html>