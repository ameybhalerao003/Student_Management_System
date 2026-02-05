<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shift Batch | Student Management</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">

<style>
    :root {
        --primary-color: #4361ee;
        --secondary-color: #3f37c9;
        --bg-color: #f0f2f5;
    }

    body {
        background-color: var(--bg-color);
        font-family: 'Poppins', sans-serif;
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .card-ui {
        background: #ffffff;
        border: none;
        border-radius: 20px;
        box-shadow: 0 15px 35px rgba(0,0,0,0.1);
        overflow: hidden;
        width: 100%;
        max-width: 500px;
    }

    .card-header-custom {
        background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
        color: white;
        padding: 20px;
        text-align: center;
    }

    .table-custom th {
        color: #6c757d;
        font-weight: 500;
        width: 40%;
    }
    
    .table-custom td {
        font-weight: 600;
        color: #212529;
    }

    .form-section {
        background-color: #f8f9fa;
        border-radius: 15px;
        padding: 20px;
        margin-top: 20px;
        border: 1px dashed #dee2e6;
    }

    .btn-update {
        background: var(--primary-color);
        border: none;
        padding: 10px 30px;
        border-radius: 50px;
        font-weight: 600;
        transition: 0.3s;
    }

    .btn-update:hover {
        background: var(--secondary-color);
        transform: translateY(-2px);
        box-shadow: 0 5px 15px rgba(67, 97, 238, 0.3);
    }
</style>
</head>
<body>

<div class="container d-flex justify-content-center">
    
    <div class="card card-ui">
        <div class="card-header-custom">
            <h4 class="m-0 fw-bold"><i class="bi bi-arrow-left-right me-2"></i>Shift Batch</h4>
            <p class="m-0 small opacity-75">Update student batch details</p>
        </div>

        <div class="card-body p-4">
            
            <table class="table table-borderless table-custom mb-0">
                <tbody>
                    <tr>
                        <th>Student ID</th>
                        <td>#${st.studentid}</td>
                    </tr>
                    <tr>
                        <th>Full Name</th>
                        <td>${st.studentfullname}</td>
                    </tr>
                    <tr>
                        <th>Course</th>
                        <td><span class="badge bg-light text-primary border">${st.studentcourse}</span></td>
                    </tr>
                    <tr>
                        <th>Current Batch</th>
                        <td class="text-danger">${st.batchnumber}</td>
                    </tr>
                    <tr>
                        <th>Fees Paid</th>
                        <td class="text-success">$${st.feespaid}</td>
                    </tr>
                </tbody>
            </table>

            <div class="form-section">
                <form action="updatebatch">
                    <input type="text" name="studentid" value="${st.studentid}" hidden="true">
                    
                    <div class="mb-3">
                        <label class="form-label fw-bold text-secondary small text-uppercase">Select New Batch</label>
                        <select name="batchnumber" class="form-select form-select-lg shadow-sm border-0" required>
                            <option value="" disabled selected>Choose Batch...</option>
                            <option>FDJ-160</option>
                            <option>REG-160</option>
                            <option>FDJ-161</option>
                            <option>REG-161</option>
                            <option>FDJ-162</option>
                            <option>REG-162</option>
                        </select>
                    </div>

                    <div class="d-grid mt-4">
                        <button type="submit" class="btn btn-primary btn-update btn-lg text-white">
                            Confirm Shift
                        </button>
                    </div>
                </form>
            </div>

        </div>
    </div>

</div>

</body>
</html>