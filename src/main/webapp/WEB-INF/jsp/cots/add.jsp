<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!DOCTYPE html>
    <html>

    <head>
        <title>Hospital Management System</title>
        <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">

        </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous">

        </script> -->

        <style type="text/css">
            .errmsgs,
            .errnum,
            .errmsg {
                color: red;
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
                    Add Cots
                </li>
            </ol>
            <!-- Breadcrumb ends -->
        </div>

        <div class="app-container">
            <div class="app-body">
                <!-- Row starts -->
                <div class="row gx-3">
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="card-title">Add Cot</h5>
                            </div>


                            <form class="login-form px-3" id="addCotForm" action="/cots" method="post">

                                <div class="row gx-3">


                                    <div class="col-xxl-3 col-lg-4 col-sm-6">
                                        <label class="form-label">Cot Number</label>
                                        <input id="CotNumber" type="text" name="cotNumber" class="form-control"
                                            placeholder="e.g 2" value="${fillData.cotNumber}" required maxlength="2">
                                        <div id="Error" class="errnum">${ErrorNUM}</div>
                                    </div>

                                    <div class="col-xxl-3 col-lg-4 col-sm-6">
                                        <label class="form-label">Ward Number</label>
                                        <select id="wordId" name="wardId" class="form-select" required>
                                            <option disabled="disabled" selected>Select ward</option>
                                            <c:forEach items="${wards}" var="ward">
                                                <option value="${ward.id }">${ward.wardName }</option>
                                            </c:forEach>
                                        </select>
                                        <div id="ErrorWard" class="errmsg">${Errormsg}</div>
                                    </div>


                                    <div class="col-xxl-3 col-lg-4 col-sm-6">
                                        <label class="form-label">Status</label>
                                        <select id="status" name="status" class="form-select" required>
                                            <option disabled="disabled">Select status</option>
                                            <option value="Active" selected>Active</option>
                                            <option value="Inactive">Inactive</option>
                                        </select>
                                        <div id="statusError" class=" errmsgs">${Errormsgs}</div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="d-flex gap-2 justify-content-end">
                                        <a type="button" class="btn btn-outline-secondary"
                                            onclick="window.history.back()">
                                            Cancel
                                        </a>
                                        <button type="submit" class="btn btn-primary">Add Cot</button>
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
                const form = document.getElementById('addCotForm');
                form.addEventListener('submit', function (event) {

                    form.querySelectorAll('.form-control, .form-select').forEach(input => {
                        input.classList.remove('is-invalid')
                    })


                    if (!form.checkValidity()) {
                        event.preventDefault();
                        event.stopPropagation();


                        form.querySelectorAll(':invalid').forEach(input => {


                            input.classList.add('is-invalid')
                        })
                    }

                    form.classList.add('was-validated');
                });
            });

            // $("#CotNumber").on("keyup", function () {
            //     var phone = $(this).val();

            //     $(this).val(phone.replace(/[^0-9]/g, ''));

            // });

            $('#wordId').change(function () {
                var selectedValue = $(this).val();

                if (selectedValue !== "") {
                    $('#Error').hide();
                }
            });

            // $('#status').change(function () {
            //     var selectedValue = $(this).val();

            //     if (selectedValue !== "") {
            //         $('#ErrorWard').hide();
            //     }
            // });


            document.getElementById('wordId').addEventListener('change', function () {
                var selectedValue = this.value;

                if (selectedValue !== "") {
                    document.getElementById('ErrorWard').style.display = 'none';
                }
            });


            // cot num validation 

            document.getElementById("CotNumber").addEventListener("keyup", function () {
                var phone = this.value;

                this.value = phone.replace(/[^0-9]/g, '');

                var errorElement = document.getElementById("Error");
                if (errorElement) {
                    errorElement.textContent = "";
                }
            });

        </script>
    </body>

    </html>