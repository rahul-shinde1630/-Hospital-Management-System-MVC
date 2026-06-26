<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<!DOCTYPE html>
	<html lang="en">


	<!-- Mirrored from buybootstrap.com/demos/medflex/medflex-admin-dashboard/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 04 Jul 2024 08:06:55 GMT -->

	<head>
		<meta charset="utf-8">

		<meta name="viewport" content="width=device-width, initial-scale=1">

		<title>Hospital Management System </title>





		<!-- Meta -->

		<meta name="description" content="Marketplace for Bootstrap Admin Dashboards">
		<meta property="og:title" content="Admin Templates - Dashboard Templates">
		<meta property="og:description" content="Marketplace for Bootstrap Admin Dashboards">
		<meta property="og:type" content="Website">

		<link rel="icon" type="image/x-icon" href="/images/favicon.ico" href="/resources/assets/images/hospital 2.jpg">
		<link rel="stylesheet"
			href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


		<!-- *************
		************ CSS Files *************
	************* -->
		<link rel="stylesheet" href="/resources/assets/fonts/remix/remixicon.css">
		<link rel="stylesheet" href="/resources/assets/css/main.min.css">

		<!-- *************z
		************ Vendor Css Files *************
	************ -->

		<!-- Scrollbar CSS -->
		<link rel="stylesheet" href="/resources/assets/vendor/overlay-scroll/OverlayScrollbars.min.css">

		<!-- Data Tables -->
		<link rel="stylesheet" href="/resources/assets/vendor/datatables/dataTables.bs5.css">
		<link rel="stylesheet" href="/resources/assets/vendor/datatables/dataTables.bs5-custom.css">
		<link rel="stylesheet" href="/resources/assets/vendor/datatables/buttons/dataTables.bs5-custom.css">


		<!-- Bootstrap 5 -->

		<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
			integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
			crossorigin="anonymous"></script>

		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
			integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
			crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
			integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
			crossorigin="anonymous"></script> -->

	</head>

	<body>

		<!-- Loading starts -->
		<!-- <div id="loading-wrapper">
		<div class='spin-wrapper'>
			<div class='spin'>
				<div class='inner'></div>
			</div>
			<div class='spin'>
				<div class='inner'></div>
			</div>
			<div class='spin'>
				<div class='inner'></div>
			</div>
			<div class='spin'>
				<div class='inner'></div>
			</div>
			<div class='spin'>
				<div class='inner'></div>
			</div>
			<div class='spin'>
				<div class='inner'></div>
			</div>
		</div>
	</div> -->
		<!-- Loading ends -->

		<!-- Page wrapper starts -->
		<div class="page-wrapper">

			<!-- App header starts -->
			<div class="app-header d-flex align-items-center">

				<!-- Toggle buttons starts -->
				<div class="d-flex">
					<button class="toggle-sidebar">
						<i class="ri-menu-line"></i>
					</button>
					<button class="pin-sidebar">
						<i class="ri-menu-line"></i>
					</button>
				</div>
				<!-- Toggle buttons ends -->

				<!-- App brand starts -->
				<!-- <div class="app-brand ms-3">
					<a href="index.html" class="d-lg-block d-none">
						<img src="/resources/assets/images/logo.svg" class="logo" alt="Medicare Admin Template">
					</a>
					<a href="index.html" class="d-lg-none d-md-block">
						<img src="/resources/assets/images/logo-sm.svg" class="logo" alt="Medicare Admin Template">
					</a>



				</div> -->
				<!-- App brand ends -->

				<!-- App header actions starts -->
				<div class="header-actions">

					<!-- Search container starts -->
					<div class="search-container d-lg-block d-none mx-3">
    <form id="patientSearchForm" action="/patients/patientsForm" method="GET">
        <input type="text" class="form-control" placeholder="Search Patients By Mob No." id="phoneNumber" name="phoneNumber">
        <i class="ri-search-line"></i>
    </form>
</div>

					<!-- Search container ends -->
					<!-- 
					<form id="patientSearchForm" action="/patients/patientsForm" method="GET">
						<input type="text" id="phoneNumber" name="phoneNumber"
							style="width: 160px; margin-right: 15px;"> <input type="hidden"
							style="margin-top: 1px; display: inline-block; margin-right: 10px; height: 10px;">
						<span class="material-symbols-outlined" style="margin-top: 26px"></span>

					</form> -->


					<!-- Header actions starts -->
					<div class="d-lg-flex d-none gap-2">

						<!-- Select country dropdown starts -->
						<!-- <div class="dropdown">
							<a class="dropdown-toggle header-icon" href="#!" role="button" data-bs-toggle="dropdown"
								aria-expanded="false">
								<img src="/resources/assets/images/flags/1x1/fr.svg" class="header-country-flag"
									alt="Bootstrap Dashboards">
							</a>
							<div class="dropdown-menu dropdown-menu-end dropdown-mini">
								<div class="country-container">
									<a href="index.html" class="py-2">
										<img src="/resources/assets/images/flags/1x1/us.svg" alt="Admin Panel">
									</a>
									<a href="index.html" class="py-2">
										<img src="/resources/assets/images/flags/1x1/in.svg" alt="Admin Panels">
									</a>
									<a href="index.html" class="py-2">
										<img src="/resources/assets/images/flags/1x1/br.svg" alt="Admin Dashboards">
									</a>
									<a href="index.html" class="py-2">
										<img src="/resources/assets/images/flags/1x1/tr.svg" alt="Admin Templatess">
									</a>
									<a href="index.html" class="py-2">
										<img src="/resources/assets/images/flags/1x1/gb.svg" alt="Google Admin">
									</a>
								</div>
							</div>
						</div> -->
						<!-- Select country dropdown ends -->

						<!-- Notifications dropdown starts -->
						<div class="dropdown">
							<a class="dropdown-toggle header-icon" href="#!" role="button" data-bs-toggle="dropdown"
								aria-expanded="false">
								<i class="ri-list-check-3"></i>
								<span class="count-label warning"></span>
							</a>
							<div class="dropdown-menu dropdown-menu-end dropdown-300">
								<h5 class="fw-semibold px-3 py-2 text-primary">Activity</h5>

								<!-- Scroll starts -->
								<div class="scroll300">

									<!-- Activity List Starts -->
									<!-- <div class="p-3">
										<ul class="p-0 activity-list2">
											<li class="activity-item pb-3 mb-3">
												<a href="#!">
													<h5 class="fw-regular">
														<i class="ri-circle-fill text-danger me-1"></i>
														Invoices.
													</h5>
													<div class="ps-3 ms-2 border-start">
														<div class="d-flex align-items-center mb-2">
															<div class="flex-shrink-0">
																<img src="assets/images/products/1.jpg"
																	class="img-shadow img-3x rounded-1"
																	alt="Hospital Admin Templates">
															</div>
															<div class="flex-grow-1 ms-3">
																23 invoices have been paid to the MediCare Labs.
															</div>
														</div>
														<p class="m-0 small">10:20AM Today</p>
													</div>
												</a>
											</li>
											<li class="activity-item pb-3 mb-3">
												<a href="#!">
													<h5 class="fw-regular">
														<i class="ri-circle-fill text-info me-1"></i>
														Purchased.
													</h5>
													<div class="ps-3 ms-2 border-start">
														<div class="d-flex align-items-center mb-2">
															<div class="flex-shrink-0">
																<img src="assets/images/products/2.jpg"
																	class="img-shadow img-3x rounded-1"
																	alt="Hospital Admin Templates">
															</div>
															<div class="flex-grow-1 ms-3">
																28 new surgical equipments have been purchased.
															</div>
														</div>
														<p class="m-0 small">04:30PM Today</p>
													</div>
												</a>
											</li>
											<li class="activity-item pb-3 mb-3">
												<a href="#!">
													<h5 class="fw-regular">
														<i class="ri-circle-fill text-success me-1"></i>
														Appointed.
													</h5>
													<div class="ps-3 ms-2 border-start">
														<div class="d-flex align-items-center mb-2">
															<div class="flex-shrink-0">
																<img src="assets/images/products/8.jpg"
																	class="img-shadow img-3x rounded-1"
																	alt="Hospital Admin Templates">
															</div>
															<div class="flex-grow-1 ms-3">
																36 new doctors and 28 staff members appointed.
															</div>
														</div>
														<p class="m-0 small">06:50PM Today</p>
													</div>
												</a>
											</li>
											<li class="activity-item">
												<a href="#!">
													<h5 class="fw-regular">
														<i class="ri-circle-fill text-warning me-1"></i>
														Requested
													</h5>
													<div class="ps-3 ms-2 border-start">
														<div class="d-flex align-items-center mb-2">
															<div class="flex-shrink-0">
																<img src="assets/images/products/9.jpg"
																	class="img-shadow img-3x rounded-1"
																	alt="Hospital Admin Templates">
															</div>
															<div class="flex-grow-1 ms-3">
																Requested for 6 new vehicles for medical emergency. .
															</div>
														</div>
														<p class="m-0 small">08:30PM Today</p>
													</div>
												</a>
											</li>
										</ul>
									</div> -->
									<!-- Activity List Ends -->

								</div>
								<!-- Scroll ends -->

								<!-- View all button starts -->
								<div class="d-grid m-3">
									<a href="javascript:void(0)" class="btn btn-primary">View all</a>
								</div>
								<!-- View all button ends -->

							</div>
						</div>
						<!-- Notifications dropdown ends -->

						<!-- Notifications dropdown starts -->
						<div class="dropdown">
							<a class="dropdown-toggle header-icon" href="#!" role="button" data-bs-toggle="dropdown"
								aria-expanded="false">
								<i class="ri-alarm-warning-line"></i>
								<span class="count-label success"></span>
							</a>
							<div class="dropdown-menu dropdown-menu-end dropdown-300">
								<h5 class="fw-semibold px-3 py-2 text-primary">Alerts</h5>

								<!-- Scroll starts -->
								<div class="scroll300">

									<!-- Alert list starts -->
									<div class="p-3">
										<div class="d-flex py-2">
											<div class="icon-box md bg-info rounded-circle me-3">
												<span class="fw-bold fs-6 text-white">DS</span>
											</div>
											<div class="m-0">
												<h6 class="mb-1 fw-semibold">Douglass Shaw</h6>
												<p class="mb-1">
													Appointed as a new President 2014-2025
												</p>
												<p class="small m-0 opacity-50">Today, 07:30pm</p>
											</div>
										</div>
										<div class="d-flex py-2">
											<div class="icon-box md bg-danger rounded-circle me-3">
												<span class="fw-bold fs-6 text-white">WG</span>
											</div>
											<div class="m-0">
												<h6 class="mb-1 fw-semibold">Willie Garrison</h6>
												<p class="mb-1">
													Congratulate, James for new job.
												</p>
												<p class="small m-0 opacity-50">Today, 08:00pm</p>
											</div>
										</div>
										<div class="d-flex py-2">
											<div class="icon-box md bg-warning rounded-circle me-3">
												<span class="fw-bold fs-6 text-white">TJ</span>
											</div>
											<div class="m-0">
												<h6 class="mb-1 fw-semibold">Terry Jenkins</h6>
												<p class="mb-1">
													Lewis added new doctors training schedule.
												</p>
												<p class="small m-0 opacity-50">Today, 09:30pm</p>
											</div>
										</div>
									</div>
									<!-- Alert list ends -->

								</div>
								<!-- Scroll ends -->

								<!-- View all button starts -->
								<div class="d-grid m-3">
									<a href="javascript:void(0)" class="btn btn-primary">View all</a>
								</div>
								<!-- View all button ends -->

							</div>
						</div>
						<!-- Notifications dropdown ends -->

						<!-- Messages dropdown starts -->
						<div class="dropdown">
							<a class="dropdown-toggle header-icon" href="#!" role="button" data-bs-toggle="dropdown"
								aria-expanded="false">
								<i class="ri-message-3-line"></i>
								<span class="count-label"></span>
							</a>
							<div class="dropdown-menu dropdown-menu-end dropdown-300">
								<h5 class="fw-semibold px-3 py-2 text-primary">Messages</h5>

								<!-- Scroll starts -->
								<div class="scroll300">

									<!-- Messages list starts -->
									<div class="p-3">
										<div class="d-flex py-2">
											<img src="/resources/assets/images/user3.png"
												class="img-shadow img-3x me-3 rounded-5" alt="Hospital Admin Templates">
											<div class="m-0">
												<h6 class="mb-1 fw-semibold">${sessionScope.name}</h6>
												<p class="mb-1">
													Appointed as a new President 2014-2025
												</p>
												<p class="small m-0 opacity-50">Today, 07:30pm</p>
											</div>
										</div>
										<div class="d-flex py-2">
											<img src="/resources/assets/images/user1.png"
												class="img-shadow img-3x me-3 rounded-5" alt="Hospital Admin Templates">
											<div class="m-0">
												<h6 class="mb-1 fw-semibold">Clyde Fowler</h6>
												<p class="mb-1">
													Congratulate, James for new job.
												</p>
												<p class="small m-0 opacity-50">Today, 08:00pm</p>
											</div>
										</div>
										<div class="d-flex py-2">
											<img src="/resources/assets/images/user4.png"
												class="img-shadow img-3x me-3 rounded-5" alt="Hospital Admin Templates">
											<div class="m-0">
												<h6 class="mb-1 fw-semibold">Sophie Michiels</h6>
												<p class="mb-1">
													Lewis added new doctors training schedule.
												</p>
												<p class="small m-0 opacity-50">Today, 09:30pm</p>
											</div>
										</div>
									</div>
									<!-- Messages list ends -->

								</div>
								<!-- Scroll ends -->

								<!-- View all button starts -->
								<div class="d-grid m-3">
									<a href="javascript:void(0)" class="btn btn-primary">View all</a>
								</div>
								<!-- View all button ends -->

							</div>
						</div>
					</div>
					<!-- Header actions ends -->

					<!-- Header user settings starts -->
					<div class="dropdown ms-2">
						<a id="userSettings" class="dropdown-toggle d-flex align-items-center" href="#!" role="button"
							data-bs-toggle="dropdown" aria-expanded="false">
							<div class="avatar-box">JB<span class="status busy"></span></div>
						</a>
						<div class="dropdown-menu dropdown-menu-end shadow-lg">
							<div class="px-3 py-2">
								<span class="small">${sessionScope.role}</span>
								<h6 class="m-0">${sessionScope.name}</h6>
							</div>
							<div class="mx-3 my-2 d-grid">
								<a href="/logout" class="btn btn-danger">Logout</a>
							</div>
						</div>
					</div>
					<!-- Header user settings ends -->

				</div>
				<!-- App header actions ends -->

			</div>
			<!-- App header ends -->

			<!-- Main container starts -->
			<div class="main-container">

				<!-- Sidebar wrapper starts -->
				<nav id="sidebar" class="sidebar-wrapper">

					<!-- Sidebar profile starts -->
					<div class="sidebar-profile">
						<img src="/resources/assets/images/user6.png" class="img-shadow img-3x me-3 rounded-5"
							alt="Hospital Admin Templates">
						<div class="m-0">
							<h5 class="mb-1 profile-name text-nowrap text-truncate">${sessionScope.name}</h5>
							<p class="m-0 small profile-name text-nowrap text-truncate">${sessionScope.role}</p>
						</div>
					</div>


					<c:if test="${sessionScope.role.equals('Receptionist')}">
					    <!-- Sidebar menu for Receptionist starts -->
					    <div class="sidebarMenuScroll">
					        <ul class="sidebar-menu">
					            <li class="active current-page">
					                <a href="/dashboards/">
					                    <i class="ri-home-6-line"></i>
					                    <span class="menu-text">Receptionist Dashboard</span>
					                </a>
					            </li>

					            <!-- Patients Menu -->
					            <li class="treeview">
					                <a href="#!">
					                    <i class="ri-heart-pulse-line"></i>
					                    <span class="menu-text">Patients</span>
					                </a>
					                <ul class="treeview-menu">
					                    <li>
					                        <a href="/patients">Patients List</a>
					                    </li>
					                    <li>
					                        <a href="/patients/add-form">Add Patient</a>
					                    </li>
					                </ul>
					            </li>

					           

					            <!-- Wards Menu -->
					            <li class="treeview">
					                <a href="#!">
					                    <i class="ri-building-2-line"></i>
					                    <span class="menu-text">Wards</span>
					                </a>
					                <ul class="treeview-menu">
					                    <li>
					                        <a href="/wards">Wards List</a>
					                    </li>
					                    <li>
					                        <a href="/wards/addWardForm">Add Ward</a>
					                    </li>
					                </ul>
					            </li>

					            <!-- Staff Menu -->
					            <li class="treeview">
					                <a href="#!">
					                    <i class="ri-nurse-line"></i>
					                    <span class="menu-text">Staff</span>
					                </a>
					                <ul class="treeview-menu">
					                    <li>
					                        <a href="/hrs/staffs">Staff List</a>
					                    </li>
					                    <li>
					                        <a href="/hrs/addStaffForm">Add Staff</a>
					                    </li>
					                </ul>
					            </li>

					            <!-- Cots Menu -->
					            <li class="treeview">
					                <a href="#!">
					                    <i class="ri-hotel-bed-line"></i>
					                    <span class="menu-text">Cots</span>
					                </a>
					                <ul class="treeview-menu">
					                    
					                    <li>
					                        <a href="/cots/addCotForm">Add Cot</a>
					                    </li>
					                    <li>
					                        <a href="/cots">Cots List</a>
					                    </li>
					                </ul>
					            </li>
					        </ul>
					    </div> <!-- Sidebar menu ends -->
					</c:if>

					<!-- If the user is a Doctor, display the sidebar with patient management options -->
					<c:if test="${sessionScope.role.equals('Doctor')}">
						<!-- Sidebar menu starts -->
						<div class="sidebarMenuScroll">
							<ul class="sidebar-menu">
								<li class="active current-page">
									<a href="/dashboards/">
										<i class="ri-home-6-line"></i>
										<span class="menu-text">Doctor Dashboard</span>
									</a>
								</li>

								<li class="treeview">
									<a href="#!">
										<i class="ri-heart-pulse-line"></i>
										<span class="menu-text">Patients</span>
									</a>
									<ul class="treeview-menu">
										<li>
											<a href="/patients">Patients List</a>
										</li>
										<li>
											<!-- Only doctors can add patients -->
											<a href="/patients/add-form">Add Patient</a>
										</li>
									</ul>
								</li>

								<li class="treeview">
									<a href="#!">
										<i class="ri-dossier-line"></i>
										<span class="menu-text">Appointments</span>
									</a>
									<ul class="treeview-menu">
										<li>
											<a href="/appointments/todays/for-doctor">Today's Appointments</a>
										</li>
									</ul>
								</li>

								<li class="treeview">
									<a href="#!">
										<i class="ri-hotel-bed-line fs-4 lh-1"></i>
										<span class="menu-text">Admissions</span>
									</a>
									<ul class="treeview-menu">
										<li>
											<a href="/admissions/current-admissions">Current Admissions</a>
										</li>
									</ul>
								</li>
							</ul>
						</div> <!-- Sidebar menu ends -->
					</c:if>
					<!-- If the user is HR, display the HR-specific sidebar -->
					<c:if test="${sessionScope.role.equals('HR')}">
					    <!-- Sidebar menu starts -->
					    <div class="sidebarMenuScroll">
					        <ul class="sidebar-menu">
					            <li class="active current-page">
					                <a href="/dashboards/">
					                    <i class="ri-home-6-line"></i>
					                    <span class="menu-text">HR Dashboard</span>
					                </a>
					            </li>

					            <li class="treeview">
					                <a href="#!">
					                    <i class="ri-stethoscope-line"></i>
					                    <span class="menu-text">Doctors</span>
					                </a>
					                <ul class="treeview-menu">
					                    <li>
					                        <a href="/hrs/addDoctorForm">Add Doctor</a>
					                    </li>
					                    <li>
					                        <a href="/hrs/doctors">All Doctors</a>
					                    </li>
					                </ul>
					            </li>

					            <li class="treeview">
					                <a href="#!">
					                    <i class="ri-building-2-line"></i>
					                    <span class="menu-text">Wards</span>
					                </a>
					                <ul class="treeview-menu">
					                    <li>
					                        <a href="/wards/addWardForm">Add Ward</a>
					                    </li>
					                    <li>
					                        <a href="/wards">All Wards</a>
					                    </li>
					                </ul>
					            </li>

					            <li class="treeview">
					                <a href="#!">
					                    <i class="ri-nurse-line"></i>
					                    <span class="menu-text">Staff</span>
					                </a>
					                <ul class="treeview-menu">
					                    <li>
					                        <a href="/hrs/addStaffForm">Add Staff</a>
					                    </li>
					                    <li>
					                        <a href="/hrs/staffs">All Staff</a>
					                    </li>
					                </ul>
					            </li>

					            <li class="treeview">
					                <a href="#!">
					                    <i class="ri-hotel-bed-line"></i>
					                    <span class="menu-text">Cots</span>
					                </a>
					                <ul class="treeview-menu">
					                    <li>
					                        <a href="/cots/addCotForm">Add Cots</a>
					                    </li>
					                     <li>
					                        <a href="/cots">Cots List</a>
					                    </li>
					                    
					                    
					                </ul>
					            </li>
					        </ul>
					    </div> <!-- Sidebar menu ends -->
					</c:if>
					<!-- Sample HR Dashboard Code -->

   
    			

				</nav>
				<!-- Sidebar wrapper ends -->

				<!-- App container starts -->
				<!-- <div class="app-container"> -->

				<!-- App hero header starts -->
				<!-- <div class="app-hero-header d-flex align-items-center"> -->

				<!-- Breadcrumb starts -->
				<!-- <ol class="breadcrumb">
						<li class="breadcrumb-item">
							<i class="ri-home-8-line lh-1 pe-3 me-3 border-end"></i>
							<a href="/dashboards/hr">Home</a>
						</li>
						<li class="breadcrumb-item text-primary" aria-current="page">
							Add Patients
						</li>
					</ol> -->
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

				<!-- </div> -->
				<!-- App Hero header ends -->

				<!-- App body starts -->
				<!-- <div class="app-body"> -->


				<!-- <div class="row gx-3">
						<div class="col-xxl-12 col-sm-12">
							<div class="card mb-3 bg-2">
								<div class="card-body">
									<div class="py-4 px-3 text-white">
										<h6>Good Morning,</h6>
										<h2>Dr. Patrick Kim</h2>
										<h5>Your schedule today.</h5>
										<div class="mt-4 d-flex gap-3">
											<div class="d-flex align-items-center">
												<div class="icon-box lg bg-arctic rounded-3 me-3">
													<i class="ri-surgical-mask-line fs-4"></i>
												</div>
												<div class="d-flex flex-column">
													<h2 class="m-0 lh-1">9</h2>
													<p class="m-0">Patients</p>
												</div>
											</div>
											<div class="d-flex align-items-center">
												<div class="icon-box lg bg-lime rounded-3 me-3">
													<i class="ri-lungs-line fs-4"></i>
												</div>
												<div class="d-flex flex-column">
													<h2 class="m-0 lh-1">3</h2>
													<p class="m-0">Surgeries</p>
												</div>
											</div>
											<div class="d-flex align-items-center">
												<div class="icon-box lg bg-peach rounded-3 me-3">
													<i class="ri-walk-line fs-4"></i>
												</div>
												<div class="d-flex flex-column">
													<h2 class="m-0 lh-1">2</h2>
													<p class="m-0">Discharges</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>



					<div class="row gx-3">
						<div class="col-xl-3 col-sm-6 col-12">
							<div class="card mb-3">
								<div class="card-body">
									<div class="d-flex align-items-center">
										<div class="p-2 border border-success rounded-circle me-3">
											<div class="icon-box md bg-success-subtle rounded-5">
												<i class="ri-surgical-mask-line fs-4 text-success"></i>
											</div>
										</div>
										<div class="d-flex flex-column">
											<h2 class="lh-1">890</h2>
											<p class="m-0">New Patients</p>
										</div>
									</div>
									<div class="d-flex align-items-end justify-content-between mt-1">
										<a class="text-success" href="javascript:void(0);">
											<span>View All</span>
											<i class="ri-arrow-right-line text-success ms-1"></i>
										</a>
										<div class="text-end">
											<p class="mb-0 text-success">+40%</p>
											<span class="badge bg-success-subtle text-success small">this month</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 col-12">
							<div class="card mb-3">
								<div class="card-body">
									<div class="d-flex align-items-center">
										<div class="p-2 border border-primary rounded-circle me-3">
											<div class="icon-box md bg-primary-subtle rounded-5">
												<i class="ri-lungs-line fs-4 text-primary"></i>
											</div>
										</div>
										<div class="d-flex flex-column">
											<h2 class="lh-1">360</h2>
											<p class="m-0">OPD Patients</p>
										</div>
									</div>
									<div class="d-flex align-items-end justify-content-between mt-1">
										<a class="text-primary" href="javascript:void(0);">
											<span>View All</span>
											<i class="ri-arrow-right-line ms-1"></i>
										</a>
										<div class="text-end">
											<p class="mb-0 text-primary">+30%</p>
											<span class="badge bg-primary-subtle text-primary small">this month</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 col-12">
							<div class="card mb-3">
								<div class="card-body">
									<div class="d-flex align-items-center">
										<div class="p-2 border border-danger rounded-circle me-3">
											<div class="icon-box md bg-danger-subtle rounded-5">
												<i class="ri-microscope-line fs-4 text-danger"></i>
											</div>
										</div>
										<div class="d-flex flex-column">
											<h2 class="lh-1">980</h2>
											<p class="m-0">Lab tests</p>
										</div>
									</div>
									<div class="d-flex align-items-end justify-content-between mt-1">
										<a class="text-danger" href="javascript:void(0);">
											<span>View All</span>
											<i class="ri-arrow-right-line ms-1"></i>
										</a>
										<div class="text-end">
											<p class="mb-0 text-danger">+60%</p>
											<span class="badge bg-danger-subtle text-danger small">this month</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 col-12">
							<div class="card mb-3">
								<div class="card-body">
									<div class="d-flex align-items-center">
										<div class="p-2 border border-warning rounded-circle me-3">
											<div class="icon-box md bg-warning-subtle rounded-5">
												<i class="ri-money-dollar-circle-line fs-4 text-warning"></i>
											</div>
										</div>
										<div class="d-flex flex-column">
											<h2 class="lh-1">$98000</h2>
											<p class="m-0">Total Earnings</p>
										</div>
									</div>
									<div class="d-flex align-items-end justify-content-between mt-1">
										<a class="text-warning" href="javascript:void(0);">
											<span>View All</span>
											<i class="ri-arrow-right-line ms-1"></i>
										</a>
										<div class="text-end">
											<p class="mb-0 text-warning">+20%</p>
											<span class="badge bg-warning-subtle text-warning small">this month</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="row gx-3">
						<div class="col-xl-2 col-sm-6 col-12">
							<div class="card mb-3">
								<div class="card-body">
									<div class="d-flex flex-column align-items-center">
										<div class="icon-box md rounded-5 bg-primary mb-3">
											<i class="ri-verified-badge-line fs-4 lh-1"></i>
										</div>
										<h6>Appointments</h6>
										<h2 class="text-primary m-0">639</h2>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-2 col-sm-6 col-12">
							<div class="card mb-3">
								<div class="card-body">
									<div class="d-flex flex-column align-items-center">
										<div class="icon-box md rounded-5 bg-primary mb-3">
											<i class="ri-stethoscope-line fs-4 lh-1"></i>
										</div>
										<h6>Doctors</h6>
										<h2 class="text-primary m-0">83</h2>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-2 col-sm-6 col-12">
							<div class="card mb-3">
								<div class="card-body">
									<div class="d-flex flex-column align-items-center">
										<div class="icon-box md rounded-5 bg-primary mb-3">
											<i class="ri-psychotherapy-line fs-4 lh-1"></i>
										</div>
										<h6>Staff</h6>
										<h2 class="text-primary m-0">296</h2>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-2 col-sm-6 col-12">
							<div class="card mb-3">
								<div class="card-body">
									<div class="d-flex flex-column align-items-center">
										<div class="icon-box md rounded-5 bg-primary mb-3">
											<i class="ri-lungs-line fs-4 lh-1"></i>
										</div>
										<h6>Operations</h6>
										<h2 class="text-primary m-0">49</h2>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-2 col-sm-6 col-12">
							<div class="card mb-3">
								<div class="card-body">
									<div class="d-flex flex-column align-items-center">
										<div class="icon-box md rounded-5 bg-primary mb-3">
											<i class="ri-hotel-bed-line fs-4 lh-1"></i>
										</div>
										<h6>Admitted</h6>
										<h2 class="text-primary m-0">372</h2>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-2 col-sm-6 col-12">
							<div class="card mb-3">
								<div class="card-body">
									<div class="d-flex flex-column align-items-center">
										<div class="icon-box md rounded-5 bg-primary mb-3">
											<i class="ri-walk-line fs-4 lh-1"></i>
										</div>
										<h6>Discharged</h6>
										<h2 class="text-primary m-0">253</h2>
									</div>
								</div>
							</div>
						</div>
					</div>



					<div class="row gx-3">
						<div class="col-xxl-12 col-sm-12">
							<div class="card mb-3">
								<div class="card-header">
									<h5 class="card-title">Available Beds</h5>
								</div>
								<div class="card-body">
									<div id="availableBeds"></div>
								</div>
							</div>
						</div>
						<div class="col-xxl-6 col-sm-12">
							<div class="card mb-3">
								<div class="card-header">
									<h5 class="card-title">Patients</h5>
								</div>
								<div class="card-body">
									<div id="patients"></div>
								</div>
							</div>
						</div>
						<div class="col-xxl-6 col-sm-12">
							<div class="card mb-3">
								<div class="card-header">
									<h5 class="card-title">Treatment Type</h5>
								</div>
								<div class="card-body">
									<div id="treatment"></div>
								</div>
							</div>
						</div>
						<div class="col-xxl-6 col-sm-12">
							<div class="card mb-3">
								<div class="card-header">
									<h5 class="card-title">Hospital Earnings</h5>
								</div>
								<div class="card-body">


									<div class="row g-3">
										<div class="col-sm-6 col-12">
											<div class="border rounded-2 d-flex align-items-center flex-row p-2">
												<div class="me-2">
													<div id="sparkline1"></div>
												</div>
												<div class="m-0">
													<div class="d-flex align-items-center">
														<h4 class="m-0 fw-bold">$4900</h4>
														<div class="ms-2 text-primary d-flex">
															<small>20%</small> <i
																class="ri-arrow-right-up-line ms-1 fw-bold"></i>
														</div>
													</div>
													<small>Online Consultation</small>
												</div>
											</div>
										</div>
										<div class="col-sm-6 col-12">
											<div class="border rounded-2 d-flex align-items-center flex-row p-2">
												<div class="me-2">
													<div id="sparkline2"></div>
												</div>
												<div class="m-0">
													<div class="d-flex align-items-center">
														<div class="fs-4 fw-bold">$750</div>
														<div class="ms-2 text-danger d-flex">
															<small>26%</small> <i
																class="ri-arrow-right-down-line ms-1 fw-bold"></i>
														</div>
													</div>
													<small class="text-dark">Overall Purchases</small>
												</div>
											</div>
										</div>
										<div class="col-sm-6 col-12">
											<div class="border rounded-2 d-flex align-items-center flex-row p-2">
												<div class="me-2">
													<div id="sparkline3"></div>
												</div>
												<div class="m-0">
													<div class="d-flex align-items-center">
														<div class="fs-4 fw-bold">$560</div>
														<div class="ms-2 text-primary d-flex">
															<small>28%</small> <i
																class="ri-arrow-right-up-line ms-1 fw-bold"></i>
														</div>
													</div>
													<small class="text-dark">Pending Invoices</small>
												</div>
											</div>
										</div>
										<div class="col-sm-6 col-12">
											<div class="border rounded-2 d-flex align-items-center flex-row p-2">
												<div class="me-2">
													<div id="sparkline4"></div>
												</div>
												<div class="m-0">
													<div class="d-flex align-items-center">
														<div class="fs-4 fw-bold">$390</div>
														<div class="ms-2 text-primary d-flex">
															<small>30%</small> <i
																class="ri-arrow-right-up-line ms-1 fw-bold"></i>
														</div>
													</div>
													<small class="text-dark">Monthly Billing</small>
												</div>
											</div>
										</div>
									</div>


								</div>
							</div>
						</div>
						<div class="col-xxl-3 col-sm-6">
							<div class="card mb-3">
								<div class="card-header">
									<h5 class="card-title">Insurance Claims</h5>
								</div>
								<div class="card-body">
									<div id="claims"></div>
								</div>
							</div>
						</div>
						<div class="col-xxl-3 col-sm-6">
							<div class="card mb-3">
								<div class="card-header">
									<h5 class="card-title">Patients by Gender</h5>
								</div>
								<div class="card-body">
									<div class="auto-align-graph">
										<div id="genderAge"></div>
									</div>
								</div>
							</div>
						</div>
					</div> -->


				<!-- </div> -->
				<!-- App body ends   --------------------->

				<!-- App footer starts -->
				<!-- <div class="app-footer bg-white">
					<span>© Medflex admin 2024</span>
				</div> -->
				<!-- App footer ends -->




				<!-- </div> -->
				<!-- Main container ends -->







				<!-- </div> -->
				<!-- Page wrapper ends -->

				<!-- *************
			************ JavaScript Files *************
		************* -->
				<!-- Required jQuery first, then Bootstrap Bundle JS -->
				<script src="/resources/assets/js/jquery.min.js"></script>
				<script src="/resources/assets/js/bootstrap.bundle.min.js"></script>
				<script src="/resources/assets/js/moment.min.js"></script>

				<!-- *************
			************ Vendor Js Files *************
		************* -->

				<!-- Overlay Scroll JS -->
				<script src="/resources/assets/vendor/overlay-scroll/jquery.overlayScrollbars.min.js"></script>
				<script src="/resources/assets/vendor/overlay-scroll/custom-scrollbar.js"></script>

				<!-- Apex Charts -->
				<script src="/resources/assets/vendor/apex/apexcharts.min.js"></script>
				<script src="/resources/assets/vendor/apex/custom/home/patients.js"></script>
				<script src="/resources/assets/vendor/apex/custom/home/treatment.js"></script>
				<script src="/resources/assets/vendor/apex/custom/home/available-beds.js"></script>
				<script src="/resources/assets/vendor/apex/custom/home/earnings.js"></script>
				<script src="/resources/assets/vendor/apex/custom/home/gender-age.js"></script>
				<script src="/resources/assets/vendor/apex/custom/home/claims.js"></script>


				<!-- Data Tables -->
				<script src="/resources/assets/vendor/datatables/dataTables.min.js"></script>
				<script src="/resources/assets/vendor/datatables/dataTables.bootstrap.min.js"></script>
				<!-- <script src="/resources/assets/vendor/datatables/custom/custom-datatables.js"></script> -->


				<!-- Custom JS files -->
				<script src="/resources/assets/js/custom.js"></script>
				<script>
				 $(document).ready(function () {
				        $('#phoneNumber').on('change', function () {
				            $('#patientSearchForm').submit();
				        });
				    });
					
					
				</script>
	</body>




	</html>