<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

			<!DOCTYPE html>
			<html>

			<head>
				<!-- <title>SPTI</title>
				<link rel="icon" type="image/x-icon" href="Verity.png">
				<meta charset="utf-8">
				<meta name="viewport" content="width=device-width, initial-scale=1">
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

				<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js">

				</script>

				<script defer type="text/javascript"
					src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script> -->


				<!-- Bootstrap CSS -->
				<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
					rel="stylesheet"> -->

				<!-- Bootstrap JS and Popper.js -->
				<!-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>  -->

				<!-- Font Awesome (optional for icons) -->
				<!-- <link rel="stylesheet"
					href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"> -->


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
							Current Admissions
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
										<h5 class="card-title">Current Admissions</h5>
										<!-- <a href="patients/add-form" class="btn btn-primary ms-auto">Add Patient</a> -->
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<div id="basicExample_wrapper"
												class="dataTables_wrapper dt-bootstrap5 no-footer">
												<div class="row">
													<div class="col-sm-12">
														<table
															class="table truncate m-0 align-middle dataTable no-footer"
															aria-describedby="basicExample_info" id="tableID">
															<thead>
																<tr>
																	<th>Name</th>
																	<th>Phone Number</th>
																	<th>Email</th>
																	<th>Date of birth</th>
																	<th>Em. contact</th>
																	<th>action</th>
																</tr>
															</thead>
															<tbody>
																<c:forEach items="${list}" var="user">

																	<tr>

																		<td style="width: 15%;">
																			<div
																				class="d-flex justify-content-start align-items-center">
																				<div class="avatar me-3">
																					<span
																						class="avatar-title bg-primary text-white rounded-circle d-flex align-items-center justify-content-center"
																						style="width: 30px; height: 30px; font-size: 1.2em;">
																						${fn:toUpperCase(fn:substring(user.firstName,
																						0,
																						1))}
																					</span>
																				</div>
																				<div class="userName">
																					<h5 class="name"
																						style="cursor: pointer;">
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
																		<td style="width: 10%;">${user.phoneNumber}</td>
																		<td style="width: 10%;">${user.email}</td>
																		<td style="width: 10%;">${user.dateOfBirth}</td>
																		<td style="width: 10%;">
																			${user.emergencyContactNumber }
																		</td>

																		<td style="width: 10%;"><a
																				class="badge bg-danger me-2"
																				href="http://localhost:8181/admissions/discharge-info/patient/${user.id }">Discharge</a>
																			<a
																				href="http://localhost:8181/patients/id?id=${user.id }"><i
																					class="fa fa-pencil  edit-icon"
																					style="font-size: 14px"></i></a>

																			<!-- <a
																				href="http://localhost:8181/admissions/details/${user.id}" id="openModalBtn"><i
																					class="fa fa-info-circle"
																					style="font-size: 14px"></i></a> -->

																			<!-- <a href="admissions/details/${user.id}"
																				class="btn btn-info" data-toggle="modal"
																				data-target="#detailsModal">
																				<i class="fa fa-info-circle"
																					style="font-size: 14px"></i>
																			</a> -->

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
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- <div>
					<jsp:include page="../admissions/popupCurrentAdmi.jsp"></jsp:include>
				</div> -->


				<!-- <div class="modal fade" id="popupModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
					aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">Popup Content</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body" id="modalBodyContent">
								<jsp:include page="popupCurrentAdmi.jsp"></jsp:include>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
				</div> -->

				<!-- <div class="modal fade" id="detailsModal" tabindex="-1" role="dialog"
					aria-labelledby="detailsModalLabel" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="detailsModalLabel">User Details</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body" id="modal-body">
								<jsp:include page="../admissions/popupCurrentAdmi.jsp"></jsp:include>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div> -->

				<!-- <div class="modal fade" id="detailsModal" tabindex="-1" role="dialog"
					aria-labelledby="detailsModalLabel" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="detailsModalLabel">User Details</h5>
								<button type="button" class="btn-close" aria-label="Close"
									id="closeModalButton"></button>
							</div>
							<div class="modal-body" id="modal-body">
								<jsp:include page="../admissions/popupCurrentAdmi.jsp"></jsp:include>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									id="closeModalButtonFooter">Close</button>
							</div>
						</div>
					</div>
				</div> -->     
				
				


				<div class="modal fade" id="detailsModal" tabindex="-1" role="dialog"
					aria-labelledby="detailsModalLabel" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content" style="width: 150%; margin: 0px 0px 0% -26%;">
							<div class="modal-header">
								<h5 style="color: white;" class="modal-title" id="detailsModalLabel">Patients Details</h5>
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

					// function toggleModal(show) {
					// 	const modal = document.getElementById("detailsModal");
					// 	modal.style.display = show ? "block" : "none"; // Show or hide the modal
					// }

					// // Close modal function
					// function closeModal(event) {
					// 	event.preventDefault(); // Prevent any default action (like form submission)
					// 	toggleModal(false); // Hide the modal
					// }

					// // Attach event listeners after the DOM content is loaded
					// document.addEventListener("DOMContentLoaded", function () {
					// 	// Attach close button functionality
					// 	document.getElementById("closeModalButton").addEventListener("click", closeModal);
					// 	document.getElementById("closeModalButtonFooter").addEventListener("click", closeModal);

					// 	// Optional: Close modal on clicking outside of it
					// 	window.onclick = function (event) {
					// 		const modal = document.getElementById("detailsModal");
					// 		if (event.target === modal) {
					// 			closeModal(event);
					// 		}
					// 	};
					// });



				</script>


			</body>

			</html>