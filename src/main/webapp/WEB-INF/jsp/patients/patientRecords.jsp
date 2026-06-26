<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<!DOCTYPE html>
	<html>

	<head>
		<!-- <title>Book Appointment</title>
		<link rel="icon" type="image/x-icon" href="Verity.png">
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

		<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>

		<script defer type="text/javascript"
			src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
		<style>
			body,
			html {

				display: flex;
				justify-content: center;
				align-items: center;
				text-align: center;
				margin-bottom: 100px;
			}

			table {
				width: 900px;
				border-collapse: collapse;
			}

			table,
			th,
			td,
			tr {
				border: 1px solid black !important;
				padding: 5px;
				text-align: center;
			}

			.error {
				color: red;
				font-weight: bold;
			}
		</style> -->
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
					Book Appointment
				</li>
			</ol>
			<!-- Breadcrumb ends -->
		</div>


		<div class="app-container">
			<div class="app-body">
				<div class="row gx-3">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body">
								<!-- Table starts -->
								<div class="table-responsive">

									<c:choose>
										<c:when test="${empty patients}">
											<p class="error">Record is not available</p>
										</c:when>
										<c:otherwise>

											<c:if test="${not empty patients}">
												<!-- Table starts -->
												<div class="table-responsive">
													<div id="basicExample_wrapper"
														class="dataTables_wrapper dt-bootstrap5 no-footer">

														<div class="row">
															<div class="col-sm-12">
																<table
																	class="table truncate m-0 align-middle dataTable no-footer"
																	style="max-width:100% !important; margin-left:0px; width:1121.55px;"
																	area-describedby="tableID_info" role="gray">

																	<thead>
																		<tr>
																		<tr role="row">
																			<th style="width: 25%;">Name</th>
																			<th style="width: 25%;">Phone</th>
																			<th style="width: 25%;">Address</th>
																			<th style="width: 25%;">Action</th>
																		</tr>
																	</thead>
																	<tbody>
																		<c:forEach var="patient" items="${patients}">
																			<tr>


																				<td style="width: 25%;">
																					${patient.firstName}
																					${patient.lastName}
																				</td>
																				<td style="width: 25%;">
																					${patient.phoneNumber}
																				</td>
																				<td style="width: 25%;">
																					${patient.address}</td>
																				<td><a class="btn btn-primary"
																						href="/appointments/bookAppointmentsForm/patient/${patient.id}"
																						style="right: 146px">Appointment</a>
																				</td>
																			</tr>
																		</c:forEach>
																	</tbody>
																</table>
															</div>
														</div>
													</div>
												</div>
											</c:if>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<script>
				$(document).ready(function () {
					loadTable(${ list.number },
						${ list.numberOfElements };
						)}; 
			</script>
	</body>

	</html>