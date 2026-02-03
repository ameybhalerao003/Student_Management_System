<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>
body {
    min-height: 100vh;
    background: linear-gradient(135deg, #0d6efd, #6ea8fe);
    font-family: 'Segoe UI', sans-serif;
}

/* LOGIN CARD */
.login-card {
    background: rgba(255, 255, 255, 0.95);
    border-radius: 20px;
    box-shadow: 0 25px 50px rgba(0, 0, 0, 0.25);
}

/* HEADING */
.login-title {
    font-weight: 700;
    letter-spacing: 1px;
    color: #0d6efd;
}

/* INPUT */
.form-control {
    border-radius: 12px;
    padding: 10px;
}

.form-control:focus {
    border-color: #0d6efd;
    box-shadow: 0 0 0 0.2rem rgba(13, 110, 253, 0.25);
}

/* BUTTON */
.btn-login {
    border-radius: 30px;
    padding: 10px;
    font-weight: 600;
    transition: all 0.3s ease;
}

.btn-login:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 20px rgba(13, 110, 253, 0.4);
}

/* ERROR MESSAGE */
.error-box {
    background: rgba(255, 255, 255, 0.9);
    border-radius: 10px;
}
</style>
</head>

<body>

<!-- ERROR MESSAGE -->
<c:if test="${not empty login_fail}">
    <div class="container mt-3">
        <div class="error-box p-2 text-center text-danger fw-semibold">
            ${login_fail}
        </div>
    </div>
</c:if>

<!-- LOGIN FORM -->
<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card login-card p-4" style="width: 23rem;">
        <div class="card-body">

            <h3 class="login-title text-center mb-4">Admin Login</h3>

            <form action="login">

                <div class="mb-3">
                    <input type="text"
                           class="form-control"
                           name="username"
                           placeholder="Username"
                           required>
                </div>

                <div class="mb-3">
                    <input type="password"
                           class="form-control"
                           name="password"
                           placeholder="Password"
                           required>
                </div>

                <div class="d-grid">
                    <button type="submit" class="btn btn-primary btn-login">
                        Login
                    </button>
                </div>

            </form>

        </div>
    </div>
</div>

</body>
</html>