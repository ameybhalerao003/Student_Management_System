<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Screen</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>
body {
    background: linear-gradient(135deg, #e3f2fd, #f8f9fa);
    min-height: 100vh;
    font-family: 'Segoe UI', sans-serif;
}

nav {
    border-radius: 0 0 16px 16px;
}

.enroll {
    background: linear-gradient(
        rgba(255,255,255,0.9),
        rgba(255,255,255,0.9)
    ),
    url("images/bg.jpg");
    background-size: cover;
}

.card-registration {
    background: rgba(255,255,255,0.95);
    box-shadow: 0 20px 40px rgba(0,0,0,0.15);
    border-radius: 16px;
    border: none;
}

.heading {
    font-weight: 700;
    color: #0d6efd;
    text-align: center;
    margin-bottom: 25px;
}

.form-control-sm, select {
    border-radius: 10px;
}

.btn-lg {
    padding: 10px 40px;
    border-radius: 30px;
    font-weight: 600;
}
</style>
</head>

<body>

<div class="card border-0">

<!-- NAVBAR -->
<nav class="d-flex justify-content-between align-items-center p-3 bg-primary-subtle">
    <img src="images/logo.jpg" width="100" height="50">

    <div>
        <a href="#enroll" class="btn btn-primary btn-sm rounded-pill me-2">Enroll Student</a>
        <a href="#view" class="btn btn-primary btn-sm rounded-pill me-2">View Student</a>
        <a href="/" class="btn btn-danger btn-sm rounded-pill">Logout</a>
    </div>
</nav>

<!-- ENROLL STUDENT -->
<section class="vh-100 enroll py-4" id="enroll">
    <div class="container h-100">
        <div class="row justify-content-center h-100">
            <div class="col-lg-8">
                <div class="card card-registration">
                    <div class="card-body p-4">

                        <h3 class="heading">Student Enrollment Form</h3>

                        <form action="enroll_student">

                            <!-- 1. Student Full Name -->
                            <div class="mb-3">
                                <input type="text" class="form-control form-control-sm"
                                       name="studentfullname"
                                       placeholder="Student Full Name" required>
                            </div>

                            <!-- 2. Student Email -->
                            <div class="mb-3">
                                <input type="email" class="form-control form-control-sm"
                                       name="studentemail"
                                       placeholder="Student Email" required>
                            </div>

                            <!-- 3. Student Age -->
                            <div class="mb-3">
                                <input type="number" class="form-control form-control-sm"
                                       name="studentage"
                                       placeholder="Student Age" required>
                            </div>

                            <!-- 4. Student College Name -->
                            <div class="mb-3">
                                <input type="text" class="form-control form-control-sm"
                                       name="studentcollagename"
                                       placeholder="College Name" required>
                            </div>

                            <!-- 5. Student Course -->
                            <div class="mb-3">
                                <label class="fw-semibold mb-1">Student Course</label><br>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio"
                                           name="studentcourse" value="Java" checked>
                                    <label class="form-check-label">Java</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio"
                                           name="studentcourse" value="Python">
                                    <label class="form-check-label">Python</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio"
                                           name="studentcourse" value="Testing">
                                    <label class="form-check-label">Testing</label>
                                </div>
                            </div>

                            <!-- 6. Batch Number -->
                            <div class="mb-3">
                                <select class="form-control form-control-sm"
                                        name="batchnumber" required>
                                    <option value="" disabled selected>Select Batch Number</option>
                                    <option>FDJ-160</option>
                                    <option>REG-160</option>
                                    <option>FDJ-161</option>
                                    <option>REG-161</option>
                                    <option>FDJ-162</option>
                                    <option>REG-162</option>
                                </select>
                            </div>

                            <!-- 7. Batch Mode -->
                            <div class="mb-3">
                                <select class="form-control form-control-sm"
                                        name="batchmode" required>
                                    <option value="" disabled selected>Select Batch Mode</option>
                                    <option>Online</option>
                                    <option>Offline</option>
                                </select>
                            </div>

                            <!-- 8. Fees Paid -->
                            <div class="mb-4">
                                <input type="number" step="0.01"
                                       class="form-control form-control-sm"
                                       name="feespaid"
                                       placeholder="Fees Paid" required>
                            </div>

                            <div class="text-center">
                                <input type="submit"
                                       class="btn btn-primary btn-lg"
                                       value="Submit">
                            </div>

                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- VIEW SECTION -->
<section id="view" class="vh-100 bg-dark text-white text-center">
    <h1 class="pt-5">View Student</h1>
</section>

</div>

</body>
</html>