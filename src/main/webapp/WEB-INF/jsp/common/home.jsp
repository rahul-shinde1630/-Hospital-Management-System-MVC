<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<html>

	<head>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
			integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
			crossorigin="anonymous" referrerpolicy="no-referrer" />
		<style>
			.dashboard {
				margin-right: 100px;
			}

			.overview-metrics {
				grid-column: span 2;
				display: flex;
				justify-content: space-around;
			}

			s .metric {
				background: #f5f5f5;
				padding: 10px;
				border-radius: 5px;
				text-align: center;
			}

			.charts,
			.appointments,
			.alerts,
			.quick-actions {
				background: #fff;
				padding: 20px;
				border-radius: 5px;
				box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
			}

			.charts {
				display: flex;
				justify-content: space-between;
			}

			.chart {
				width: 48%;
				height: 200px;
				background: #f5f5f5;
				border-radius: 5px;
			}

			ul {
				list-style: none;
				padding: 0;
			}

			li {
				margin-bottom: 10px;
			}

			button {
				margin-right: 10px;
				padding: 10px 20px;
				border: none;
				background: #007bff;
				color: #fff;
				border-radius: 5px;
				cursor: pointer;
			}

			.wards-container {
				display: flex;
				flex-wrap: wrap;
				gap: 20px;
			}

			.ward {
				background: #f5f5f5;
				padding: 20px;
				border-radius: 5px;
				box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
				width: calc(33.33% - 20px);
				box-sizing: border-box;
			}

			.cots-container {
				display: flex;
				flex-wrap: wrap;
				gap: 5px;
				margin-top: 10px;
			}

			.cot {
				width: 30px;
				height: 30px;
				background: #007bff;
				border-radius: 3px;
			}

			.cot.occupied {
				background: #dc3545;
			}
		</style>
	</head>

	<body>
		<jsp:include page="../common/header.jsp"></jsp:include>

		<div class="app-hero-header d-flex align-items-center">
			<!-- Common breadcrumb start -->
			<ol class="breadcrumb">
				<li class="breadcrumb-item">
					<i class="ri-home-8-line lh-1 pe-3 me-3 border-end"></i>
					<c:choose>
						<c:when test="${sessionScope.role.equals('HR')}">
							<a href="/dashboards/">Home</a>
						</c:when>
						<c:when test="${sessionScope.role.equals('Doctor')}">
							<a href="/dashboards/">Home </a>
						</c:when>
						<c:when test="${sessionScope.role.equals('Receptionist')}">
							<a href="/dashboards/">Home </a>
						</c:when>
						<c:otherwise>
							<a href="/login">Login</a>
						</c:otherwise>
					</c:choose>
				</li>
			</ol>
			<!-- Common breadcrumb end -->
		</div>

		<div class="app-container">
			<div class="app-body">
				<c:choose>
					<c:when test="${sessionScope.role.equals('HR')}">
						<!-- HR specific content -->


						<div class="row gx-3">

							<div class="col-xxl-2 col-sm-4">
								<div class="card mb-3">
									<div class="card-body mh-230">

										<!-- Card details start -->
										
										<div >
										<a href="/hrs/doctors">
											<div class="d-flex flex-column align-items-center hover-zoom">
												<div class="icon-box xl bg-primary-subtle rounded-5 mb-2 no-shadow">
													<i class="ri-empathize-line fs-1 text-primary"></i>
												</div>
												<h1 class="text-primary">3</h1>
												<h6>Doctor</h6>
												<span class="badge bg-primary"></span>
											</div>
											</a>
										</div>
										
										<!-- Card details end -->

									</div>
								</div>
							</div>
							<div class="col-xxl-2 col-sm-4">
								<div class="card mb-3">
									<div class="card-body mh-230">

										<!-- Card details start -->
										
										<div>
										<a href="/wards">
											<div class="d-flex flex-column align-items-center">
												<div class="icon-box xl bg-danger-subtle rounded-5 mb-2 no-shadow">
													<i class="fa-regular fa-hospital"
														style="font-size: 30px; color: #007bff;"></i>
												</div>
												<h1 class="text-danger">${occupiedWards}</h1>
												<h6>Ward</h6>
												<span class="badge bg-danger"></span>
											</div>
											</a>
										</div>
										
										<!-- Card details end -->

									</div>
								</div>
							</div>
							<div class="col-xxl-2 col-sm-4">
								<div class="card mb-3">
									<div class="card-body mh-230">

										<!-- Card details start -->
										<a href="/appointments/todays">
										<div>
											<div class="d-flex flex-column align-items-center">
												<div class="icon-box xl bg-success-subtle rounded-5 mb-2 no-shadow">
													<i class="ri-dossier-line fs-1 text-success"></i>
												</div>
												<h1 class="text-success">${appointmentsForHR}</h1>
												<h6>Todays Appointments</h6>
												<span class="badge bg-success"></span>
											</div>
										</div>
										</a>
										<!-- Card details end -->

									</div>
								</div>									
							</div>




							<div class="col-xxl-2 col-sm-4">
								<div class="card mb-3">
									<div class="card-body mh-230">

										<!-- Card details start -->
										<div>
										<a href="#">
											<div class="d-flex flex-column align-items-center">
												<div class="icon-box xl bg-primary-subtle rounded-5 mb-2 no-shadow">
													<i class="fa-solid fa-bed fs-1 text-primary"></i>
												</div>
												<h1 class="text-primary">${cotcount}</h1>
												<h6>Available Cots</h6>
												<span class="badge bg-primary"></span>
											</div>
											</a>
										</div>
										<!-- Card details end -->

									</div>
								</div>
							</div>
							
							
							
							<div class="col-xxl-2 col-sm-4">
								<div class="card mb-3">
									<div class="card-body mh-230">

										<!-- Card details start -->
										<div>
										<a href="/hrs/staffs">
											<div class="d-flex flex-column align-items-center">
												<div class="icon-box xl bg-primary-subtle rounded-5 mb-2 no-shadow">
													<i class="fa-solid ri-nurse-line fs-1 text-primary"></i>
												</div>
												<h1 class="text-primary">${staffCount}</h1>
												<h6>All Staff</h6>
												<span class="badge bg-primary"></span>
											</div>
											</a>
										</div>
										<!-- Card details end -->

									</div>
								</div>
							</div>
						</div>

					</c:when>
					<c:when test="${sessionScope.role.equals('Doctor')}">
						<!-- Doctor specific content -->
						<div class="row gx-3">

							<div class="col-xxl-2 col-sm-4">
								<div class="card mb-3">
									<div class="card-body mh-230">

										<!-- Card details start -->
										<div>
										<a href="/patients">
											<div class="d-flex flex-column align-items-center">
												<div class="icon-box xl bg-primary-subtle rounded-5 mb-2 no-shadow">
													<i class="ri-empathize-line fs-1 text-primary"></i>
												</div>
												<h1 class="text-primary">${patientCount}</h1>
												<h6>Patients</h6>
												<span class="badge bg-primary"></span>
											</div>
											</a>
										</div>
										<!-- Card details end -->

									</div>
								</div>
							</div>
							<div class="col-xxl-2 col-sm-4">
								<div class="card mb-3">
									<div class="card-body mh-230">

										<!-- Card details start -->
										<div>
										<a href="/wards">
											<div class="d-flex flex-column align-items-center">
												<div class="icon-box xl bg-danger-subtle rounded-5 mb-2 no-shadow">
													<i class="fa-regular fa-hospital"
														style="font-size: 30px; color: #007bff;"></i>
												</div>
												<h1 class="text-danger">${occupiedWards}</h1>
												<h6>Occupied Ward</h6>
												<span class="badge bg-danger"></span>
											</div>
											</a>
										</div>
										<!-- Card details end -->

									</div>
								</div>
							</div>
							<div class="col-xxl-2 col-sm-4">
								<div class="card mb-3">
									<div class="card-body mh-230">

										<!-- Card details start -->
										<div >
										<a href="/appointments/todays/for-doctor">
											<div class="d-flex flex-column align-items-center">
												<div class="icon-box xl bg-success-subtle rounded-5 mb-2 no-shadow">
													<i class="ri-dossier-line fs-1 text-success"></i>
												</div>
												<h1 class="text-success">${appointments}</h1>
												<h6>Todays Appointments</h6>
												<span class="badge bg-success"></span>
											</div>
											</a>
										</div>
										<!-- Card details end -->

									</div>
								</div>
							</div>
						</div>
						<!-- Row ends -->
						<!-- <div class="metric"> : ${occupiedWards}</div> -->
					</c:when>
					<c:when test="${sessionScope.role.equals('Receptionist')}">
						<!-- HR specific content -->


						<div class="row gx-3">

							<div class="col-xxl-2 col-sm-4">
								<div class="card mb-3">
									<div class="card-body mh-230">

										<!-- Card details start -->
										
										<div >
										<a href="/hrs/doctors">
											<div class="d-flex flex-column align-items-center hover-zoom">
												<div class="icon-box xl bg-primary-subtle rounded-5 mb-2 no-shadow">
													<i class="ri-empathize-line fs-1 text-primary"></i>
												</div>
												<h1 class="text-primary">3</h1>
												<h6>Doctor</h6>
												<span class="badge bg-primary"></span>
											</div>
											</a>
										</div>
										
										<!-- Card details end -->

									</div>
								</div>
							</div>
							<div class="col-xxl-2 col-sm-4">
								<div class="card mb-3">
									<div class="card-body mh-230">

										<!-- Card details start -->
										
										<div>
										<a href="/wards">
											<div class="d-flex flex-column align-items-center">
												<div class="icon-box xl bg-danger-subtle rounded-5 mb-2 no-shadow">
													<i class="fa-regular fa-hospital"
														style="font-size: 30px; color: #007bff;"></i>
												</div>
												<h1 class="text-danger">${occupiedWards}</h1>
												<h6>Ward</h6>
												<span class="badge bg-danger"></span>
											</div>
											</a>
										</div>
										
										<!-- Card details end -->

									</div>
								</div>
							</div>
							<div class="col-xxl-2 col-sm-4">
								<div class="card mb-3">
									<div class="card-body mh-230">

										<!-- Card details start -->
										<a href="/appointments/todays">
										<div>
											<div class="d-flex flex-column align-items-center">
												<div class="icon-box xl bg-success-subtle rounded-5 mb-2 no-shadow">
													<i class="ri-dossier-line fs-1 text-success"></i>
												</div>
												<h1 class="text-success">${appointmentsForHR}</h1>
												<h6>Todays Appointments</h6>
												<span class="badge bg-success"></span>
											</div>
										</div>
										</a>
										<!-- Card details end -->

									</div>
								</div>									
							</div>




							<div class="col-xxl-2 col-sm-4">
								<div class="card mb-3">
									<div class="card-body mh-230">

										<!-- Card details start -->
										<div>
										<a href="#">
											<div class="d-flex flex-column align-items-center">
												<div class="icon-box xl bg-primary-subtle rounded-5 mb-2 no-shadow">
													<i class="fa-solid fa-bed fs-1 text-primary"></i>
												</div>
												<h1 class="text-primary">${cotcount}</h1>
												<h6>Available Cots</h6>
												<span class="badge bg-primary"></span>
											</div>
											</a>
										</div>
										<!-- Card details end -->

									</div>
								</div>
							</div>
							
							
							
							<div class="col-xxl-2 col-sm-4">
								<div class="card mb-3">
									<div class="card-body mh-230">

										<!-- Card details start -->
										<div>
										<a href="/hrs/staffs">
											<div class="d-flex flex-column align-items-center">
												<div class="icon-box xl bg-primary-subtle rounded-5 mb-2 no-shadow">
													<i class="fa-solid ri-nurse-line fs-1 text-primary"></i>
												</div>
												<h1 class="text-primary">${staffCount}</h1>
												<h6>All Staff</h6>
												<span class="badge bg-primary"></span>
											</div>
											</a>
										</div>
										<!-- Card details end -->

									</div>
								</div>
							</div>
						</div>


					</c:when>
				</c:choose>
			</div>
		</div>
	</body>

	</html>