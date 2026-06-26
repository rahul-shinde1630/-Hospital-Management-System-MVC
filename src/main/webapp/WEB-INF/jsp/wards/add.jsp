<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <title>Hospital Management System</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
</head>

<body>
	
	<!--Navigation/header-->
	
    <jsp:include page="../common/header.jsp"></jsp:include>
    <div class="app-hero-header d-flex align-items-center">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <i class="ri-home-8-line lh-1 pe-3 me-3 border-end"></i>
                <a href="/dashboards/">Home</a>
            </li>
            <li class="breadcrumb-item text-primary" aria-current="page">Add Wards</li>
        </ol>
    </div>
	
	<!--Main container-->
    <div class="app-container">
        <div class="app-body">
            <div class="row gx-3">
                <div class="col-sm-12">
					<!--add ward card-->
                    <div class="card">
                        <div class="card-header">
                            <h5 class="card-title">Add Ward</h5>
                        </div>

						
                        <div class="card-body">
							<!--submit ward details validation on submit-->
                            <form class="login-form" action="/wards" method="post" onsubmit="return validateWardForm()">
                                <div class="row gx-3">
                                    
									<!---->
                                    <div class="col-xxl-3 col-lg-4 col-sm-6">
                                        <label class="form-label">Ward Name</label> <span class="text-danger">*</span>
                                        <input type="text" name="wardName" class="form-control" placeholder="e.g. ward 1" id="wardInput" required>
                                        <div class="text-danger" id="error-message" style="display: none;">Invalid ward name or ward already exists. Please enter in the format 'ward X' (e.g., ward 1).</div>
                                    </div>

                                    <!-- Additional form fields -->
                                    <div class="col-xxl-3 col-lg-4 col-sm-6">
                                        <label class="form-label">Max Capacity</label>
                                        <input type="text" name="maxCapacity" class="form-control" placeholder="e.g. 20" required oninput="validateInput(this)">
                                    </div>

                                    <div class="col-xxl-3 col-lg-4 col-sm-6">
                                        <label class="form-label">Current Occupancy</label>
                                        <input type="text" name="currentOccupancy" class="form-control" placeholder="e.g. 15" required oninput="validateInput(this)">
                                    </div>

                                    <div class="col-xxl-3 col-lg-4 col-sm-6">
                                        <label class="form-label">Floor Number</label>
                                        <input type="text" name="floorNumber" class="form-control" placeholder="e.g. 2" required oninput="validateInput(this)">
                                    </div>

                                    <div class="col-xxl-3 col-lg-4 col-sm-6">
                                        <label class="form-label">Wing</label>
                                        <input type="text" name="wing" class="form-control" placeholder="e.g. B wing" id="wingInput" required oninput="validateWingInput(this)">
                                    </div>

                                    <div class="col-xxl-3 col-lg-4 col-sm-6">
                                        <label class="form-label">Charges</label>
                                        <input type="text" name="charges" class="form-control" placeholder="e.g 500" required oninput="validateInput(this)">
                                    </div>

									<div class="col-xxl-3 col-lg-4 col-sm-6">
									    <label class="form-label">Status</label>
									    <select name="status" class="form-select" required>
									        
									        <option value="Active" >Active</option>
									        <option value="Inactive">Inactive</option>
									    </select>
									</div>



                                <div class="col-sm-12">
                                    <div class="d-flex gap-2 justify-content-end">
                                        <a type="button" class="btn btn-outline-secondary" onclick="window.history.back()">Cancel</a>
                                        <button type="submit" class="btn btn-primary">Add Ward</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        const selectedWards = JSON.parse(localStorage.getItem('selectedWards')) || [];

        function validateWardForm() {
            const wardInput = document.getElementById('wardInput');
            const selectedWard = wardInput.value.trim();
            const errorMessage = document.getElementById('error-message');

            const wardPattern = /^ward \d+$/;

            errorMessage.style.display = 'none';

            if (!wardPattern.test(selectedWard)) {
                errorMessage.textContent = "Invalid ward name. Please enter in the format 'ward X' (e.g., ward 1).";
                errorMessage.style.display = 'block';
                return false;
            }

           
			

            selectedWards.push(selectedWard); 
            localStorage.setItem('selectedWards', JSON.stringify(selectedWards));

            return true;
        }

		
        function validateInput(input) {
            const regex = /^[0-9]*$/;
            if (!regex.test(input.value)) {
                input.value = input.value.replace(/[^0-9]/g, '');
            }
        }

        function validateWingInput(input) {
            input.value = input.value.replace(/[^A-Za-z\s]/g, '');
        }
    </script>

    <style>
        .is-invalid {
            border-color: red;
        }
    </style>
</body>

</html>
