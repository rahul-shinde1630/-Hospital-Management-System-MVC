<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
				<li class="breadcrumb-item">
					<i class="ri-home-8-line lh-1 pe-3 me-3 border-end"></i>
					<a href="/dashboards/">Home</a>
				</li>
				<li class="breadcrumb-item text-primary" aria-current="page">
					Update Ward
				</li>
			</ol>
			<!-- Breadcrumb ends -->
		</div>
		<div class="app-container">
			<div class="app-body">
				<div class="row gx-3">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-header d-flex align-items-center justify-content-between">
								<h5 class="card-title">Update Ward</h5>

							</div>

							<div class="card-body">
								<div class="table-responsive">
									<div id="basicExample_wrapper" class="dataTables_wrapper dt-bootstrap5 no-footer">
										<div class="row">
											<form class="login-form" action="/wards/update" method="post">
												<div class="row gx-3">

													<div class="col-xxl-3 col-lg-4 col-sm-6">
													    <label class="form-label">Ward Name</label>
													    <span class="text-danger">*</span>
													    <input type="hidden" name="id" class="form-control" value="${ward.id}">
													    <input type="text" name="wardName" class="form-control" 
													           placeholder="e.g ward 1" value="${ward.wardName}" 
													           required oninput="validateInput(this)" 
													           oninvalid="this.setCustomValidity('Invalid ward name "ward x" ')" 
													           oninput="this.setCustomValidity('')">
													</div>

													<div class="col-xxl-3 col-lg-4 col-sm-6">
													    <label class="form-label">Max Capacity <span class="text-danger">*</span></label>
													    <input type="text" name="maxCapacity" id="maxCapacity" class="form-control"
													           placeholder="e.g 20" value="${ward.maxCapacity}" required oninput="validateMaxCapacity()">
																										</div>
													<div class="col-xxl-3 col-lg-4 col-sm-6">
													    <label class="form-label">Current Occupancy <span class="text-danger">*</span></label>
													    <input type="text" name="currentOccupancy" id="currentOccupancy" class="form-control"
													           placeholder="e.g 15" value="${ward.currentOccupancy}" required oninput="validateNumberInput(this)">
													   
													</div>

													<div class="col-xxl-3 col-lg-4 col-sm-6">
													    <label class="form-label">Floor Number <span class="text-danger">*</span></label>
													    <input type="text" name="floorNumber" id="floorNumber" class="form-control"
													           placeholder="e.g 2" value="${ward.floorNumber}" required oninput="validateNumberInput(this)">
													   
													</div>
													<div class="col-xxl-3 col-lg-4 col-sm-6">
													    <label class="form-label">Wing</label>

													    <input type="text" name="wing" class="form-control" placeholder="e.g B wing" value="${ward.wing}" pattern="[A-Za-z ]+" title="Please enter letters only" required>

													</div>



													<div class="col-xxl-3 col-lg-4 col-sm-6">
													    <label class="form-label">Charges</label>
													    <input type="text" name="charges" class="form-control"
													           placeholder="e.g. 500" value="${ward.charges}"
													           pattern="^[0-9]*\.?[0-9]*$" title="Please enter a valid number" required>
													</div>


													<div class="col-xxl-3 col-lg-4 col-sm-6">
														<label class="form-label">Status</label>
														<select name="status" class="form-select">
															<c:choose>
																<c:when test="${ward.status == 'Active' }">
																
																	<option value="Active" selected>Active</option>
																	<option value="Inactive">Inactive</option>
																</c:when>
																<c:when test="${ward.status == 'Inactive' }">
																	<option disabled="disabled" selected>Select
																		status
																	</option>
																	<option value="Active">Active</option>
																	<option value="Inactive">Inactive</option>
																</c:when>
																<c:otherwise>
																
																	<option value="Active">Active</option>
																	<option value="Inactive">Inactive</option>
																</c:otherwise>
															</c:choose>

														</select>
													</div>


													<div class="col-sm-12">
														<div class="d-flex gap-2 justify-content-end">
															<a type="button" class="btn btn-outline-secondary"
																onclick="window.history.back()">
																Cancel
															</a>
															<button type="submit" class="btn btn-primary">
																Update Ward</button>
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
			
			function validateMaxCapacity() {
			      const maxCapacityInput = document.getElementById('maxCapacity');
			      const maxCapacityError = document.getElementById('maxCapacityError');
			      
			      maxCapacityInput.value = maxCapacityInput.value.replace(/\D/g, '');
			      
			      if (maxCapacityInput.value === "") {
			          maxCapacityError.style.display = 'block';
			          maxCapacityInput.classList.add('is-invalid');
			      } else {
			          maxCapacityError.style.display = 'none';
			          maxCapacityInput.classList.remove('is-invalid');
			      }
			  }
			  
			  
			  function validateNumberInput(input) {
			       input.value = input.value.replace(/\D/g, '');

			       const errorDiv = document.getElementById(input.name + 'Error');

			       if (input.value === "") {
			           errorDiv.style.display = 'block';
			           input.classList.add('is-invalid');
			       } else {
			           errorDiv.style.display = 'none';
			           input.classList.remove('is-invalid');
			       }
			   }
			   
			 
			   document.querySelector('input[name="charges"]').addEventListener('input', function(e) {
			       this.value = this.value.replace(/[^0-9.]/g, '');
			       
			       const parts = this.value.split('.');
			       if (parts.length > 2) {
			           this.value = parts[0] + '.' + parts[1]; 
			       }
			   });


			   
			   
			   function validateInput(input) {
			       // Allow only "Ward" followed by a space and one or more digits
			       const regex = /^ward\s\d+$/;
			       if (!regex.test(input.value) && input.value !== "") {
			           input.setCustomValidity('Inavalid ward name Please enter in the format "ward x" ');
			       } else {
			           input.setCustomValidity('');
			       }
			   }
		</script>
	</body>

	</html>