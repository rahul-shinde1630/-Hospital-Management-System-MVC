<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

			<!DOCTYPE html>
			<html>

			<head>
				<title>Hospital Management System</title>
				<link rel="icon" type="image/x-icon" href="Verity.png">
				<meta charset="utf-8">
				<meta name="viewport" content="width=device-width, initial-scale=1">
				<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script> -->
				<!-- 
				<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js">

				</script> -->

				<!-- <script defer type="text/javascript"
					src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script> -->

				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
					rel="stylesheet">
				<script
					src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>





				<style>
					.modal-header {
						background: #0000ff94;

					}
				</style>
			</head>


			<jsp:include page="../common/header.jsp"></jsp:include>

			<div class="app-hero-header d-flex align-items-center">

				<!-- Breadcrumb starts -->
				<ol class="breadcrumb">
					<li class="breadcrumb-item">
						<i class="ri-home-8-line lh-1 pe-3 me-3 border-end"></i>
						<a href="/dashboards/">Home</a>
					</li>
					<li class="breadcrumb-item text-primary" aria-current="page">
						Patients List
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
									<h5 class="card-title">Patients List</h5>
									<a href="patients/add-form" class="btn btn-primary ms-auto">Add Patient</a>
								</div>

								<div class="card-body">
									<!-- Table starts -->
									<div class="table-responsive">
										<div id="basicExample_wrapper"
											class="dataTables_wrapper dt-bootstrap5 no-footer">
											<!-- <div class="row">
												<div class="col-sm-12 col-md-6">
													<div class="dataTables_length" id="basicExample_length">
														<label>Display <select name="basicExample_length"
																aria-controls="basicExample"
																class="form-select form-select-sm">
																<option value="12">12</option>
																<option value="25">25</option>
																<option value="50">50</option>
															</select> Records Per Page</label>
													</div>
												</div>
												<div class="col-sm-12 col-md-6">
													<div id="basicExample_filter" class="dataTables_filter">
														<label>Search:<input type="search"
																class="form-control form-control-sm" placeholder=""
																aria-controls="basicExample"></label>
													</div>
												</div>
											</div> -->

											<div class="row">
												<div class="col-sm-12">
													<table id="patientsTable"
														class="table truncate m-0 align-middle dataTable no-footer"
														aria-describedby="basicExample_info">
														<thead>
															<tr>
																<th>Name</th>
																<th>Phone Number</th>
																<th>Email</th>
																<th>Date of birth</th>
																<th>Em. contact</th>
																<th>Action</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${list.content}" var="user">
																<tr>

																	<td style="width: 25%;">
																		<div
																			class="d-flex justify-content-start align-items-center">
																			<div class=" me-3">
																				<span
																					class="avatar-title bg-primary text-white rounded-circle d-flex align-items-center justify-content-center"
																					style="width: 30px; height: 30px; font-size: 0.75em;">
																					${fn:toUpperCase(fn:substring(user.firstName,
																					0,
																					1))}
																				</span>
																			</div>
																			<div>
																				<h5 class="name"
																					style="cursor: pointer; font-size: small;">
																					<a href="/patients/details-form/${user.id}"
																						class="text-decoration-none text-dark">
																						${user.firstName}
																						${user.lastName}
																					</a>
																				</h5>
																				<p class="text-muted mb-0">
																					${user.bloodType}</p>
																			</div>
																		</div>


																	</td>
																	<td style="width: 15%;">${user.phoneNumber}</td>
																	<td style="width: 20%;">${user.email}</td>
																	<td style="width: 15%;">${user.dateOfBirth}</td>
																	<td style="width: 15%;">
																		${user.emergencyContactNumber }</td>

																	<td style="width: 10%;">

																		<c:choose>
																			<c:when
																				test="${user.admissionStatus != 'Admitted'}">
																				<a href="http://localhost:8181/admissions/patient/${user.id}"
																					class="badge bg-success me-2">Admit</a>
																			</c:when>
																			<c:otherwise>
																				<a href="http://localhost:8181/admissions/discharge-info/patient/${user.id}"
																					class="badge bg-danger me-2">Discharge</a>
																			</c:otherwise>
																		</c:choose>
																		<a
																			href="http://localhost:8181/patients/id?id=${user.id }">
																			<i class="fa fa-pencil edit-icon"
																				style="font-size: 14px"></i>
																		</a>
																		<a href="javascript:void(0);"
																			style="margin-left: 15px;"
																			data-toggle="modal"
																			data-target="#detailsModal"
																			onclick="loadPatientDetails(${user.id});">
																			<i class="fa fa-info-circle"
																				style="font-size: 14px"></i>
																		</a>
																	</td>

																</tr>
															</c:forEach>
														</tbody>
													</table>
												</div>
											</div>


										</div>

									</div>
									<!-- Table ends -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal fade" id="detailsModal" tabindex="-1" role="dialog"
					aria-labelledby="detailsModalLabel" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content" style="width: 150%; margin: 0px 0px 0% -26%;">
							<div class="modal-header">
								<h5 style="color: white;"  class="modal-title" id="detailsModalLabel">Patients Details</h5>
								<!-- <button type="button" class="btn-close" aria-label="Close"
									id="closeModalButton"></button> -->
							</div>
							<div class="modal-body" id="modal-body">
								<jsp:include page="../admissions/popupCurrentAdmi.jsp"></jsp:include>
							</div>
							<!-- <div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									id="closeModalButtonFooter">Close</button>
							</div> -->
						</div>
					</div>
				</div>
				
				
				
				

				<script>

					function loadPatientDetails(patientId) {
						const url = "http://localhost:8181/admissions/details/" + patientId;
						console.log("Fetching details from URL: " + url); // Log the URL
						$.get(url, function (data) {
							if (data) {
								$("#modal-body").html(data); // Load the response into the modal body
								$("#detailsModal").modal("show"); // Show the modal
							} else {
								console.error("No data received for patient ID: " + patientId);
								$("#modal-body").html("<p>No details available.</p>");
								$("#detailsModal").modal("show");
							}
						}).fail(function (jqXHR, textStatus, errorThrown) {
							console.error("Error fetching patient details: " + textStatus, errorThrown);
							$("#modal-body").html("<p>Error loading details.</p>");
							$("#detailsModal").modal("show");
						});
					}



					$(document).ready(function () {
						$('#patientsTable').DataTable();
					});


				</script>

			</html>