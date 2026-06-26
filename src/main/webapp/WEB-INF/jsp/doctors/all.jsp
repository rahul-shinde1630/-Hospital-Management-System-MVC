<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
	<title>Hospital Management System</title>
	<link rel="icon" type="image/x-icon" href="Verity.png">
	
	<!-- Include DataTables CSS and JS -->
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css" />
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>

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
				Doctors List
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
							<h5 class="card-title">All Doctors</h5>
							<a href="/hrs/addDoctorForm" class="btn btn-primary ms-auto">Add Doctors</a>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<!-- Search bar added above the table -->
								
								<table id="doctorsTable" class="table truncate m-0 align-middle dataTable no-footer">
									<thead>
										<tr>
											<th style="width:25%;">Name</th>
											<th style="width:10%;">Phone Number</th>
											<th style="width:15%;">Email</th>
											<th style="width:10%;">Experience</th>
											<th style="width:10%;">Specialization</th>
											<th style="width:15%;">Status</th>
											<th style="width:5%;">Action</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${list.content}" var="user">
											<tr>
												<td>
													<div class="d-flex justify-content-start align-items-center">
														<div class="avatar me-3">
															<span class="avatar-title bg-primary text-white rounded-circle d-flex align-items-center justify-content-center" style="width: 30px; height: 30px; font-size: 1.2em;">
																${fn:toUpperCase(fn:substring(user.firstName, 0, 1))}
															</span>
														</div>
														<div>
															<h5 class="name">
																<a>
																	${user.firstName} ${user.lastName}
																</a>
															</h5>
															<p class="text-muted mb-0">${user.qualifications}</p>
														</div>
													</div>
												</td>
												<td>${user.phoneNumber}</td>
												<td>${user.email}</td>
												<td>${user.experience}</td>
												<td>${user.specialization}</td>
												<td>
													<span class="badge bg-success">${user.status}</span>
												</td>
												<td>
													<a href="http://localhost:8181/hrs/doctors/id?id=${user.id}">
														<i class="fa fa-pencil" style="font-size: 14px; margin-right: 10px;"></i>
													</a>
													<button class="show-details" style="border: none;" data-fname="${user.firstName}"
														data-lname="${user.lastName}" data-speci="${user.specialization}"
														data-mail="${user.email}" data-phone="${user.phoneNumber}"
														data-address="${user.address}" data-expri="${user.experience}"
														data-status="${user.status}" data-branch="${user.branch}"
														data-days="${user.availableDays}" data-slot="${user.availableTimeSlots}"
														data-jDate="${user.joiningDate}" data-qulif="${user.qualifications}">
														<i class="fa fa-info-circle" style="font-size: 14px;"></i>
													</button>
												</td>
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

	<!-- Modal Code (Same as above) -->
	<div class="modal fade" id="detailsModal" tabindex="-1" aria-labelledby="detailsModalLabel" aria-hidden="true">
		<!-- Modal Content -->
	</div>

	<script>
		
		$(document).ready(function () {
			var table = $('#doctorsTable').DataTable({
				"paging": true, 
				"info": true,   
				"autoWidth": false 
			});

			
			$('#searchInput').on('keyup', function () {
				table.search(this.value).draw(); 
			});
		});
	</script>
</body>

</html>
