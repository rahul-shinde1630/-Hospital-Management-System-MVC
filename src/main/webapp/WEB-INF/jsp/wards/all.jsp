<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<title>Hospital Management System</title>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css" />
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>

<!-- <style type="text/css">
					.ward-table {
						background-color: #ddd;
					}

					.ward-table tr th {
						padding: 5px 1px 5px 1px;
						border-bottom: 1px solid #838282;
						font-size: 13px;
						font-weight: 600;
					}

					#tableID td {

						padding: 4px !important;
					}
				</style> -->
<style>
.modelHead {
	background: rgba(8, 8, 243, 0.571);
	color: white;
}

#detailsModal .modal-dialog {
	max-width: 60%;
}

.DrData {
	font-weight: 900;
	font-size: medium;
}

.PresentData {
	margin-left: 3%;
	font-weight: 500;
	font-size: medium;
}

.custom-search-container {
	text-align: right;
	margin-bottom: 10px;
}

#searchInput {
	width: 135px;
	border: inset;
}
</style>

</head>

<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="app-hero-header d-flex align-items-center">

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><i
				class="ri-home-8-line lh-1 pe-3 me-3 border-end"></i> <a
				href="/dashboards/">Home</a></li>
			<li class="breadcrumb-item text-primary" aria-current="page">
				Ward List</li>
		</ol>

	</div>
	<div class="app-container">
		<div class="app-body">
			<div class="row gx-3">
				<div class="col-sm-12">

					<div class="card">
						<div
							class="card-header d-flex align-items-center justify-content-between">
							<h5 class="card-title">Ward List</h5>
							<a href="wards/addWardForm" class="btn btn-primary ms-auto">Add
								Ward</a>
						</div>

						<!-- <h5 class="modal-title" id="exampleModalLabel">All Wards</h5> -->
						<!-- <hr class="mb-1"> -->
						<div class="card-body">
							<!-- Table starts -->
							<div class="table-responsive">

								<div id="basicExample_wrapper"
									class="dataTables_wrapper dt-bootstrap5 no-footer">



									<div class="custom-search-container">
									<label>Search:</label>
										<input type="text" id="searchInput"
											placeholder="Search Ward Name">
									</div>



									<div class="row">
										<div class="col-sm-12">
											<table id="basicExample"
												class="table truncate m-0 align-middle dataTable no-footer"
												aria-describedby="basicExample_info">
												<thead class="ward-table">

													<tr>
														<th style="width: 25%;">Name</th>

														<th style="width: 25%;">occupancy</th>
														<th style="width: 10%;">Floor number</th>
														<th style="width: 10%;">Wing</th>
														<th style="width: 15%;">Charges</th>
														<th style="width: 5%;">action</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${list}" var="user">
														<tr>

															<td style="width: 25%;">

																<div
																	class="d-flex justify-content-start align-items-center">
																	<div class="avatar me-3">
																		<span
																			class="avatar-title bg-primary text-white rounded-circle d-flex align-items-center justify-content-center"
																			style="width: 40px; height: 40px; font-size: 1.2em;">
																			${fn:toUpperCase(fn:substring(user.wardName,
																						0, 1))}
																		</span>
																	</div>
																	<div class="userName">
																		<h5 class="m-0" style="cursor: pointer;">
																			<a href="/patients/details-form/${user.id}"
																				class="text-decoration-none text-dark">
																				${user.wardName} </a>
																		</h5>

																	</div>
																</div>
															</td>
															<td style="width: 10%;"><span
																class="ward-occupancy bg-success"> current :
																	${user.currentOccupancy} </span> <br /> <span
																class="ward-occupancy bg-danger"> max capacity :
																	${user.maxCapacity}</span></td>

															<td style="width: 10%;">${user.floorNumber}</td>
															<td style="width: 15%;">${user.wing}</td>
															<td style="width: 10%;">${user.charges}</td>

															<td style="width: 5%;"><a
																href="http://localhost:8181/wards/id?id=${user.id }"><i
																	class="fa fa-pencil" style="font-size: 14px;"></i></a>

																<button class="show-details"
																	style="border: none; margin-left: 20%;"
																	data-wardName="${user.wardName}"
																	data-maxCapacity="${user.maxCapacity}"
																	data-currentOccupancy="${user.currentOccupancy}"
																	data-floorNumber="${user.floorNumber}"
																	data-wing="${user.wing}" data-status="${user.status}"
																	data-branch="${user.branch}"
																	data-charges="${user.charges}">
																	<i class="fa fa-info-circle" style="font-size: 14px;"></i>
																</button></td>

														</tr>
													</c:forEach>
												</tbody>
											</table>
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


	<div class="modal fade" id="detailsModal" tabindex="-1"
		aria-labelledby="detailsModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header modelHead">
					<h5 class="modal-title" id="detailsModalLabel">Ward Details</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body row">
					<div class="col-12 row">
						<p class="DrData col-6">
							Ward Name: <span class="PresentData" id="modalWardName"></span>
						</p>
						<p class="DrData col-6">
							Max Capacity: <span class="PresentData" id="modalMaxCapacity"></span>
						</p>
					</div>
					<hr>
					<div class="col-12 row">
						<p class="DrData col-6">
							Current Occupancy: <span class="PresentData"
								id="modalCurrentOccupancy"></span>
						</p>
						<p class="DrData col-6">
							Floor Number: <span class="PresentData" id="modalFloorNumber"></span>
						</p>
					</div>
					<hr>
					<div class="col-12 row">
						<p class="DrData col-6">
							Wing: <span class="PresentData" id="modalWing"></span>
						</p>
						<p class="DrData col-6">
							Status: <span class="PresentData" id="modalStatus"></span>
						</p>
					</div>
					<hr>
					<div class="col-12 row">
						<p class="DrData col-6">
							Branch: <span class="PresentData" id="modalBranch"></span>
						</p>
						<p class="DrData col-6">
							Charges: <span class="PresentData" id="modalCharges"></span>
						</p>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

</body>


<script>
				document.querySelectorAll('.show-details').forEach(button => {
					button.addEventListener('click', function () {
						
						const wardName = this.getAttribute('data-wardName');
						const maxCapacity = this.getAttribute('data-maxCapacity');
						const currentOccupancy = this.getAttribute('data-currentOccupancy');
						const floorNumber = this.getAttribute('data-floorNumber');
						const wing = this.getAttribute('data-wing');
						const status = this.getAttribute('data-status');
						const branch = this.getAttribute('data-branch');
						const charges = this.getAttribute('data-charges');

					
						document.getElementById('modalWardName').innerText = wardName;
						document.getElementById('modalMaxCapacity').innerText = maxCapacity;
						document.getElementById('modalCurrentOccupancy').innerText = currentOccupancy;
						document.getElementById('modalFloorNumber').innerText = floorNumber;
						document.getElementById('modalWing').innerText = wing;
						document.getElementById('modalStatus').innerText = status;
						document.getElementById('modalBranch').innerText = branch;
						document.getElementById('modalCharges').innerText = charges;

						
						const myModal = new bootstrap.Modal(document.getElementById('detailsModal'));
						myModal.show();
					});
				});
				$(document).ready(function () {
				   
				    var table = $('#basicExample').DataTable({
				        "searching": true,  
				        "paging": true,     
				        "info": true,        
				        "ordering": true,   
				        "lengthMenu": [10, 25, 50, 100],
				        "dom": 'lrtip' 
				    });

				  
				    $('#searchInput').on('input', function () {
				        var searchTerm = this.value.trim();
				        table.column(0).search(searchTerm).draw();  
				    });
				});
				

			</script>


</html>