<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login | Admin Portal</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">

<style>
    :root {
        --primary-color: #4361ee;
        --secondary-color: #3f37c9;
        --bg-gradient: linear-gradient(135deg, #4361ee 0%, #3f37c9 100%);
    }

    body {
        font-family: 'Poppins', sans-serif;
        background: var(--bg-gradient);
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    /* LOGIN CARD */
    .login-card {
        background: #ffffff;
        border: none;
        border-radius: 20px;
        box-shadow: 0 15px 35px rgba(0,0,0,0.2);
        width: 100%;
        max-width: 400px;
        overflow: hidden;
        animation: fadeInUp 0.5s ease-out;
    }

    @keyframes fadeInUp {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }

    /* HEADER */
    .card-header-custom {
        background: white;
        padding-top: 40px;
        text-align: center;
        border: none;
    }

    .login-icon {
        width: 70px;
        height: 70px;
        background: rgba(67, 97, 238, 0.1);
        color: var(--primary-color);
        border-radius: 50%;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        font-size: 2rem;
        margin-bottom: 15px;
    }

    /* INPUTS */
    .form-floating > .form-control:focus {
        border-color: var(--primary-color);
        box-shadow: 0 0 0 0.25rem rgba(67, 97, 238, 0.15);
    }

    .form-control {
        border-radius: 12px;
        border: 1px solid #e0e0e0;
        background-color: #f8f9fa;
    }

    /* BUTTON */
    .btn-login {
        background-color: var(--primary-color);
        border: none;
        padding: 12px;
        border-radius: 12px;
        font-weight: 600;
        letter-spacing: 0.5px;
        transition: all 0.3s ease;
    }

    .btn-login:hover {
        background-color: var(--secondary-color);
        transform: translateY(-2px);
        box-shadow: 0 5px 15px rgba(67, 97, 238, 0.4);
    }

    /* LINKS */
    .forgot-link {
        color: #6c757d;
        text-decoration: none;
        font-size: 0.9rem;
        transition: 0.2s;
    }
    
    .forgot-link:hover {
        color: var(--primary-color);
    }

</style>
</head>

<body>

    <div class="container d-flex flex-column align-items-center">

        <c:if test="${not empty login_fail}">
            <div class="alert alert-danger shadow-sm rounded-4 mb-4 px-4 py-3 d-flex align-items-center animate__animated animate__shakeX" role="alert" style="max-width: 400px; width: 100%;">
                <i class="bi bi-exclamation-octagon-fill me-2 fs-5"></i>
                <div>
                    <strong>Access Denied!</strong> ${login_fail}
                </div>
            </div>
        </c:if>

        <div class="card login-card p-4">
            
            <div class="card-header-custom">
                <div class="login-icon">
                    <i class="bi bi-shield-lock-fill"></i>
                </div>
                <h4 class="fw-bold text-dark">Welcome Back</h4>
                <p class="text-muted small">Please login to your account</p>
            </div>

            <div class="card-body pt-2">
                <form action="login" method="post">

                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="floatingInput" name="username" placeholder="Username" required>
                        <label for="floatingInput"><i class="bi bi-person me-2"></i>Username</label>
                    </div>

                    <div class="form-floating mb-4">
                        <input type="password" class="form-control" id="floatingPassword" name="password" placeholder="Password" required>
                        <label for="floatingPassword"><i class="bi bi-key me-2"></i>Password</label>
                    </div>

                    <div class="d-grid mb-4">
                        <button type="submit" class="btn btn-primary btn-login btn-lg">
                            Sign In
                        </button>
                    </div>

                    <div class="text-center">
                        <a href="#" class="forgot-link">Forgot Password?</a>
                    </div>

                </form>
            </div>
        </div>
        
        <div class="mt-4 text-white-50 small">
            &copy; 2025 Student Management System
        </div>

    </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>