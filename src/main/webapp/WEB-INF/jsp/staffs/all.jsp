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
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

				<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js">

				</script>

				<script defer type="text/javascript"
					src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>

				<style type="text/css">
					.ward-table {
					    background-color: #87CEEB; /* Sky blue color */
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
				</style> 
				
				<!-- Add jQuery -->
				<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
				<!-- Add DataTables CSS -->
				<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
				<!-- Add DataTables JS -->
				<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

				
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
							All Staff
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
										<h5 class="card-title">All Staff</h5>
										<a href="/hrs/addStaffForm" class="btn btn-primary ms-auto">Add Staff</a>
									</div>
									
									
									
								
									<div class="card-body">
										<div class="table-responsive">
											<div id="basicExample_wrapper"
												class="dataTables_wrapper dt-bootstrap5 no-footer">



												<div class="row">
													<div class="col-sm-12">
														<table id="basicExample"
															class="table truncate m-0 align-middle dataTable no-footer"
															aria-describedby="basicExample_info">
															<thead>
																<tr>
																	<th style="width: 25%;">Name</th>
																	<th style="width: 10%;">Phone Number</th>
																	<th style="width: 15%;">email</th>
																	<th style="width: 10%;">Address</th>
																	<th style="width: 10%;">Experience</th>
																	<th style="width: 15%;">Status</th>
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
																						style="width: 30px; height: 30px; font-size: 1.2em;">
																						${fn:toUpperCase(fn:substring(user.firstName,
																						0, 1))}
																					</span>
																				</div>
																				<div>
																					<h5 class="name">
																						<a>
																							${user.firstName}
																							${user.lastName
																							}
																						</a>
																					</h5>
																					<p class="text-muted mb-0">
																						${user.role }</p>
																				</div>
																			</div>
																		</td>
																		<td style="width: 10%;">${user.phoneNumber}</td>
																		<td style="width: 15%;">${user.email}</td>
																		<td style="width: 10%;">${user.address}</td>
																		<td style="width: 15%;">${user.experience}</td>
																		<td style="width: 10%;"><span
																				class="staff-active">
																				${user.status}</span>
																		</td>

																		<td style="width: 5%;">
																			<a
																				href="http://localhost:8181/hrs/staffs/id?id=${user.id }"><i
																					class="fa fa-pencil  edit-icon"
																					style="font-size: 14px"></i></a>

																			<button class="show-details"
																				style="border: none; margin-left: 20%;"
																				data-fname="${user.firstName}"
																				data-lname="${user.lastName}"
																				data-role="${user.role}"
																				data-mail="${user.email}"
																				data-phone="${user.phoneNumber}"
																				data-address="${user.address}"
																				data-expri="${user.experience}"
																				data-status="${user.status}"
																				data-branch="${user.branch}"> <i
																					class="fa fa-info-circle"
																					style="font-size: 14px;"></i>
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
						</div>
					</div>
				</div>


				<div class="modal fade" id="detailsModal" tabindex="-1" aria-labelledby="detailsModalLabel"
					aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header modelHead">
								<h5 class="modal-title" id="detailsModalLabel">Staff Details</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body row">
								<div class="col-12 row">
									<p class="DrData col-6">First Name: <span class="PresentData"
											id="modalFirstName"></span></p>
									<p class="DrData col-6">Last Name: <span class="PresentData"
											id="modalLastName"></span></p>
								</div>
								<hr>
								<div class="col-12 row">
									<p class="DrData col-6">Role: <span class="PresentData" id="modalRole"></span></p>
									<p class="DrData col-6">Email: <span class="PresentData" id="modalEmail"></span></p>
								</div>
								<hr>
								<div class="col-12 row">
									<p class="DrData col-6">Phone: <span class="PresentData" id="modalPhone"></span></p>
									<p class="DrData col-6">Address: <span class="PresentData" id="modalAddress"></span>
									</p>
								</div>
								<hr>
								<div class="col-12 row">
									<p class="DrData col-6">Experience: <span class="PresentData"
											id="modalExperience"></span></p>
									<p class="DrData col-6">Status: <span class="PresentData" id="modalStatus"></span>
									</p>
								</div>
								<hr>
								<div class="col-12 row">
									<p class="DrData col-6">Branch: <span class="PresentData" id="modalBranch"></span>
									</p>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>


			</body>

			<script>

				document.querySelectorAll('.show-details').forEach(button => {
					button.addEventListener('click', function () {
						const firstName = this.getAttribute('data-fname');
						const lastName = this.getAttribute('data-lname');
						const role = this.getAttribute('data-role');
						const email = this.getAttribute('data-mail');
						const phone = this.getAttribute('data-phone');
						const address = this.getAttribute('data-address');
						const experience = this.getAttribute('data-expri');
						const status = this.getAttribute('data-status');
						const branch = this.getAttribute('data-branch');

						document.getElementById('modalFirstName').innerText = firstName;
						document.getElementById('modalLastName').innerText = lastName;
						document.getElementById('modalRole').innerText = role;
						document.getElementById('modalEmail').innerText = email;
						document.getElementById('modalPhone').innerText = phone;
						document.getElementById('modalAddress').innerText = address;
						document.getElementById('modalExperience').innerText = experience;
						document.getElementById('modalStatus').innerText = status;
						document.getElementById('modalBranch').innerText = branch;

						const myModal = new bootstrap.Modal(document.getElementById('detailsModal'));
						myModal.show();
					});
				});

				
				$(document).ready(function () {
				    $('#basicExample').DataTable({
				        "pageLength": 12,  // Sets default records per page to 12
				        "lengthMenu": [12, 25, 50], // Dropdown options for records per page
				        "language": {
				            "search": "Search:", // Customizes the search label
				            "lengthMenu": "Display _MENU_ Records Per Page"
				        }
				    });
				});

			</script>

			</html>