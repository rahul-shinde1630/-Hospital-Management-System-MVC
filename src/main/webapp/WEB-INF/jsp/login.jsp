<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hospital</title>

    <!-- Meta -->
    <meta name="description" content="Marketplace for Bootstrap Admin Dashboards">
    <meta property="og:title" content="Admin Templates - Dashboard Templates">
    <meta property="og:description" content="Marketplace for Bootstrap Admin Dashboards">
    <meta property="og:type" content="Website">
    <link rel="shortcut icon" href="/resources/assets/images/">

    <!-- CSS Files -->
    <link rel="stylesheet" href="/resources/assets/fonts/remix/remixicon.css">
    <link rel="stylesheet" href="/resources/assets/css/main.min.css">

    <!-- JavaScript for Password Toggle -->
    <script>
        function togglePassword() {
            const passwordInput = document.getElementById('pwd');
            const toggleButton = document.getElementById('toggle-password');
            if (passwordInput.type === 'password') {
                passwordInput.type = 'text';
                toggleButton.innerHTML = '<i class="ri-eye-off-line text-primary"></i>';
            } else {
                passwordInput.type = 'password';
                toggleButton.innerHTML = '<i class="ri-eye-line text-primary"></i>';
            }
        }
    </script>
</head>

<body class="login-bg">

    <!-- Container starts -->
    <div class="container">

        <!-- Auth wrapper starts -->
        <div class="auth-wrapper justify-content-center">

            <!-- Form starts -->
            <form action="login-user" method="post">

                <div class="auth-box">
                    <a href="index.html" class="auth-logo mb-4">
                        <!-- <img src="/resources/assets/images/logo-dark.svg" alt="Bootstrap Gallery"> -->
                    </a>

                    <h4 class="mb-4">Login</h4>

                    <div class="mb-3">
                        <label class="form-label" for="username">Your Username<span class="text-danger">*</span></label>
                        <input type="text" id="username" class="form-control" placeholder="Enter your Username" name="username">
                    </div>

                    <div class="mb-2">
                        <label class="form-label" for="pwd">Your password <span class="text-danger">*</span></label>
                        <div class="input-group">
                            <input type="password" id="pwd" class="form-control" name="password" placeholder="Enter password">
                            <button id="toggle-password" class="btn btn-outline-secondary" type="button" onclick="togglePassword()">
                                <i class="ri-eye-line text-primary"></i>
                            </button>
                        </div>
                    </div>

                    <div class="d-flex justify-content-end mb-3">
                        <!-- <a href="forgot-password.html" class="text-decoration-underline">Forgot password?</a> -->
                    </div>

                    <div class="mb-3 d-grid gap-2">
                        <button type="submit" class="btn btn-primary">Login</button>
                        <!-- <a href="signup.html" class="btn btn-secondary">Not registered? Signup</a> -->
                    </div>

                </div>

            </form>
            <!-- Form ends -->

        </div>
        <!-- Auth wrapper ends -->

    </div>
    <!-- Container ends -->

</body>

</html>
