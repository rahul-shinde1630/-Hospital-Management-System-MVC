<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<!DOCTYPE html>
	<html>

	<head>
		<title>Hospital Management System</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
			integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
		<!-- Import jquery cdn -->
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
			integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">

			</script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous">

			</script>
	</head>

	<body>
		<jsp:include page="../common/header.jsp"></jsp:include>

		<div class="app-hero-header d-flex align-items-center">

			<!-- Breadcrumb starts -->
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="ri-home-8-line lh-1 pe-3 me-3 border-end"></i> <a
						href="/dashboards/">Home</a></li>
				<li class="breadcrumb-item text-primary" aria-current="page">
					Add Doctor</li>
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
								<h5 class="card-title">Add Doctor</h5>
							</div>
							<div class="card-body">


								<form class="login-form" action="doctors" method="post">
									<div class="row">
										<div class="col-xxl-3 col-lg-4 col-sm-6">
										    <div class="mb-3">
										        <label class="form-label" for="a1">First Name <span class="text-danger">*</span></label>
										        <input type="text" class="form-control" id="a1" name="firstName"
										            placeholder="Enter First Name" required oninput="validateAlphabetic(this)">
										        <div class="invalid-feedback">Please enter a valid first name.</div>
										    </div>
										</div>

										<div class="col-xxl-3 col-lg-4 col-sm-6">
										    <div class="mb-3">
										        <label class="form-label" for="a2">Last Name <span class="text-danger">*</span></label>
										        <input type="text" class="form-control" id="a2" name="lastName"
										            placeholder="Enter Last Name" required oninput="validateAlphabetic(this)">
										        <div class="invalid-feedback">Please enter a valid last name.</div>
										    </div>
										</div>
										<div class="col-xxl-3 col-lg-4 col-sm-6">
										    <div class="mb-3">
										        <label class="form-label" for="a5">Email ID <span class="text-danger">*</span></label>
										        <input type="email" class="form-control" id="a5" placeholder="Enter Email ID"
										            name="email" required>
										        <div class="invalid-feedback">Please enter a valid email address.</div>
										    </div>
										</div>

									<div class="col-xxl-3 col-lg-4 col-sm-6">
										<div class="mb-3">
											<label class="form-label" for="phoneNumber">Mobile
												Number <span class="text-danger">*</span>
											</label> <input type="tex" class="form-control" id="phoneNumber"
												placeholder="Enter Mobile Number" name="phoneNumber" maxlength="10"
												required oninput="validateNumber(this)">
										</div>
									</div>


									<div class="col-xxl-3 col-lg-4 col-sm-6">
									    <div class="mb-3">
									        <label class="form-label" for="a14">Specialization <span class="text-danger">*</span></label>
									        <select class="form-select" id="a14" name="specialization" required>
									            <option value="" disabled selected>Select specialization</option>
									            <c:forEach items="${specializations}" var="specialization">
									                <option value="${specialization.title}">${specialization.title}</option>
									            </c:forEach>
									        </select>
									        <div class="invalid-feedback">Please select a specialization.</div>
									    </div>
									</div>

									<div class="col-xxl-3 col-lg-4 col-sm-6">
									    <div class="mb-3">
									        <label class="form-label" for="a14">Experience <span class="text-danger">*</span></label>
									        <select name="experience" class="form-select" id="a14" required>
									            <option value="" disabled selected>Select Year</option>
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
									        <div class="invalid-feedback">Please select your years of experience.</div>
									    </div>
									</div>
									<div class="col-xxl-3 col-lg-4 col-sm-6">
									    <div class="mb-3">
									        <label class="form-label" for="a14">Status <span class="text-danger">*</span></label>
									        <select class="form-select" id="a14" name="status" required>
									            <option value="" disabled selected>Select status</option>
									            <option value="Active">Active</option>
									            <option value="Inactive">Inactive</option>
									            <option value="Away">Away</option>
									        </select>
									        <div class="invalid-feedback">Please select a status.</div>
									    </div>
									</div>

										<!-- 
										<div class="col-md-4">
											<label class="col-form-label spti-label">Consultation Fee</label>
											<input type="text" name="consultationFee" class="col-md-12 spti-inpt"
												placeholder="e.g 500">
										</div> -->
									<div class="col-xxl-3 col-lg-4 col-sm-6">
										<div class="mb-3">
											<label class="form-label" for="consultationFee">Consultation
												Fee</label> <input type="text" class="form-control"
												id="consultationFee" placeholder="e.g 500"
												name="consultationFee" min="0" required
												oninput="validateNumber(this)">
										</div>
									</div>


									<div class="col-xxl-3 col-lg-4 col-sm-6">
									    <div class="mb-3">
									        <label class="form-label" for="a6">Available days</label>
									        <div class="row">
									            <div class="col">
									                <select name="startDays" class="form-control" id="startDays" required>
									                    <option value="" disabled="disabled" selected="selected">Select Day</option>
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
									                <select name="endDays" class="form-control" id="endDays" required>
									                    <option value="" disabled="disabled" selected="selected">Select Day</option>
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


										<div class="col-xxl-3 col-lg-4 col-sm-6">
											<label class="form-label">Available time slots</label>
											<div class="row">
												<input class="col form-control" type="time" id="start-time"
													name="startTime" required> <span
													class="col-2 form-label mt-2">To</span> <input
													class=" col form-control" type="time" id="start-time" name="endTime"
													required>
											</div>
											<!-- <input type="text" name="availableTimeSlots"
												class="form-control" placeholder="e.g 11 to 5"> -->
										</div>

										<div class="col-xxl-3 col-lg-4 col-sm-6">
										    <div class="mb-3">
										        <label class="form-label">Joining date</label>
										        <input type="date" name="joiningDate" id="joiningDate" class="form-select" required>
										    </div>
										</div>


										<div class="col-xxl-3 col-lg-4 col-sm-6">
										    <div class="mb-3">
										        <label class="form-label">Qualifications</label>
										        <input type="text" name="qualifications" class="form-control" placeholder="e.g MBBS, BHMS" 
										               oninput="validateAlphabetic(this)" required>
										    </div>
										</div>

										<div class="col-xxl-3 col-lg-4 col-sm-6">
											<div class="mb-3">
												<label class="form-label" for="a12">Address</label>
												<!-- <input type="text" class="form-control" id="a12"
													placeholder="Enter Address" name="address"> -->
												<textarea class="form-control" name="address"
													placeholder="Enter Address" required="required"></textarea>
											</div>
										</div>
									</div>
									<div class="col-sm-12">
										<div class="d-flex gap-2 justify-content-end">
											<a type="button" class="btn btn-outline-secondary"
												onclick="window.history.back()"> Cancel </a>

											<button type="submit" class="btn btn-primary">Add
												Doctor</button>
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
		
		function validateNumber(input) {
	       
	        input.value = input.value.replace(/[^0-9]/g, '');
	    }

		function validateAlphabetic(input) {
            input.value = input.value.replace(/[^a-zA-Z ]/g, '');
        }
		

		 $(window).on('load', function () {
        $('#addUserModel').modal('show');
    }); 
		


     document.addEventListener("DOMContentLoaded", function () {
        var today = new Date(2024, 8, 11);
        var currentDate = today.toISOString().split('T')[0];
        document.getElementById('joiningDate').value = currentDate;
    });
     
     
	
	function validateAlphabetic(input) {
	     input.value = input.value.replace(/[^a-zA-Z]/g, '');

	     if (input.value.length > 0) {
	         input.value = input.value.charAt(0).toUpperCase() + input.value.slice(1);
	     }

	     if (input.value === "") {
	         input.classList.add("is-invalid");
	     } else {
	         input.classList.remove("is-invalid");
	     }
	 }

	 
	     document.querySelector("form").addEventListener("submit", function(event) {
	         const selectElement = document.getElementById("a14");
	         
	         if (selectElement.value === "") {
	             selectElement.classList.add("is-invalid");
	             event.preventDefault(); // Prevent form submission
	         } else {
	             selectElement.classList.remove("is-invalid");
	         }
	     });

	     document.getElementById("a14").addEventListener("change", function() {
	         if (this.value !== "") {
	             this.classList.remove("is-invalid");
	         }
	     });
		 
		 document.querySelector("form").addEventListener("submit", function(event) {
		     const selectElement = document.getElementById("a14");

		     if (selectElement.value === "") {
		         selectElement.classList.add("is-invalid");
		         event.preventDefault(); // Prevent form submission
		     } else {
		         selectElement.classList.remove("is-invalid");
		     }
		 });

		 document.getElementById("a14").addEventListener("change", function() {
		     if (this.value !== "") {
		         this.classList.remove("is-invalid");
		     }
		 });
		 
		 document.querySelector("form").addEventListener("submit", function(event) {
		        const selectElement = document.getElementById("a14");

		        if (selectElement.value === "") {
		            selectElement.classList.add("is-invalid");
		            event.preventDefault(); 
		        } else {
		            selectElement.classList.remove("is-invalid");
		        }
		    });

		    document.getElementById("a14").addEventListener("change", function() {
		        if (this.value !== "") {
		            this.classList.remove("is-invalid");
		        }
		    });
		</script>
	</body>

	</html>