<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
			integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous">

			</script> -->
		<style type="text/css">
			.bed-image {
				width: 100px;
				/* border: 1px solid lightgray; */
				margin: 10px;
			}

			.image-btn {
				border: none;
				background: none;
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
					Add Admission
				</li>
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
								<h5 class="card-title">Add Patient Admission Details</h5>
							</div>


							<div class="card-body">
								<form class="login-form" action="/admissions" method="post">
									<div class="row">
										<div class="col-xxl-3 col-lg-4 col-sm-6">
										    <div class="mb-3">
										        <label class="form-label" for="firstName">First Name <span class="text-danger">*</span></label>
										        <input type="hidden" name="patientId" class="col-md-12 spti-inpt" placeholder="e.g 2" value="${patient.id}">
										        <input type="hidden" name="cotId" id="cotId" class="col-md-12 spti-inpt" placeholder="e.g 2" value="0">
										        <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter First Name" value="${patient.firstName}" readonly="readonly" oninput="this.value = this.value.replace(/[^A-Za-z]/g, '');">
										    </div>
										</div>


										<div class="col-xxl-3 col-lg-4 col-sm-6">
										    <div class="mb-3">
										        <label class="form-label" for="a6">Mobile Number <span class="text-danger">*</span></label>
										        <input type="text" class="form-control" id="a6" placeholder="Enter Mobile Number" name="phoneNumber" value="${patient.phoneNumber}" readonly="readonly" pattern="^\d{10}$" title="Please enter exactly 10 digits." required maxlength="10" oninput="this.value = this.value.replace(/[^0-9]/g, '');">
										    </div>
										</div>


										<div class="col-xxl-3 col-lg-4 col-sm-6">
										    <div class="mb-3">
										        <label class="form-label" for="admissionDate">Admission Date <span class="text-danger">*</span></label>
										        <input type="date" class="form-select" id="admissionDate" name="admissionDate" required>
										    </div>
										</div>

										<div class="col-xxl-3 col-lg-4 col-sm-6">
										    <div class="mb-3">
										        <label class="form-label" for="dischargeDate">Discharge Date <span class="text-danger">*</span></label>
										        <input type="date" name="dischargeDate" id="dischargeDate" class="form-select" required>
										    </div>
										</div>


										<div class="col-xxl-3 col-lg-4 col-sm-6">
										    <div class="mb-3">
										        <label class="form-label" for="a11">Diagnosis</label>
										        <input type="text" class="form-control" id="a11" name="diagnosis" placeholder="e.g. some diagnosis" 
										               pattern="^[A-Za-z\s]+$" title="Please enter only letters." required 
										               oninput="this.value = this.value.replace(/[^A-Za-z\s]/g, '');">
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
										        <label class="form-label" for="kinName">Kin Name</label>
										        <input type="text" class="form-control" id="kinName" 
										               placeholder="Enter Kin Name" name="nextOfKinName" 
										               pattern="[A-Za-z\s]+" title="Only letters and spaces are allowed" required>
										    </div>
										</div>

										<div class="col-xxl-3 col-lg-4 col-sm-6">
										    <div class="mb-3">
										        <label class="form-label" for="kinRelationship">Kin Relationship</label>
										        <input type="text" class="form-control" id="kinRelationship" 
										               placeholder="Enter Kin Relationship" name="nextOfKinRelationship" 
										               pattern="[A-Za-z\s]+" title="Only letters and spaces are allowed" required>
										    </div>
										</div>

									
										

										<div class="col-xxl-3 col-lg-4 col-sm-6">
										    <div class="mb-3">
										        <label class="form-label" for="a12">Kin Contact</label>
										        <input type="text" class="form-control" id="a12" name="nextOfKinPhoneNumber" placeholder="Enter Kin Contact" pattern="^\d{10}$" maxlength="10" title="Please enter exactly 10 digits." required oninput="this.value = this.value.replace(/[^0-9]/g, '');">
										    </div>
										</div>


										<div class="col-xxl-3 col-lg-4 col-sm-6">
										    <div class="mb-3">
										        <label class="form-label" for="a6">Ward<span class="text-danger">*</span></label>
										        <select class="form-select" name="wardId" onchange="getCots()" id="wardId" required>
										            <option value="" disabled="disabled" selected>Select ward</option>
										            <c:forEach items="${wards}" var="ward">
										                <option value="${ward.id}">${ward.wardName}</option>
										            </c:forEach>
										        </select>
										    </div>
										</div>





									</div>
									<div class="col-sm-12">
										<div class="d-flex gap-2 justify-content-end">
											<button type="submit" class="btn btn-primary">Admit</button>
											<button type="button" class="btn btn-outline-secondary"
												onclick="window.history.back()">Cancel</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="modal fade" id="ward-allocation" tabindex="-1" aria-labelledby="exampleModalLabel"
			aria-hidden="true">
			<div class="modal-dialog modal-lg ">
				<div class="modal-content bg-light">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Select Cot</h5>
						<!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true" onclick="closeCotDialog()"></span>
						</button> -->
					</div>
					<div class="modal-body d-flex flex-wrap" id="img-block"></div>
				</div>
			</div>
		</div>

		<script type="text/javascript">
			$(window).on('load', function () {
				$('#addUserModel').modal('show');
			});
			var cotId = 0;
			function getCots() {
				let imgBlock = document.getElementById('img-block');
				imgBlock.innerHTML = "";
				let wardSelect = document.getElementById('wardId');
				let value = wardSelect.value;

				let xhr = new XMLHttpRequest();

				let url = '/cots/wards/' + value;
				xhr.open("GET", url, true);

				xhr.onreadystatechange = function () {
					try {
						if (this.readyState == 4 && this.status == 200) {
							$('#ward-allocation').modal('show');
							let data = JSON.parse(this.responseText);

							for (var i = 0; i < data.length; i++) {
								let temp = data[i];
								let div = document.createElement('div');
								div.setAttribute('class', 'card text-center m-1');
								div.style.width = "10rem";

								let btn = document.createElement('button');
								btn.setAttribute('onclick', 'getCotId(' + temp.id
									+ ',this)');
								btn.setAttribute('class', 'image-btn');
								if (temp.status == "Occupied") {
									btn.disabled = "disabled";
									btn.style.opacity = "0.3";
								}
								let img = document.createElement('img');
								img
									.setAttribute('src',
										'/resources/assets/images/bed.jpeg');
								img.setAttribute('class', 'bed-image img-thumbnail');
								btn.appendChild(img);

								let span = document.createElement('span');
								span.innerHTML = temp.cotNumber;
								span.style.fontSize = '13px';
								span.style.fontWeight = 'bold';
								div.appendChild(btn);
								div.appendChild(span);
								imgBlock.appendChild(div);
							}
						}
					} catch (error) {
						console.log("error")
					}
				}
				xhr.send();
			}
			function getCotId(id, e) {
				console.log(e);
				e.disabled = "disabled";
				e.style.opacity = "0.3";
				document.getElementById('cotId').value = id;
			}
			function closeCotDialog() {
				$('#ward-allocation').modal('hide');
			}
			
			document.getElementById('kinName').addEventListener('input', function () {
			    this.value = this.value.replace(/[^A-Za-z\s]/g, ''); 
			});

			document.getElementById('kinRelationship').addEventListener('input', function () {
			    this.value = this.value.replace(/[^A-Za-z\s]/g, ''); 
			});

			document.getElementById('submitBtn').addEventListener('click', function() {
			    const kinName = document.getElementById('kinName').value.trim();
			    const kinRelationship = document.getElementById('kinRelationship').value.trim();
			    const errorMessage = document.getElementById('error-message');

			    errorMessage.textContent = ''; 

			    if (!kinName || !kinRelationship) {
			        errorMessage.textContent = 'Both fields are required!';
			    } else {
			        alert(`Kin Name: ${kinName}\nKin Relationship: ${kinRelationship}`);
			      
			        document.getElementById('kinName').value = '';
			        document.getElementById('kinRelationship').value = '';
			    }
			});

		</script>
	</body>

	</html>