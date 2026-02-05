<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Pay Fees | Student Management</title>

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
        padding: 25px;
        margin-top: 20px;
        border: 1px dashed #dee2e6;
    }

    .form-floating > .form-control:focus {
        border-color: var(--primary-color);
        box-shadow: 0 0 0 0.25rem rgba(67, 97, 238, 0.15);
    }

    .btn-pay {
        background: #198754; /* Success Green */
        border: none;
        padding: 10px 30px;
        border-radius: 50px;
        font-weight: 600;
        transition: 0.3s;
    }

    .btn-pay:hover {
        background: #157347;
        transform: translateY(-2px);
        box-shadow: 0 5px 15px rgba(25, 135, 84, 0.3);
    }
</style>
</head>
<body>

<div class="container d-flex justify-content-center">
    
    <div class="card card-ui">
        <div class="card-header-custom">
            <h4 class="m-0 fw-bold"><i class="bi bi-credit-card-2-front-fill me-2"></i>Pay Fees</h4>
            <p class="m-0 small opacity-75">Add installment for student</p>
        </div>

        <div class="card-body p-4">
            
            <table class="table table-borderless table-custom mb-0">
                <tbody>
                    <tr>
                        <th>Student ID</th>
                        <td>#${st.studentid}</td>
                    </tr>
                    <tr>
                        <th>Student Name</th>
                        <td>${st.studentfullname}</td>
                    </tr>
                    <tr>
                        <th>Course</th>
                        <td><span class="badge bg-light text-primary border">${st.studentcourse}</span></td>
                    </tr>
                    <tr>
                        <th>Batch Number</th>
                        <td>${st.batchnumber}</td>
                    </tr>
                    <tr>
                        <th>Fees Paid</th>
                        <td class="text-danger fw-bold">$${st.feespaid}</td>
                    </tr>
                </tbody>
            </table>

            <div class="form-section">
                <form action="payfees">
                    <input type="text" name="studentid" value="${st.studentid}" hidden="true">
                    
                    <div class="form-floating mb-3">
                        <input type="number" step="0.01" class="form-control" id="amountInput" name="amount" placeholder="Amount" required>
                        <label for="amountInput"><i class="bi bi-cash me-2"></i>Enter Installment Amount</label>
                    </div>

                    <div class="d-grid mt-3">
                        <button type="submit" class="btn btn-success btn-pay btn-lg text-white">
                            Add Installment
                        </button>
                    </div>
                </form>
            </div>

        </div>
    </div>

</div>

</body>
</html>