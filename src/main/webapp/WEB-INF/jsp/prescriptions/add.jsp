<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>Add Prescription</title>
<style>

Custom CSS for form styling 
        .form-label {
	font-weight: bold;
}

#prescription-table {
	display: table;
	width: 100%;
	border-collapse: collapse;
	margin: 20px 0;
}

#prescription-table thead th {
	background-color: #cccccc;
	font-size: 13px;
	color: #333;
	text-align: left;
	padding: 12px;
	border-bottom: 2px solid #ddd;
}

#prescription-table tbody td {
	padding: 12px;
	border-bottom: 1px solid #ddd;
	font-size: 13px;
}

#prescription-table tbody td .h6-label, #prescription-table tbody td small
	{
	font-size: 13px;
}

#prescription-table tbody tr:hover {
	background-color: #f9f9f9;
}

.action-button {
	background-color: #4CAF50;
	color: white;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	font-size: 16px;
	cursor: pointer;
	border: none;
	border-radius: 4px;
}

.action-button:hover {
	background-color: #45a049;
}

.mandatory-sign {
	color: red;
}
</style>
</head>

<jsp:include page="../common/header.jsp"></jsp:include>
<div class="app-hero-header d-flex align-items-center">
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><i
			class="ri-home-8-line lh-1 pe-3 me-3 border-end"></i> <a
			href="/dashboards/">Home</a></li>
		<li class="breadcrumb-item text-primary" aria-current="page">Add
			Prescription</li>
	</ol>
</div>

<div class="app-container">
	<div class="app-body">
		<div class="row gx-3">
			<div class="col-sm-12">
				<div class="card">
					<div class="card-header">
						<h5 class="card-title">Add Prescription Details</h5>
					</div>
					<div class="card-body">
						<form class="login-form" action="/prescriptions" method="post">
							<div class="row">
								<!-- Patient Name -->
								<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label">Name <span
											class="mandatory-sign">*</span></label> <input type="hidden"
											name="patientId" value="${patient.id}"> <input
											type="text" name="firstName" class="form-control"
											placeholder="e.g 2"
											value="${patient.firstName} ${patient.lastName}">
									</div>

								</div>

								<!-- Preferred Doctor -->
								<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label">Preferred Doctor</label> <select
											name="doctorId" id="select-doctor" class="form-control">
											<c:forEach items="${doctors}" var="doctor">
												<option value="${doctor.id}"
													${doctor.id == doctorId ? 'selected' : ''}>
													${doctor.firstName} ${doctor.lastName}</option>
											</c:forEach>
										</select>
									</div>
								</div>

								<!-- Prescription Date -->
								<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label">Prescription Date</label> <input
											type="date" name="prescriptionDate" required
											class="form-control" id="prescriptionDate">
									</div>
								</div>

								<!-- Medicine Type -->
								<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label">Type</label> <select
											name="medicineType" class="form-control" required>
											<option>Select Type</option>
											<c:forEach items="${medicineTypes}" var="medicine">
												<option value="${medicine.type}">${medicine.type}</option>
											</c:forEach>
										</select>
									</div>
								</div>
								
								

								<!-- Diagnosis -->
								<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label">Diagnosis</label> <input type="text"
											name="diagnosis"  class="form-control" required
											value="${patient.diagnosis}">
									</div>
								</div>

								<!-- Medicine Name -->
								<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label">Medicine Name</label> <input
											type="text" name="medicineName" required class="form-control">
									</div>
								</div>

								<!-- Dosage -->
								<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label">Dosage</label> <input type="text"
											name="dosage" required class="form-control">
									</div>
								</div>

								<!-- Instructions -->
								<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label">Instructions</label> <input
											type="text" name="instructions" required class="form-control">
									</div>
								</div>

								<!-- Number of Days -->
								<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label">Days</label> <input type="text"
											name="numDays" required class="form-control">
									</div>
								</div>

								<!-- Quantity -->
								<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label">Quantity</label> <input type="text"
											name="tabletQuantity" required class="form-control">
									</div>
								</div>

								<!-- Advice -->
								<div class="col-xxl-3 col-lg-4 col-sm-6">
									<div class="mb-3">
										<label class="form-label">Advice</label>
										<textarea name="advice" id="advice" required
											class="form-control"></textarea>
									</div>
								</div>

								<!-- Add Medicine Button -->
								<div class="col-md-1">
									<label class="form-label">Add</label>
									<button type="button" onclick="saveMedicine()"
										class="btn btn-success btn-sm form-control">+</button>
								</div>
							</div>
							<!-- Prescription Table -->
							<hr>
							<div class="col-md-12">
								<table class="table" style="display: none;"
									id="prescription-table">
									<thead>
										<tr>
											<th scope="col">Type</th>
											<th scope="col">Medicine</th>
											<th scope="col">Dosage</th>
											<th scope="col">Info</th>
											<th scope="col">Action</th>
										</tr>
									</thead>
									<tbody id="precscription-body"></tbody>
								</table>
							</div>
							<!-- Save and Cancel Buttons -->
							<div class="float-end">
								<a href="/generate-pdf/${patient.id}"
									class="btn btn-warning btn-sm">Print</a>
								<button type="button" onclick="savePrescription()"
									class="btn btn-warning btn-sm mx-2">Save</button>
								<button type="button" class="btn btn-secondary btn-sm"
									onclick="window.history.back()">Cancel</button>
							</div>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>


<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function () {
    let currentDate = new Date().toISOString().slice(0, 10);
    document.getElementById('prescriptionDate').value = currentDate;
});

let medicines = [];
function saveMedicine() {
    let medicineTable = document.getElementById('prescription-table');
    let medicineBody = document.getElementById('precscription-body');
    let type = document.querySelector('select[name="medicineType"]').value;
    let name = document.querySelector('input[name="medicineName"]').value;
    let dosage = document.querySelector('input[name="dosage"]').value;
    let days = document.querySelector('input[name="numDays"]').value;
    let quantity = document.querySelector('input[name="tabletQuantity"]').value;
    let instructions = document.querySelector('input[name="instructions"]').value;

    if (!name || !dosage) {
        alert('Please fill in the required fields.');
        return;
    }

    let newMedicine = {
        type,
        name,
        dosage,
        days,
        quantity,
        instructions,
    };

    medicines.push(newMedicine);

    let tr = document.createElement('tr');
    tr.innerHTML = `<td>${type}</td><td>${name}</td><td>${dosage}</td><td>${days} Days, ${quantity} Qty, Instructions: ${instructions}</td><td><button type='button' class='btn btn-danger btn-sm' onclick='deleteRow(this)'>X</button></td>`;
    medicineBody.appendChild(tr);
    medicineTable.style.display = 'table';
}

function deleteRow(button) {
    let row = button.closest('tr');
    row.remove();
}

function savePrescription() {
    if (medicines.length === 0) {
        alert('Please add at least one medicine.');
        return;
    }

    let prescriptionData = {
        doctorId: document.querySelector('select[name="doctorId"]').value,
        patientId: document.querySelector('input[name="patientId"]').value,
        prescriptionDate: document.querySelector('input[name="prescriptionDate"]').value,
        diagnosis: document.querySelector('input[name="diagnosis"]').value,
        advice: document.querySelector('textarea[name="advice"]').value,
        medicines: medicines,
    };

    fetch('/savePrescription', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(prescriptionData),
    })
        .then(response => response.json())
        .then(data => {
            alert('Prescription saved successfully.');
            window.location.href = `/view-patient/${data.patientId}`;
        })
        .catch(error => {
            alert('An error occurred while saving the prescription.');
            console.error('Error:', error);
        });
}

</script>

</body>
</html>
