<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard | Student Management</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">

<style>
    /* STYLES */
    :root {
        --primary-color: #4361ee;
        --secondary-color: #3f37c9;
        --bg-color: #f0f2f5;
        --card-shadow: 0 10px 30px -5px rgba(0, 0, 0, 0.1);
    }
    body { background-color: var(--bg-color); font-family: 'Poppins', sans-serif; color: #444; }
    .navbar { background: #ffffff; box-shadow: 0 4px 20px rgba(0,0,0,0.05); padding: 15px 0; position: sticky; top: 0; z-index: 1000; }
    .nav-btn { transition: all 0.3s ease; font-weight: 500; padding: 8px 20px; cursor: pointer; text-decoration: none; }
    .nav-btn:hover { transform: translateY(-2px); }
    
    section { padding: 50px 0; display: none; animation: fadeIn 0.4s ease-in-out; }
    .section-active { display: block !important; }
    @keyframes fadeIn { from { opacity: 0; transform: translateY(10px); } to { opacity: 1; transform: translateY(0); } }
    
    .card-ui { border: none; border-radius: 20px; background: #ffffff; box-shadow: var(--card-shadow); overflow: hidden; }
    .card-header-custom { background: linear-gradient(135deg, var(--primary-color), var(--secondary-color)); color: white; padding: 25px; text-align: center; border-radius: 20px 20px 0 0; }
    .form-floating > .form-control:focus, .form-floating > .form-select:focus { border-color: var(--primary-color); box-shadow: 0 0 0 0.25rem rgba(67, 97, 238, 0.15); }
    
    .course-selector .btn-check:checked + .btn-outline-primary { background-color: var(--primary-color); color: white; border-color: var(--primary-color); box-shadow: 0 4px 10px rgba(67, 97, 238, 0.3); }
    .course-selector label { border-radius: 50px; padding: 8px 20px; margin-right: 10px; border: 1px solid #dee2e6; color: #6c757d; cursor: pointer; }
    .course-selector label:hover { background-color: #f8f9fa; }
    
    .custom-table thead { background-color: var(--primary-color); color: white; }
    .custom-table th { font-weight: 500; border: none; padding: 15px; }
    .custom-table td { padding: 15px; vertical-align: middle; font-size: 0.9rem; }
    .custom-table tbody tr { transition: all 0.2s; }
    .custom-table tbody tr:hover { background-color: #f8faff; transform: scale(1.005); box-shadow: 0 5px 15px rgba(0,0,0,0.05); }
    
    .action-btn { width: 32px; height: 32px; display: inline-flex; align-items: center; justify-content: center; border-radius: 8px; margin: 0 2px; transition: 0.2s; }
    .btn-pay { color: #198754; background: #e8f5e9; border: none; }
    .btn-shift { color: #4361ee; background: #eef2ff; border: none; }
    .btn-remove { color: #dc3545; background: #fef2f2; border: none; }
    .btn-pay:hover { background: #198754; color: white; }
    .btn-shift:hover { background: #4361ee; color: white; }
    .btn-remove:hover { background: #dc3545; color: white; }
</style>
</head>

<body>

<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand d-flex align-items-center" href="#">
            <img src="images/logo.jpg" height="40" class="rounded me-2" alt="Logo">
            <span class="fw-bold text-primary">AdminPanel</span>
        </a>
        
        <div class="d-flex gap-2">
            <button onclick="showSection('enroll')" class="btn btn-primary nav-btn rounded-pill shadow-sm border-0">
                <i class="bi bi-person-plus-fill me-1"></i> Enroll
            </button>
            
            <button onclick="window.location.href='getall'" class="btn btn-outline-primary nav-btn rounded-pill">
                <i class="bi bi-table me-1"></i> View Students
            </button>
            
            <a href="/" class="btn btn-danger nav-btn rounded-pill">
                <i class="bi bi-box-arrow-right me-1"></i> Logout
            </a>
        </div>
    </div>
</nav>

<section id="section-enroll">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6 col-md-8">
                <div class="card card-ui">
                    <div class="card-header-custom">
                        <h3 class="m-0 fw-bold">Enroll New Student</h3>
                        <p class="m-0 opacity-75 small">Fill in the details to register a student</p>
                    </div>
                    
                    <div class="card-body p-5">
                        <form action="enroll_student" method="post">
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="fName" name="studentfullname" placeholder="Name" required>
                                <label for="fName">Student Full Name</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="email" class="form-control" id="fEmail" name="studentemail" placeholder="Email" required>
                                <label for="fEmail">Student Email</label>
                            </div>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <div class="form-floating">
                                        <input type="number" class="form-control" id="fAge" name="studentage" placeholder="Age" required>
                                        <label for="fAge">Student Age</label>
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <div class="form-floating">
                                        <input type="number" step="0.01" class="form-control" id="fFees" name="feespaid" placeholder="Fees" required>
                                        <label for="fFees">Fees Paid</label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-floating mb-4">
                                <input type="text" class="form-control" id="fCollege" name="studentcollagename" placeholder="College" required>
                                <label for="fCollege">College Name</label>
                            </div>
                            <div class="mb-4">
                                <label class="fw-semibold d-block mb-2 text-secondary">Select Course</label>
                                <div class="course-selector d-flex flex-wrap">
                                    <input type="radio" class="btn-check" name="studentcourse" id="course1" value="Java" checked>
                                    <label class="btn btn-outline-primary border-0 bg-light" for="course1">☕ Java</label>

                                    <input type="radio" class="btn-check" name="studentcourse" id="course2" value="Python">
                                    <label class="btn btn-outline-primary border-0 bg-light" for="course2">🐍 Python</label>

                                    <input type="radio" class="btn-check" name="studentcourse" id="course3" value="Testing">
                                    <label class="btn btn-outline-primary border-0 bg-light" for="course3">🐞 Testing</label>
                                </div>
                            </div>
                            <div class="row mb-4">
                                <div class="col-6">
                                    <select class="form-select py-3" name="batchnumber" required>
                                        <option value="" disabled selected>Batch No.</option>
                                        <option>FDJ-160</option>
                                        <option>REG-160</option>
                                        <option>FDJ-161</option>
                                        <option>REG-161</option>
                                        <option>FDJ-162</option>
                                        <option>REG-162</option>
                                    </select>
                                </div>
                                <div class="col-6">
                                    <select class="form-select py-3" name="batchmode" required>
                                        <option value="" disabled selected>Mode</option>
                                        <option>Online</option>
                                        <option>Offline</option>
                                    </select>
                                </div>
                            </div>
                            <div class="d-grid">
                                <input type="submit" class="btn btn-primary btn-lg py-3 rounded-pill fw-bold shadow" value="Register Student">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="section-view">
    <div class="container-fluid px-5">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h3 class="fw-bold text-dark">Student Database</h3>
            
            <form action="search" class="d-flex bg-white p-1 rounded-pill shadow-sm border">
                <select class="form-select border-0 bg-transparent rounded-pill ps-3" style="width: 200px;" name="batchnumber">
                    <option value="#" selected>Filter by Batch</option>
                    <option>FDJ-160</option>
                    <option>REG-160</option>
                    <option>FDJ-161</option>
                    <option>REG-161</option>
                    <option>FDJ-162</option>
                    <option>REG-162</option>
                </select>
                <button class="btn btn-primary rounded-pill px-4 ms-1">Search</button>
            </form>
        </div>

        <c:if test="${not empty message}">
            <div class="alert alert-info alert-dismissible fade show shadow-sm text-center" role="alert">
                <i class="bi bi-bell-fill me-2"></i> ${message}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        </c:if>

        <div class="card card-ui">
            <div class="card-body p-0">
                <div class="table-responsive">
                    <table class="table custom-table table-borderless mb-0">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Student Name</th>
                                <th>Email</th>
                                <th>Age</th>
                                <th>College</th>
                                <th>Course</th>
                                <th>Batch</th>
                                <th>Mode</th>
                                <th>Fees</th>
                                <th class="text-center">Actions</th>
                            </tr>
                        </thead>

                        <tbody>
                            <c:forEach items="${data}" var="s">
                                <tr>
                                    <td class="fw-bold text-muted">#${s.studentid}</td>
                                    <td class="fw-semibold">${s.studentfullname}</td>
                                    <td>${s.studentemail}</td>
                                    <td>${s.studentage}</td>
                                    <td>${s.studentcollagename}</td>
                                    <td><span class="badge bg-light text-dark border">${s.studentcourse}</span></td>
                                    <td>${s.batchnumber}</td>
                                    <td><span class="badge ${s.batchmode == 'Online' ? 'bg-success' : 'bg-warning text-dark'}">${s.batchmode}</span></td>
                                    <td class="text-success fw-bold">$${s.feespaid}</td>
                                    <td class="text-center">
                                        <a class="action-btn btn-pay" title="Pay Fees" href="fees?id=${s.studentid}"><i class="bi bi-cash-coin"></i></a>
                                        <a class="action-btn btn-shift" title="Shift Batch" href="batch?id=${s.studentid}"><i class="bi bi-arrow-left-right"></i></a>
                                        <a href="delete?id=${s.studentid}" class="action-btn btn-remove" title="Remove" onclick="return confirm('Are you sure?')"><i class="bi bi-trash"></i></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <nav aria-label="Page navigation example">
          <ul class="pagination justify-content-center pt-3">
            <li class="page-item disabled">
              <a class="page-link">Previous</a>
            </li>
            <li class="page-item"><a class="page-link" href="paging?pageno=0">1</a></li>
            <li class="page-item"><a class="page-link" href="paging?pageno=1">2</a></li>
            <li class="page-item"><a class="page-link" href="paging?pageno=2">3</a></li>
            <li class="page-item">
              <a class="page-link" href="#">Next</a>
            </li>
          </ul>
        </nav>

    </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<script>
    function showSection(sectionName) {
        var enrollSec = document.getElementById('section-enroll');
        var viewSec = document.getElementById('section-view');

        if (sectionName === 'enroll') {
            enrollSec.classList.add('section-active');
            viewSec.classList.remove('section-active');
            // Clean URL so it looks nice
            history.pushState("", document.title, window.location.pathname);
        } else {
            enrollSec.classList.remove('section-active');
            viewSec.classList.add('section-active');
        }
    }

    window.onload = function() {
        var sectionToDisplay = 'enroll'; // Default

        // 1. Logic: If the Controller sent data, we MUST show the view.
        <c:if test="${not empty data}">
            sectionToDisplay = 'view';
        </c:if>

        // 2. Extra safety: Check URL keywords
        var currentUrl = window.location.href;
        if (currentUrl.includes('paging') || 
            currentUrl.includes('search') || 
            currentUrl.includes('getall')) {
            sectionToDisplay = 'view';
        }

        showSection(sectionToDisplay);
    };
</script>

</body>
</html>