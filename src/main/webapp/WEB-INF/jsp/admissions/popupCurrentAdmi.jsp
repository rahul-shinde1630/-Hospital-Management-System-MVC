<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>



<head>
    <title >Patients Details</title>
    <style>
        .lable{
            font-style: italic;
        }
        .data{
            margin-left: 10px;
            opacity: 0.7;
        }
        .lable,.data{
            font-size: medium;
            font-weight: 700;
        }
        
    </style>
</head>

<body>
    <c:if test="${not empty patient}">
        <div class="row">
            <div class="col-6"><span class="lable">First Name : </span> <span class="data">${patient.firstName}</span></div>
            <div class="col-6"><span class="lable">Last Name : </span><span class="data">${patient.lastName}</span></div>
        </div>
        <hr>
        <div class="row">
            <div class="col-6"><span class="lable">Gender : </span><span class="data">${patient.gender}</span></div>
            <div class="col-6"><span class="lable">Address : </span> <span class="data">${patient.address} </span></div>
        </div>
        <hr>
        <div class="row">
            <div class="col-6"><span class="lable">Phone Number : </span><span class="data">${patient.phoneNumber} </span></div>
            <div class="col-6"><span class="lable">Email : </span> <span class="data">${patient.email}</span></div>
        </div>
        <hr>
        <div class="row">
            <div class="col-6"><span class="lable">Emergency Contact Name : </span> <span class="data">${patient.emergencyContactName}</span></div>
            <div class="col-6"><span class="lable">Emergency Contact Number : </span> <span class="data">${patient.emergencyContactNumber}</span></div>
        </div>
        <hr>
        <div class="row">
            <div class="col-6"><span class="lable">Blood Type : </span> <span class="data">${patient.bloodType}</span></div>
            <div class="col-6"><span class="lable">Allergies : </span><span class="data">${patient.allergies} </span></div>
        </div>
        <hr>
        <div class="row">
            <div class="col-6"><span class="lable">Medical History : </span> <span class="data">${patient.medicalHistory}</span></div>
            <div class="col-6"><span class="lable">Occupation : </span> <span class="data">${patient.occupation }</span></div>
        </div>
        <hr>
        <div class="row">
            <div class="col-6"><span class="lable">Marital Status : </span> <span class="data">${patient.maritalStatus}</span></div>
            <div class="col-6"><span class="lable">Nationality : </span><span class="data">${patient.nationality} </span></div>
        </div>
        <hr>
        <div class="row">
            <div class="col-6"><span class="lable">Language Spoken : </span> <span class="data">${patient.languageSpoken}</span></div>
            <div class="col-6"><span class="lable">Religion : </span> <span class="data">${patient.religion}</span></div>
        </div>
        <hr>
        <div class="row">
            <div class="col-6"><span class="lable">Preferred Doctor : </span> <span class="data">${patient.preferredDoctor}</span></div>
            <div class="col-6"><span class="lable">Insurance : </span> <span class="data">${patient.insurance}</span></div>
        </div>
        <hr>
        <div class="row">
            <div class="col-6"><span class="lable">Insurance Id : </span><span class="data">${patient.insuranceId} </span></div>
            <div class="col-6"><span class="lable">Branch : </span> <span class="data">${patient.branch}</span></div>
        </div>
        <hr>
        <div class="row">
            <div class="col-6"><span class="lable">Doctor Id : </span> <span class="data">${patient.doctorId}</span></div>
            <div class="col-6"><span class="lable">Date Of Birth : </span><span class="data">${patient.dateOfBirth} </span></div>
        </div>
        <hr>
        <div class="row">
            <div class="col-6"><span class="lable">Admission Status : </span><span class="data">${patient.admissionStatus} </span></div>
        </div>
        <hr>
    </c:if>
</body>
</html>
